

import java.util.Map;
import java.util.StringTokenizer;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Didian;

public class Test {
	static DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception{
//		String test="��ɽ 꼻� ��ɳ�� ��ɳ ��԰  ������� ����";
//		String pid="���ƽֵ����´�";
//		Map parent=dataBaseControl.getOneResultSet("select * from t_didian t where name=?", new Object[]{pid});
//        String[] temp=test.split(" ");
//        for (int i = 0; i < temp.length; i++) {
//        	if(!temp[i].trim().equals("")){
//        		Didian didian=new Didian();
//        		long id=dataBaseControl.getSeq("Didian");
//        		didian.setId(id);
//        		didian.setParent(Long.parseLong(parent.get("id").toString()));
//        		didian.setBiao_shi(parent.get("biao_shi").toString()+"_"+id);
//        		didian.setQuan_ming(parent.get("quan_ming")+temp[i].trim());
//        		didian.setName(temp[i].trim());
//        		dataBaseControl.insertByBean(didian,id);
//        	}
//		}
		String fileName="asdass.���ϴ��ô�asda.doc";
		String extname = fileName.substring(fileName.lastIndexOf(".")+1,fileName.length());
		System.out.println(extname);
	}

}
