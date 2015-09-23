
//读取Excel的类
//TODO Excel的时间起点为1899年12月30日，时间读取出来的值为从这天起的天数
import java.io.File;
import java.util.Map;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Didian;

import edu.npu.fastexcel.BIFFSetting;
import edu.npu.fastexcel.FastExcel;
import edu.npu.fastexcel.Sheet;
import edu.npu.fastexcel.Workbook;

public class ReadXLS {
	static DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	public static void main(String args[]) {
		try {
			Workbook workBook;
			workBook = FastExcel.createReadableWorkbook(new File("x.xls"));
			workBook.setSSTType(BIFFSetting.SST_TYPE_DEFAULT);// memory
																// storage
			workBook.open();
			Sheet s;
			s = workBook.getSheet(0);
			String[] temp;
			String s1="",s2="";
			for (int i = s.getFirstRow(); i < s.getLastRow(); i++) {
				if ("1".equals(s.getCell(i, 2))) {
					s1 = (s.getCell(i, 0));
					insert("云南省",s1);
				} else if ("2".equals(s.getCell(i, 2))) {
					s2 = (s.getCell(i, 0));
					insert("云南省" + s1,s2);
				}else{
					insert("云南省" + s1+s2,(s.getCell(i, 0)).replace("*", "").replace("'", ""));
					if(s.getCell(i, 1)!=null){
						temp=((s.getCell(i, 1)).replace("*", "").replace("'", "")).split(" ");
						for (int j = 0; j < temp.length; j++) {
							if(!"".equals(temp[j].trim()))
								insert("云南省" + s1+s2+(s.getCell(i, 0)).replace("*", "").replace("'", ""),temp[j].trim());
						}
					}                   
				}
			}
			workBook.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void insert(String parentName, String me) throws Exception {
		Map parent = dataBaseControl.getOneResultSet("select * from t_didian t where quan_ming=?",new Object[] { parentName });
		Didian didian = new Didian();
		long id = dataBaseControl.getSeq("Didian");
		didian.setId(id);
		didian.setParent(Long.parseLong(parent.get("id").toString()));
		didian.setBiao_shi(parent.get("biao_shi").toString() + "_" + id);
		didian.setQuan_ming(parent.get("quan_ming") + me);
		didian.setName(me);
		dataBaseControl.insertByBean(didian, id);
	}
}
