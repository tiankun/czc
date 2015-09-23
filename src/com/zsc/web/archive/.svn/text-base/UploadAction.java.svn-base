package com.zsc.web.archive;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Didian;
import com.zsc.map.Dl_sheshi;
import com.zsc.map.Fuze;
import com.zsc.map.Gg_fuwu;
import com.zsc.map.Ji_chu;
import com.zsc.map.Jing_ji;
import com.zsc.map.Ju_zhu;
import com.zsc.map.Ren_di;
import com.zsc.map.Rong_yu;
import com.zsc.map.Xzc_ghys;
import com.zsc.map.Zrc_ghys;
import com.zsc.util.DataFormat;
import com.zsc.util.Encrypt;
import com.zsc.util.ImageTools;
import com.zsc.web.BaseAction;

public class UploadAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance(); 
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private String fztype="archive";
	
	/** 
	 * delphi程序登录(只允许县级用户)
	 **/
	public String  uploadLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    response.setContentType("text/html");
	    response.setCharacterEncoding("UTF-8");
		DataBaseControl dataBaseControl = DataBaseControl.getInstance();
		Collection users = dataBaseControl.getOutResultSet("select * from t_myuser where log_name=? and log_pass=? and guan_li in(select a.id from t_didian a where a.parent in (select b.id from t_didian b where b.parent=1))",
				new Object[]{request.getParameter("logName"),Encrypt.crypt(request.getParameter("password"))});
		if(users==null||users.isEmpty()){
			response.getWriter().print(URLEncoder.encode("登录名和密码错误，登录失败！", "UTF-8"));
		}else if (users.size()==1) {
			Map user=(Map) users.toArray()[0];
			request.getSession().setAttribute("user", user);
			response.getWriter().print("ok");
		}else{
			response.getWriter().print(URLEncoder.encode("系统内部错误，登录失败！", "UTF-8"));
		}
		return null;
	}

	
	// 接受delphi上传数据库，并写进oracle
	public String uploadItem(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String fileName=uploadFile(request,response);//上传数据库文件
		Long user_id;
		Long year;
		String[] temp;
	    response.setContentType("text/html");
	    response.setCharacterEncoding("UTF-8");
		try{
			temp=fileName.split("##");
			user_id=Long.parseLong(temp[0].toString().trim());
			year=Long.parseLong(temp[1].toString().trim());
			fileName=temp[2];
			insertItem(fileName,request,response,user_id,year);//上传数据的相应数据库操作 XXX 上传时间结束
			response.getWriter().print("OK");
		}catch(Exception ex){
			ex.printStackTrace();
			response.getWriter().print(URLEncoder.encode("出现异常错误，請联系管理人员", "UTF-8"));
		}
		return null;
	}
	// 接受delphi上传数据库，并写进oracle
	public String uploadItem1(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String fileName=uploadFile(request,response);//上传数据库文件
		String[] temp;
	    response.setContentType("text/html");
	    response.setCharacterEncoding("UTF-8");
		try{
			temp=fileName.split("##");
			fileName=temp[2];
			response.getWriter().print("OK##"+fileName);
		}catch(Exception ex){
			ex.printStackTrace();
			response.getWriter().print(URLEncoder.encode("出现异常错误，請联系管理人员", "UTF-8"));
		}
		return null;
	}	
	// 先ftp上传文件，接受delphi上传数据库，并写进oracle
	public String uploadChange(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Long user_id;
		Long year;
		String fileName;
		String error;
	    response.setContentType("text/html");
	    response.setCharacterEncoding("UTF-8");
		try{
			user_id=Long.parseLong(request.getParameter("id"));
			year=Long.parseLong(request.getParameter("year"));
			fileName=request.getParameter("fileName");
			insertItem(fileName,request,response,user_id,year);//上传数据的相应数据库操作XXX 上传时间结束
			//删除上传的dat文件
			File fil = new File(request.getSession().getServletContext().getRealPath("/upFile/data/"),fileName);  
			// 路径为文件且不为空则进行删除   
		    if (fil.isFile() && fil.exists()) {   
		        try {
					fil.delete();
				} catch (Exception e) {
					e.printStackTrace();
				} 
		    }  
			response.getWriter().print("OK");
		}catch(Exception ex){
			error=ex.getMessage();
			if(error.lastIndexOf("database disk image is malformed")!=-1||error.lastIndexOf("no such table:")!=-1)
				error=URLEncoder.encode("你上传的文件已损坏！", "UTF-8");	
			ex.printStackTrace();
			response.getWriter().print(error);
		}
		return null;
	}
	
	// 先ftp上传文件，接受delphi上传数据库，并写进oracle
	public String uploadMychange(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Long user_id;
		Long year;
		String fileName;
		String error="ok";
		try{
			user_id=Long.parseLong(request.getParameter("id"));
			year=2012L;
			fileName=user_id+".dat";
			insertItem(fileName,request,response,user_id,year);//上传数据的相应数据库操作　XXX 上传时间结束
			//删除上传的dat文件
			File fil = new File(request.getSession().getServletContext().getRealPath("/upFile/data/"),fileName); 
			// 路径为文件且不为空则进行删除   
	        if (fil.isFile() && fil.exists()) {   
		        try {
					fil.delete();
				} catch (Exception e) {
					e.printStackTrace();
				} 
		    }  
		}catch(Exception ex){
			error=ex.getMessage();
			if(error!=null&&(error.lastIndexOf("database disk image is malformed")!=-1||error.lastIndexOf("no such table:")!=-1))
				error="上传的文件已损坏！";	
			ex.printStackTrace();
		}
		System.out.println(error);
		return null;
	}	
	//上传文件处理
	@SuppressWarnings("finally")
	private String uploadFile(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String fileName="";
		String user_id="";
		String year = "";
		try {
			File upPath = new File(request.getSession().getServletContext().getRealPath("/upFile/data"));
			if (!upPath.isDirectory())
				upPath.mkdirs();
			DiskFileUpload fu = new DiskFileUpload();
			// 设置最大文件尺寸，这里是20Gb
			fu.setSizeMax(1024 * 1024 * 1024*50);
			// 设置缓冲区大小，这里是4kb
			fu.setSizeThreshold(4096);
			// 设置临时目录：
			File tempPath = new File(request.getSession().getServletContext().getRealPath("/temp/"));
			if (!tempPath.isDirectory())
				tempPath.mkdirs();
			fu.setRepositoryPath(request.getSession().getServletContext().getRealPath("/temp/"));
			// 得到所有的文件：
			List fileItems = fu.parseRequest(request);
			Iterator i = fileItems.iterator();
			// 依次处理每一个文件：
			while (i.hasNext()) {
				FileItem fi = (FileItem) i.next();
				if (!fi.isFormField()) {
					// 获得文件名，这个文件名包括路径：
					fileName = fi.getName();
					if (fileName != null) {
						// 在这里可以记录用户和文件信息
						// 写入文件a.txt，你也可以从fileName中提取文件名:
						StringTokenizer st = new StringTokenizer(fileName, ".");
						String extname = "";
						while (st.hasMoreTokens()) {
							extname = st.nextToken();
						}
						fileName = "" + (new Date()).getTime() + "." + extname;
						//fi.write(new File(request.getSession().getServletContext().getRealPath("/upFile/data/")+ "/" + fileName));
						fi.write(new File("/opt/tomcat-7.0.33/webapps/ROOT/upFile/data/" + fileName));
					}
				} else {// 普通属性获取
					if("id".equals(fi.getFieldName()))
						user_id=fi.getString()==null?"":fi.getString().trim();
					if("year".equals(fi.getFieldName()))
						year=fi.getString()==null?"":fi.getString().trim();
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().print(e.getMessage());
		}finally{
			return user_id+"##"+year+"##"+fileName;
		}
	}
	//根据上传文件将数据写进oracle
	private void insertItem(String fileName,HttpServletRequest request,HttpServletResponse response,Long user_id,Long year) throws Exception {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rstFuze = null;
		ResultSet rstZrc_ghys = null;
		ResultSet rstXzc_ghys = null;
		ResultSet rstFile = null;
		ResultSet rstx = null;
		ResultSet rst1 = null;
		ResultSet rst2 = null;
		ResultSet rst3 = null;
		ResultSet rst4 = null;
		ResultSet rst5 = null;
		ResultSet rst6 = null;
		ResultSet rst7 = null;
        String type=request.getParameter("type");
		try {
			Class.forName("org.sqlite.JDBC");
			conn = DriverManager.getConnection("jdbc:sqlite:"+request.getSession().getServletContext().getRealPath("/upFile/data/")+ "/" +fileName);
			stmt = conn.createStatement();
		  
		  //获得地点列表（新增）
			String sqlx = "select a.* from t_didian a";	
		  //负责人
			String sqlFuze = "select * from t_fuze";

			List fuzeList = new ArrayList();
			List xzc_ghysList = new ArrayList();
			List zrc_ghysList = new ArrayList();
			List fileList = new ArrayList();
			List didian = new ArrayList();
			List dl_sheshi = new ArrayList();
			List gg_fuwu = new ArrayList();
			List ji_chu = new ArrayList();
			List jing_ji = new ArrayList();
			List ju_zhu = new ArrayList();
			List ren_di = new ArrayList();
			List rong_yu = new ArrayList();
			   
			//地点
		    rstx = stmt.executeQuery(sqlx); 
			while(rstx.next()){  
				Map dix = new HashMap();
				dix.put("id", rstx.getString("id"));
				dix.put("parent",rstx.getString("parent"));
				dix.put("name",rstx.getString("name"));
				dix.put("biaoshi",rstx.getString("biaoshi"));
				dix.put("biao_chang",rstx.getString("biaoshi").split("_").length);
				dix.put("biao_qie",rstx.getString("biaoshi").split("_"));
				dix.put("remark",rstx.getString("remark"));
				dix.put("zhuxiao",rstx.getString("zhuxiao"));
				dix.put("quan_ming",rstx.getString("quan_ming"));
				didian.add(dix);
			}

			//负责人
			rstFuze = stmt.executeQuery(sqlFuze);
			while(rstFuze.next()){  
				Fuze fuze = new Fuze();
				fuze.setUnit_id(Long.parseLong(null==rstFuze.getString("unit_id")?"":rstFuze.getString("unit_id").toString().trim()));              //didian新增，则相应表unit_id也改变
				fuze.setFz_ren(null==rstFuze.getString("fz_ren")?"":rstFuze.getString("fz_ren").toString().trim());
				fuze.setFz_danwei(null==rstFuze.getString("fz_danwei")?"":rstFuze.getString("fz_danwei").toString().trim());
				fuze.setFz_zhiwu(null==rstFuze.getString("fz_zhiwu")?"":rstFuze.getString("fz_zhiwu").toString().trim());
				fuze.setFz_dianhua(null==rstFuze.getString("fz_dianhua")?"":rstFuze.getString("fz_dianhua").toString().trim());
				fuze.setZr_ren(null==rstFuze.getString("zr_ren")?"":rstFuze.getString("zr_ren").toString().trim());
				fuze.setZr_danwei(null==rstFuze.getString("zr_danwei")?"":rstFuze.getString("zr_danwei").toString().trim());
				fuze.setZr_zhiwu(null==rstFuze.getString("zr_zhiwu")?"":rstFuze.getString("zr_zhiwu").toString().trim());
				fuze.setZr_dianhua(null==rstFuze.getString("zr_dianhua")?"":rstFuze.getString("zr_dianhua").toString().trim());
				fuze.setRemark(null==rstFuze.getString("remark")?"":rstFuze.getString("remark").toString().trim());
				fuze.setType(fztype);
				fuzeList.add(fuze);
			}
            if (!"jichu".equals(type)){
			//避免数据重复，先删除相关数据、文件
		    try {
				delAllFile(request.getSession().getServletContext().getRealPath("/upFile/file/")+"/"+ user_id+"/");
			} catch (Exception e) {e.printStackTrace();}
			File fipath = new File(request.getSession().getServletContext().getRealPath("/upFile/file/")+"/"+ user_id+"/");
			fipath.mkdirs(); 
            }
			//处理新增地点的id，父节点（parent）,表示(biaoshi)及相关表的"unit_id"
			for(int i = 0;i<didian.size();i++){
				java.sql.Date tijiao = new java.sql.Date(new Date().getTime());
				String old_id = ((Map)didian.get(i)).get("id").toString().trim();

			  //行政村验收评分
				String sqlXzc_ghys = "select * from t_xzc_ghys where unit_id='"+old_id+"' and year='"+year+"'";
			  //自然村验收评分
				String sqlZrc_ghys = "select * from t_zrc_ghys where unit_id='"+old_id+"' and year='"+year+"'";
			  //文件
				String sqlFile = "select * from t_file where unit_id='"+old_id+"' and year='"+year+"'";
			  //获得道路交通设施列表
			    String sql1 = "select * from t_dl_sheshi where unit_id='"+old_id+"' and year='"+year+"'";
			  //获得公共服务设施列表
			    String sql2 = "select * from t_gg_fuwu where unit_id='"+old_id+"' and year='"+year+"'";
			  //获得基础设施列表
			    String sql3 = "select * from t_ji_chu where unit_id='"+old_id+"' and year='"+year+"'";
			  //获得经济发展情况列表
			    String sql4 = "select * from t_jing_ji where unit_id='"+old_id+"' and year='"+year+"'";
			  //获得村民居住列表
			    String sql5 = "select * from t_ju_zhu where unit_id='"+old_id+"' and year='"+year+"'";
			  //获得人口与用地列表
			    String sql6 = "select * from T_REN_DI where unit_id='"+old_id+"' and year='"+year+"'";
			  //获得荣获名录列表
			    String sql7 = "select * from t_rong_yu where unit_id='"+old_id+"' and year='"+year+"'";
			    
			  //当didian表数据为新增时的相关操作（更新ID，biaoshi，子父节点及相关表的unit_id）
				String remark = null==((Map)didian.get(i)).get("remark")?"":((Map)didian.get(i)).get("remark").toString();
				if("新增".equals(remark)){
					Long seq = dataBaseControl.getSeq("DIDIAN");//获取序列号
					int biao_chang = Integer.parseInt(((Map)didian.get(i)).get("biao_chang").toString().trim());
					String[] biao_qie = (String[]) ((Map)didian.get(i)).get("biao_qie");
					biao_qie[biao_chang-1] = seq+"";
					String biaoshi = biao_qie[0]+"";
					for(int j = 1;j<biao_qie.length;j++){       //根据新ID重新组装"biaoshi"
						biaoshi = biaoshi+"_"+biao_qie[j];
					}
					((Map)didian.get(i)).put("biaoshi", biaoshi);
					((Map)didian.get(i)).put("id", seq);
					//查找子节点
					if(biao_chang==5){
					for(int k = 0;k<didian.size();k++){
						String[] biao_zi = (String[]) ((Map)didian.get(k)).get("biao_qie");  //子节点切"_"后数组
						int chang_zi = Integer.parseInt(((Map)didian.get(k)).get("biao_chang").toString().trim());
						if(chang_zi==6){
							if(biao_zi[4].trim().equals(old_id)){
								biao_zi[4] = seq+"";
								String biaoshi_zi = biao_zi[0]+"";
								for(int h = 1;h<biao_zi.length;h++){       //根据新ID重新组装"biaoshi"
									biaoshi_zi = biaoshi_zi+"_"+biao_zi[h];
								}
								((Map)didian.get(k)).put("parent", seq);
								((Map)didian.get(k)).put("biaoshi", biaoshi_zi);
							}
						}
						}
					}					
					
					//行政村
					rstXzc_ghys = stmt.executeQuery(sqlXzc_ghys);
					while(rstXzc_ghys.next()){  
						Xzc_ghys xzc_ghys = new Xzc_ghys(); //didian新增，则相应表unit_id也改变
						xzc_ghys.setUnit_id(seq);
						xzc_ghys.setYear(Long.parseLong(null==rstXzc_ghys.getString("year")?"":rstXzc_ghys.getString("year").toString().trim()));
						xzc_ghys.setYuan_blili(checkBigDecimal(null==rstXzc_ghys.getString("yuan_blili")?"":rstXzc_ghys.getString("yuan_blili").toString().trim()));
						xzc_ghys.setFen_bu(checkBigDecimal(null==rstXzc_ghys.getString("fen_bu")?"":rstXzc_ghys.getString("fen_bu").toString().trim()));
						xzc_ghys.setYd_xianzhuang(checkBigDecimal(null==rstXzc_ghys.getString("yd_xianzhuang")?"":rstXzc_ghys.getString("yd_xianzhuang").toString().trim()));
						xzc_ghys.setJt_xianzhuang(checkBigDecimal(null==rstXzc_ghys.getString("jt_xianzhuang")?"":rstXzc_ghys.getString("jt_xianzhuang").toString().trim()));
						xzc_ghys.setJc_gg_xz(checkBigDecimal(null==rstXzc_ghys.getString("jc_gg_xz")?"":rstXzc_ghys.getString("jc_gg_xz").toString().trim()));
						xzc_ghys.setXian_bili(checkBigDecimal(null==rstXzc_ghys.getString("xian_bili")?"":rstXzc_ghys.getString("xian_bili").toString().trim()));
						xzc_ghys.setJj_fangxiang(checkBigDecimal(null==rstXzc_ghys.getString("jj_fangxiang")?"":rstXzc_ghys.getString("jj_fangxiang").toString().trim()));
						xzc_ghys.setZhengzhi(checkBigDecimal(null==rstXzc_ghys.getString("zhengzhi")?"":rstXzc_ghys.getString("zhengzhi").toString().trim()));
						xzc_ghys.setCj_gonggong(checkBigDecimal(null==rstXzc_ghys.getString("cj_gonggong")?"":rstXzc_ghys.getString("cj_gonggong").toString().trim()));
						xzc_ghys.setZd_buju(checkBigDecimal(null==rstXzc_ghys.getString("zd_buju")?"":rstXzc_ghys.getString("zd_buju").toString().trim()));
						xzc_ghys.setShuoming(checkBigDecimal(null==rstXzc_ghys.getString("shuoming")?"":rstXzc_ghys.getString("shuoming").toString().trim()));
						xzc_ghys.setJing_tong(checkBigDecimal(null==rstXzc_ghys.getString("jing_tong")?"":rstXzc_ghys.getString("jing_tong").toString().trim()));
						xzc_ghys.setXiang_shen(checkBigDecimal(null==rstXzc_ghys.getString("xiang_shen")?"":rstXzc_ghys.getString("xiang_shen").toString().trim()));
						xzc_ghys.setXian_shen(checkBigDecimal(null==rstXzc_ghys.getString("xian_shen")?"":rstXzc_ghys.getString("xian_shen").toString().trim()));
						xzc_ghys.setYj_zhengji(checkBigDecimal(null==rstXzc_ghys.getString("yj_zhengji")?"":rstXzc_ghys.getString("yj_zhengji").toString().trim()));
						xzc_ghys.setCheng_guo(checkBigDecimal(null==rstXzc_ghys.getString("cheng_guo")?"":rstXzc_ghys.getString("cheng_guo").toString().trim()));
						xzc_ghys.setCg_shangbao(checkBigDecimal(null==rstXzc_ghys.getString("cg_shangbao")?"":rstXzc_ghys.getString("cg_shangbao").toString().trim()));
						xzc_ghys.setCg_guidang(checkBigDecimal(null==rstXzc_ghys.getString("cg_guidang")?"":rstXzc_ghys.getString("cg_guidang").toString().trim()));
						xzc_ghys.setZs_buzhu(checkBigDecimal(null==rstXzc_ghys.getString("zs_buzhu")?"":rstXzc_ghys.getString("zs_buzhu").toString().trim()));
						xzc_ghys.setXian_buzhu(checkBigDecimal(null==rstXzc_ghys.getString("xian_buzhu")?"":rstXzc_ghys.getString("xian_buzhu").toString().trim()));
						xzc_ghys.setGh_bzshiyong(checkBigDecimal(null==rstXzc_ghys.getString("gh_bzshiyong")?"":rstXzc_ghys.getString("gh_bzshiyong").toString().trim()));
						xzc_ghys.setJiangli(checkBigDecimal(null==rstXzc_ghys.getString("jiangli")?"":rstXzc_ghys.getString("jiangli").toString().trim()));
						xzc_ghys.setZong(checkBigDecimal(null==rstXzc_ghys.getString("zong")?"":rstXzc_ghys.getString("zong").toString().trim()));
						xzc_ghys.setYs_ren(null==rstXzc_ghys.getString("ys_ren")?"":rstXzc_ghys.getString("ys_ren").toString().trim());
						xzc_ghys.setYs_shijian(new java.sql.Date(DataFormat.toDate(rstXzc_ghys.getString("ys_shijian")).getTime()));
						xzc_ghys.setQz_zhuanjia(null==rstXzc_ghys.getString("qz_zhuanjia")?"":rstXzc_ghys.getString("qz_zhuanjia").toString().trim());
						xzc_ghys.setTijiao(tijiao);
						xzc_ghys.setBeizhu(null==rstXzc_ghys.getString("beizhu")?"":rstXzc_ghys.getString("beizhu").toString().trim());
						xzc_ghys.setRemark("xian");
						xzc_ghysList.add(xzc_ghys);
					}
					
					//自然村
					rstZrc_ghys = stmt.executeQuery(sqlZrc_ghys);
					while(rstZrc_ghys.next()){ 
						Zrc_ghys zrc_ghys = new Zrc_ghys(); //didian新增，则相应表unit_id也改变
						zrc_ghys.setUnit_id(seq);
						zrc_ghys.setYear(Long.parseLong(null==rstZrc_ghys.getString("year")?"":rstZrc_ghys.getString("year").toString().trim()));
						zrc_ghys.setYuan_blili(checkBigDecimal(null==rstZrc_ghys.getString("yuan_blili")?"":rstZrc_ghys.getString("yuan_blili").toString().trim()));
						zrc_ghys.setJz_xianzhuang(checkBigDecimal(null==rstZrc_ghys.getString("jz_xianzhuang")?"":rstZrc_ghys.getString("jz_xianzhuang").toString().trim()));
						zrc_ghys.setJt_xianzhuang(checkBigDecimal(null==rstZrc_ghys.getString("jt_xianzhuang")?"":rstZrc_ghys.getString("jt_xianzhuang").toString().trim()));
						zrc_ghys.setJc_gg_xz(checkBigDecimal(null==rstZrc_ghys.getString("jc_gg_xz")?"":rstZrc_ghys.getString("jc_gg_xz").toString().trim()));
						zrc_ghys.setXian_bili(checkBigDecimal(null==rstZrc_ghys.getString("xian_bili")?"":rstZrc_ghys.getString("xian_bili").toString().trim()));
						zrc_ghys.setYd_jiexian(checkBigDecimal(null==rstZrc_ghys.getString("yd_jiexian")?"":rstZrc_ghys.getString("yd_jiexian").toString().trim()));
						zrc_ghys.setDl_zuxiang(checkBigDecimal(null==rstZrc_ghys.getString("dl_zuxiang")?"":rstZrc_ghys.getString("dl_zuxiang").toString().trim()));
						zrc_ghys.setLd_weizhi(checkBigDecimal(null==rstZrc_ghys.getString("ld_weizhi")?"":rstZrc_ghys.getString("ld_weizhi").toString().trim()));
						zrc_ghys.setSz_yongdi(checkBigDecimal(null==rstZrc_ghys.getString("sz_yongdi")?"":rstZrc_ghys.getString("sz_yongdi").toString().trim()));
						zrc_ghys.setZf_pingmian(checkBigDecimal(null==rstZrc_ghys.getString("zf_pingmian")?"":rstZrc_ghys.getString("zf_pingmian").toString().trim()));
						zrc_ghys.setZf_pingli(checkBigDecimal(null==rstZrc_ghys.getString("zf_pingli")?"":rstZrc_ghys.getString("zf_pingli").toString().trim()));
						zrc_ghys.setZf_caise(checkBigDecimal(null==rstZrc_ghys.getString("zf_caise")?"":rstZrc_ghys.getString("zf_caise").toString().trim()));
						zrc_ghys.setShuoming(checkBigDecimal(null==rstZrc_ghys.getString("shuoming")?"":rstZrc_ghys.getString("shuoming").toString().trim()));
						zrc_ghys.setJing_tong(checkBigDecimal(null==rstZrc_ghys.getString("jing_tong")?"":rstZrc_ghys.getString("jing_tong").toString().trim()));
						zrc_ghys.setXiang_shen(checkBigDecimal(null==rstZrc_ghys.getString("xiang_shen")?"":rstZrc_ghys.getString("xiang_shen").toString().trim()));
						zrc_ghys.setXian_shen(checkBigDecimal(null==rstZrc_ghys.getString("xian_shen")?"":rstZrc_ghys.getString("xian_shen").toString().trim()));
						zrc_ghys.setYj_zhengji(checkBigDecimal(null==rstZrc_ghys.getString("yj_zhengji")?"":rstZrc_ghys.getString("yj_zhengji").toString().trim()));
						zrc_ghys.setCheng_guo(checkBigDecimal(null==rstZrc_ghys.getString("cheng_guo")?"":rstZrc_ghys.getString("cheng_guo").toString().trim()));
						zrc_ghys.setCg_shangbao(checkBigDecimal(null==rstZrc_ghys.getString("cg_shangbao")?"":rstZrc_ghys.getString("cg_shangbao").toString().trim()));
						zrc_ghys.setCg_guidang(checkBigDecimal(null==rstZrc_ghys.getString("cg_guidang")?"":rstZrc_ghys.getString("cg_guidang").toString().trim()));
						zrc_ghys.setZs_buzhu(checkBigDecimal(null==rstZrc_ghys.getString("zs_buzhu")?"":rstZrc_ghys.getString("zs_buzhu").toString().trim()));
						zrc_ghys.setXian_buzhu(checkBigDecimal(null==rstZrc_ghys.getString("xian_buzhu")?"":rstZrc_ghys.getString("xian_buzhu").toString().trim()));
						zrc_ghys.setGh_bzshiyong(checkBigDecimal(null==rstZrc_ghys.getString("gh_bzshiyong")?"":rstZrc_ghys.getString("gh_bzshiyong").toString().trim()));
						zrc_ghys.setJiangli(checkBigDecimal(null==rstZrc_ghys.getString("jiangli")?"":rstZrc_ghys.getString("jiangli").toString().trim()));
						zrc_ghys.setZong(checkBigDecimal(null==rstZrc_ghys.getString("zong")?"":rstZrc_ghys.getString("zong").toString().trim()));
						zrc_ghys.setYs_ren(null==rstZrc_ghys.getString("ys_ren")?"":rstZrc_ghys.getString("ys_ren").toString().trim());
						zrc_ghys.setYs_shijian(new java.sql.Date(DataFormat.toDate(rstZrc_ghys.getString("ys_shijian")).getTime()));
						zrc_ghys.setQz_zhuanjia(null==rstZrc_ghys.getString("qz_zhuanjia")?"":rstZrc_ghys.getString("qz_zhuanjia").toString().trim());
						zrc_ghys.setTijiao(tijiao);
						zrc_ghys.setBeizhu(null==rstZrc_ghys.getString("beizhu")?"":rstZrc_ghys.getString("beizhu").toString().trim());
						zrc_ghys.setRemark("xian");
						zrc_ghysList.add(zrc_ghys);
					}

					//道路
					rst1 = stmt.executeQuery(sql1);
					while(rst1.next()){  
						Dl_sheshi dl = new Dl_sheshi();
						dl.setUnit_id(seq);              //didian新增，则相应表unit_id也改变
						dl.setYear(Long.parseLong(null==rst1.getString("year")?"":rst1.getString("year").toString().trim()));
						dl.setShu(checkBigDecimal(null==rst1.getString("shu")?"":rst1.getString("shu").toString().trim()));
						dl.setKuan(checkBigDecimal(null==rst1.getString("kuan")?"":rst1.getString("kuan").toString().trim()));
						dl.setChang(checkBigDecimal(null==rst1.getString("chang")?"":rst1.getString("chang").toString().trim()));
						dl.setGshu(checkBigDecimal(null==rst1.getString("gshu")?"":rst1.getString("gshu").toString().trim()));
						dl.setGkuan(checkBigDecimal(null==rst1.getString("gkuan")?"":rst1.getString("gkuan").toString().trim()));
						dl.setGchang(checkBigDecimal(null==rst1.getString("gchang")?"":rst1.getString("gchang").toString().trim()));
						dl.setGleixing(null==rst1.getString("gleixing")?"":rst1.getString("gleixing").toString().trim());
						dl.setDengji(null==rst1.getString("dengji")?"":rst1.getString("dengji").toString().trim());
						dl_sheshi.add(dl);
					}
					
					//公共服务
					rst2 = stmt.executeQuery(sql2);
					while(rst2.next()){
						Gg_fuwu gg = new Gg_fuwu();
						gg.setUnit_id(seq);
						gg.setYear(Long.parseLong(null==rst2.getString("year")?"":rst2.getString("year").toString().trim()));
						gg.setMing_cheng(null==rst2.getString("ming_cheng")?"":rst2.getString("ming_cheng").toString().trim());
						gg.setLei_bie(null==rst2.getString("lei_bie")?"":rst2.getString("lei_bie").toString().trim());
						gg.setShu_liang(checkBigDecimal(null==rst2.getString("shu_Liang")?"":rst2.getString("shu_Liang").toString().trim()));
						gg.setGui_mo(checkBigDecimal(null==rst2.getString("gui_mo")?"":rst2.getString("gui_mo").toString().trim()));
						gg.setGh_shifou(null==rst2.getString("gh_shifou")?"":rst2.getString("gh_shifou").toString().trim());
						gg.setGshu_liang(checkBigDecimal(null==rst2.getString("gshu_liang")?"":rst2.getString("gshu_liang").toString().trim()));
						gg.setGgui_mo(checkBigDecimal(null==rst2.getString("ggui_mo")?"":rst2.getString("ggui_mo").toString().trim()));
						gg.setBeizhu(null==rst2.getString("beizhu")?"":rst2.getString("beizhu").toString().trim());
						gg.setGcun(null==rst2.getString("gcun")?"":rst2.getString("gcun").toString().trim());
						gg_fuwu.add(gg);
					}
					
					//基础设施
					rst3 = stmt.executeQuery(sql3);
					while(rst3.next()){
						Ji_chu ji = new Ji_chu();
						ji.setUnit_id(seq);
						ji.setYear(Long.parseLong(null==rst3.getString("year")?"":rst3.getString("year").toString().trim()));
						ji.setXshuliang(checkBigDecimal(null==rst3.getString("xshuliang")?"":rst3.getString("xshuliang").toString().trim()));
						ji.setXguimo(checkBigDecimal(null==rst3.getString("xguimo")?"":rst3.getString("xguimo").toString().trim()));
						ji.setXianjian(null==rst3.getString("xianjian")?"":rst3.getString("xianjian").toString().trim());
						ji.setGcun(null==rst3.getString("gcun")?"":rst3.getString("gcun").toString().trim());
						ji.setGliang(checkBigDecimal(null==rst3.getString("gliang")?"":rst3.getString("gliang").toString().trim()));
						ji.setGuimo(checkBigDecimal(null==rst3.getString("guimo")?"":rst3.getString("guimo").toString().trim()));
						ji.setGdi(checkBigDecimal(null==rst3.getString("gdi")?"":rst3.getString("gdi").toString().trim()));
						ji.setMingcheng(null==rst3.getString("mingcheng")?"":rst3.getString("mingcheng").toString().trim());
						ji_chu.add(ji);
					}
					
					//经济发展情况
					rst4 = stmt.executeQuery(sql4);
					while(rst4.next()){
						Jing_ji jing = new Jing_ji();
						jing.setUnit_id(seq);
						jing.setYear(Long.parseLong(null==rst4.getString("year")?"":rst4.getString("year").toString().trim()));
						jing.setNian_shouru(checkBigDecimal(null==rst4.getString("nian_shouru")?"":rst4.getString("nian_shouru").toString().trim()));
						jing.setRj_shouru(checkBigDecimal(null==rst4.getString("rj_shouru")?"":rst4.getString("rj_shouru").toString().trim()));
						jing.setCj_zongchanzhi(checkBigDecimal(null==rst4.getString("cj_zongchanzhi")?"":rst4.getString("cj_zongchanzhi").toString().trim()));
						jing.setDy_chanzhi(checkBigDecimal(null==rst4.getString("dy_chanzhi")?"":rst4.getString("dy_chanzhi").toString().trim()));
						jing.setDe_chanzhi(checkBigDecimal(null==rst4.getString("de_chanzhi")?"":rst4.getString("de_chanzhi").toString().trim()));
						jing.setDs_chanzhi(checkBigDecimal(null==rst4.getString("ds_chanzhi")?"":rst4.getString("ds_chanzhi").toString().trim()));
						jing.setZhu_chanye(null==rst4.getString("zhu_chanye")?"":rst4.getString("zhu_chanye").toString().trim());
						jing.setTese_chanpin(null==rst4.getString("tese_chanpin")?"":rst4.getString("tese_chanpin").toString().trim());
						jing.setQiye_shu(checkBigDecimal(null==rst4.getString("qiye_shu")?"":rst4.getString("qiye_shu").toString().trim()));
						jing.setQiye_chanzbhi(checkBigDecimal(null==rst4.getString("qiye_chanzbhi")?"":rst4.getString("qiye_chanzbhi").toString().trim()));
						jing_ji.add(jing);
					}  
					
					//村民居住
					rst5 = stmt.executeQuery(sql5);
					while(rst5.next()){
						Ju_zhu ju = new Ju_zhu();
						ju.setUnit_id(seq);
						ju.setYear(Long.parseLong(null==rst5.getString("year")?"":rst5.getString("year").toString().trim()));
						ju.setBeizhu(null==rst5.getString("beizhu")?"":rst5.getString("beizhu").toString().trim());
						ju.setNeirong(null==rst5.getString("neirong")?"":rst5.getString("neirong").toString().trim());
						ju.setDanwei(null==rst5.getString("danwei")?"":rst5.getString("danwei").toString().trim());
						ju.setShuliang(checkBigDecimal(null==rst5.getString("shuliang")?"":rst5.getString("shuliang").toString().trim()));
						ju.setBili(checkBigDecimal(null==rst5.getString("bili")?"":rst5.getString("bili").toString().trim()));
						ju_zhu.add(ju);
					}
					
					//人口与用地
					rst6 = stmt.executeQuery(sql6);
					while(rst6.next()){
						Ren_di ren = new Ren_di();
						ren.setUnit_id(seq);
						ren.setYear(Long.parseLong(null==rst6.getString("year")?"":rst6.getString("year").toString().trim()));
						ren.setCz_zhandi(checkBigDecimal(null==rst6.getString("cz_zhandi")?"":rst6.getString("cz_zhandi").toString().trim()));
						ren.setCz_guihua(checkBigDecimal(null==rst6.getString("cz_guihua")?"":rst6.getString("cz_guihua").toString().trim()));
						ren.setJs_yongdi(checkBigDecimal(null==rst6.getString("js_yongdi")?"":rst6.getString("js_yongdi").toString().trim()));
						ren.setGd_mianji(checkBigDecimal(null==rst6.getString("gd_mianji")?"":rst6.getString("gd_mianji").toString().trim()));
						ren.setNongtian(checkBigDecimal(null==rst6.getString("nongtian")?"":rst6.getString("nongtian").toString().trim()));
						ren.setGy_tudi(checkBigDecimal(null==rst6.getString("gy_tudi")?"":rst6.getString("gy_tudi").toString().trim()));
						ren.setJt_tudi(checkBigDecimal(null==rst6.getString("jt_tudi")?"":rst6.getString("jt_tudi").toString().trim()));
						ren.setBq_bili(checkBigDecimal(null==rst6.getString("bq_bili")?"":rst6.getString("bq_bili").toString().trim()));
						ren.setSq_bili(checkBigDecimal(null==rst6.getString("sq_bili")?"":rst6.getString("sq_bili").toString().trim()));
						ren.setGh_xzdi(checkBigDecimal(null==rst6.getString("gh_xzdi")?"":rst6.getString("gh_xzdi").toString().trim()));
						ren.setGh_xzhu(checkBigDecimal(null==rst6.getString("gh_xzhu")?"":rst6.getString("gh_xzhu").toString().trim()));
						ren.setDimao(null==rst6.getString("dimao")?"":rst6.getString("dimao").toString().trim());
						ren.setRenkou(checkBigDecimal(null==rst6.getString("renkou")?"":rst6.getString("renkou").toString().trim()));
						ren.setHushu(checkBigDecimal(null==rst6.getString("hushu")?"":rst6.getString("hushu").toString().trim()));
						ren.setHuji(checkBigDecimal(null==rst6.getString("huji")?"":rst6.getString("huji").toString().trim()));
						ren.setChangzhu(checkBigDecimal(null==rst6.getString("changzhu")?"":rst6.getString("changzhu").toString().trim()));
						ren.setNy_renkou(checkBigDecimal(null==rst6.getString("ny_renkou")?"":rst6.getString("ny_renkou").toString().trim()));
						ren.setFny_renkou(checkBigDecimal(null==rst6.getString("fny_renkou")?"":rst6.getString("fny_renkou").toString().trim()));
						ren.setNm_renkou(checkBigDecimal(null==rst6.getString("nm_renkou")?"":rst6.getString("nm_renkou").toString().trim()));
						ren.setZy_minzu(null==rst6.getString("zy_minzu")?"":rst6.getString("zy_minzu").toString().trim());
						ren.setSsmz_bili(checkBigDecimal(null==rst6.getString("ssmz_bili")?"":rst6.getString("ssmz_bili").toString().trim()));
						ren.setTese(null==rst6.getString("tese")?"":rst6.getString("tese").toString().trim());
						ren.setCy_mianji(checkBigDecimal(null==rst6.getString("cy_mianji")?"":rst6.getString("cy_mianji").toString().trim()));
						ren_di.add(ren);
					}
					
					//荣获名录
					rst7 = stmt.executeQuery(sql7);
					while(rst7.next()){
						Rong_yu rong = new Rong_yu();
						rong.setUnit_id(seq);
						rong.setYear(Long.parseLong(null==rst7.getString("year")?"":rst7.getString("year").toString().trim()));
						rong.setZd_fazhan(null==rst7.getString("zd_fazhan")?"":rst7.getString("zd_fazhan").toString().trim());
						rong.setCheng_hao(null==rst7.getString("cheng_hao")?"":rst7.getString("cheng_hao").toString().trim());
						rong.setZhi_chi(null==rst7.getString("zhi_chi")?"":rst7.getString("zhi_chi").toString().trim());
						rong.setJianjie(null==rst7.getString("jianjie")?"":rst7.getString("jianjie").toString().trim());
						rong_yu.add(rong);
					}
                    if (!"jichu".equals(type)){
						//文件
						rstFile = stmt.executeQuery(sqlFile);					
						int ii= 0;
						try {
							while(rstFile.next()){  
								Date date = new Date();
								Long name = date.getTime();
								String fn = null==rstFile.getString("name")?"":rstFile.getString("name").toString().trim();
								String[] ff = fn.split("\\.");
								Map fileMap = new HashMap(); //didian新增，则相应表unit_id也改变
								fileMap.put("unit_id", seq);  
								fileMap.put("year", Long.parseLong(null==rstFile.getString("year")?"":rstFile.getString("year").toString().trim())); 
								fileMap.put("name", ""+user_id+"/"+ii+name+"."+ff[ff.length-1]+"##"+fn);
								String fiPath = request.getSession().getServletContext().getRealPath("/upFile/file/")+ "/"+user_id+"/" + ii+name+"."+ff[ff.length-1];
								try {
									createFile(fiPath,rstFile.getBytes("file"));
									//若文件为图片则生成缩略图
									try {
										if(ff[ff.length-1].toLowerCase().equals("jpg")||ff[ff.length-1].toLowerCase().equals("bmp")){
//										File imgFile = new File(fiPath);
//										Image imgfile = new Image(imgFile);
//										imgfile.resize(350, 230);
//										imgfile.saveAs(request.getSession().getServletContext().getRealPath("/upFile/file/")+ "/"+user_id+"/_" + ii+name+"."+ff[ff.length-1]);
											ImageTools.cutImage(350,230, fiPath, request.getSession().getServletContext().getRealPath("/upFile/file/")+ "/"+user_id+"/_" + ii+name+"."+ff[ff.length-1],1);
										}
									} catch (Exception e) {
										//e.printStackTrace();
									}							
								} catch (Exception e) {}
								fileList.add(fileMap);
								ii++;
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
                    }
				}else{					
					//行政村
					rstXzc_ghys = stmt.executeQuery(sqlXzc_ghys);
					while(rstXzc_ghys.next()){  
						Xzc_ghys xzc_ghys = new Xzc_ghys(); //didian新增，则相应表unit_id也改变
						xzc_ghys.setUnit_id(Long.parseLong(null==rstXzc_ghys.getString("unit_id")?"":rstXzc_ghys.getString("unit_id").toString().trim()));
						xzc_ghys.setYear(Long.parseLong(null==rstXzc_ghys.getString("year")?"":rstXzc_ghys.getString("year").toString().trim()));
						xzc_ghys.setYuan_blili(checkBigDecimal(null==rstXzc_ghys.getString("yuan_blili")?"":rstXzc_ghys.getString("yuan_blili").toString().trim()));
						xzc_ghys.setFen_bu(checkBigDecimal(null==rstXzc_ghys.getString("fen_bu")?"":rstXzc_ghys.getString("fen_bu").toString().trim()));
						xzc_ghys.setYd_xianzhuang(checkBigDecimal(null==rstXzc_ghys.getString("yd_xianzhuang")?"":rstXzc_ghys.getString("yd_xianzhuang").toString().trim()));
						xzc_ghys.setJt_xianzhuang(checkBigDecimal(null==rstXzc_ghys.getString("jt_xianzhuang")?"":rstXzc_ghys.getString("jt_xianzhuang").toString().trim()));
						xzc_ghys.setJc_gg_xz(checkBigDecimal(null==rstXzc_ghys.getString("jc_gg_xz")?"":rstXzc_ghys.getString("jc_gg_xz").toString().trim()));
						xzc_ghys.setXian_bili(checkBigDecimal(null==rstXzc_ghys.getString("xian_bili")?"":rstXzc_ghys.getString("xian_bili").toString().trim()));
						xzc_ghys.setJj_fangxiang(checkBigDecimal(null==rstXzc_ghys.getString("jj_fangxiang")?"":rstXzc_ghys.getString("jj_fangxiang").toString().trim()));
						xzc_ghys.setZhengzhi(checkBigDecimal(null==rstXzc_ghys.getString("zhengzhi")?"":rstXzc_ghys.getString("zhengzhi").toString().trim()));
						xzc_ghys.setCj_gonggong(checkBigDecimal(null==rstXzc_ghys.getString("cj_gonggong")?"":rstXzc_ghys.getString("cj_gonggong").toString().trim()));
						xzc_ghys.setZd_buju(checkBigDecimal(null==rstXzc_ghys.getString("zd_buju")?"":rstXzc_ghys.getString("zd_buju").toString().trim()));
						xzc_ghys.setShuoming(checkBigDecimal(null==rstXzc_ghys.getString("shuoming")?"":rstXzc_ghys.getString("shuoming").toString().trim()));
						xzc_ghys.setJing_tong(checkBigDecimal(null==rstXzc_ghys.getString("jing_tong")?"":rstXzc_ghys.getString("jing_tong").toString().trim()));
						xzc_ghys.setXiang_shen(checkBigDecimal(null==rstXzc_ghys.getString("xiang_shen")?"":rstXzc_ghys.getString("xiang_shen").toString().trim()));
						xzc_ghys.setXian_shen(checkBigDecimal(null==rstXzc_ghys.getString("xian_shen")?"":rstXzc_ghys.getString("xian_shen").toString().trim()));
						xzc_ghys.setYj_zhengji(checkBigDecimal(null==rstXzc_ghys.getString("yj_zhengji")?"":rstXzc_ghys.getString("yj_zhengji").toString().trim()));
						xzc_ghys.setCheng_guo(checkBigDecimal(null==rstXzc_ghys.getString("cheng_guo")?"":rstXzc_ghys.getString("cheng_guo").toString().trim()));
						xzc_ghys.setCg_shangbao(checkBigDecimal(null==rstXzc_ghys.getString("cg_shangbao")?"":rstXzc_ghys.getString("cg_shangbao").toString().trim()));
						xzc_ghys.setCg_guidang(checkBigDecimal(null==rstXzc_ghys.getString("cg_guidang")?"":rstXzc_ghys.getString("cg_guidang").toString().trim()));
						xzc_ghys.setZs_buzhu(checkBigDecimal(null==rstXzc_ghys.getString("zs_buzhu")?"":rstXzc_ghys.getString("zs_buzhu").toString().trim()));
						xzc_ghys.setXian_buzhu(checkBigDecimal(null==rstXzc_ghys.getString("xian_buzhu")?"":rstXzc_ghys.getString("xian_buzhu").toString().trim()));
						xzc_ghys.setGh_bzshiyong(checkBigDecimal(null==rstXzc_ghys.getString("gh_bzshiyong")?"":rstXzc_ghys.getString("gh_bzshiyong").toString().trim()));
						xzc_ghys.setJiangli(checkBigDecimal(null==rstXzc_ghys.getString("jiangli")?"":rstXzc_ghys.getString("jiangli").toString().trim()));
						xzc_ghys.setZong(checkBigDecimal(null==rstXzc_ghys.getString("zong")?"":rstXzc_ghys.getString("zong").toString().trim()));
						xzc_ghys.setYs_ren(null==rstXzc_ghys.getString("ys_ren")?"":rstXzc_ghys.getString("ys_ren").toString().trim());
						xzc_ghys.setYs_shijian(new java.sql.Date(DataFormat.toDate(rstXzc_ghys.getString("ys_shijian")).getTime()));
						xzc_ghys.setQz_zhuanjia(null==rstXzc_ghys.getString("qz_zhuanjia")?"":rstXzc_ghys.getString("qz_zhuanjia").toString().trim());
						xzc_ghys.setTijiao(tijiao);
						xzc_ghys.setBeizhu(null==rstXzc_ghys.getString("beizhu")?"":rstXzc_ghys.getString("beizhu").toString().trim());
						xzc_ghys.setRemark("xian");
						xzc_ghysList.add(xzc_ghys);
					}
					
					//自然村
					rstZrc_ghys = stmt.executeQuery(sqlZrc_ghys);
					while(rstZrc_ghys.next()){ 
						Zrc_ghys zrc_ghys = new Zrc_ghys(); //didian新增，则相应表unit_id也改变
						zrc_ghys.setUnit_id(Long.parseLong(null==rstZrc_ghys.getString("unit_id")?"":rstZrc_ghys.getString("unit_id").toString().trim()));
						zrc_ghys.setYear(Long.parseLong(null==rstZrc_ghys.getString("year")?"":rstZrc_ghys.getString("year").toString().trim()));
						zrc_ghys.setYuan_blili(checkBigDecimal(null==rstZrc_ghys.getString("yuan_blili")?"":rstZrc_ghys.getString("yuan_blili").toString().trim()));
						zrc_ghys.setJz_xianzhuang(checkBigDecimal(null==rstZrc_ghys.getString("jz_xianzhuang")?"":rstZrc_ghys.getString("jz_xianzhuang").toString().trim()));
						zrc_ghys.setJt_xianzhuang(checkBigDecimal(null==rstZrc_ghys.getString("jt_xianzhuang")?"":rstZrc_ghys.getString("jt_xianzhuang").toString().trim()));
						zrc_ghys.setJc_gg_xz(checkBigDecimal(null==rstZrc_ghys.getString("jc_gg_xz")?"":rstZrc_ghys.getString("jc_gg_xz").toString().trim()));
						zrc_ghys.setXian_bili(checkBigDecimal(null==rstZrc_ghys.getString("xian_bili")?"":rstZrc_ghys.getString("xian_bili").toString().trim()));
						zrc_ghys.setYd_jiexian(checkBigDecimal(null==rstZrc_ghys.getString("yd_jiexian")?"":rstZrc_ghys.getString("yd_jiexian").toString().trim()));
						zrc_ghys.setDl_zuxiang(checkBigDecimal(null==rstZrc_ghys.getString("dl_zuxiang")?"":rstZrc_ghys.getString("dl_zuxiang").toString().trim()));
						zrc_ghys.setLd_weizhi(checkBigDecimal(null==rstZrc_ghys.getString("ld_weizhi")?"":rstZrc_ghys.getString("ld_weizhi").toString().trim()));
						zrc_ghys.setSz_yongdi(checkBigDecimal(null==rstZrc_ghys.getString("sz_yongdi")?"":rstZrc_ghys.getString("sz_yongdi").toString().trim()));
						zrc_ghys.setZf_pingmian(checkBigDecimal(null==rstZrc_ghys.getString("zf_pingmian")?"":rstZrc_ghys.getString("zf_pingmian").toString().trim()));
						zrc_ghys.setZf_pingli(checkBigDecimal(null==rstZrc_ghys.getString("zf_pingli")?"":rstZrc_ghys.getString("zf_pingli").toString().trim()));
						zrc_ghys.setZf_caise(checkBigDecimal(null==rstZrc_ghys.getString("zf_caise")?"":rstZrc_ghys.getString("zf_caise").toString().trim()));
						zrc_ghys.setShuoming(checkBigDecimal(null==rstZrc_ghys.getString("shuoming")?"":rstZrc_ghys.getString("shuoming").toString().trim()));
						zrc_ghys.setJing_tong(checkBigDecimal(null==rstZrc_ghys.getString("jing_tong")?"":rstZrc_ghys.getString("jing_tong").toString().trim()));
						zrc_ghys.setXiang_shen(checkBigDecimal(null==rstZrc_ghys.getString("xiang_shen")?"":rstZrc_ghys.getString("xiang_shen").toString().trim()));
						zrc_ghys.setXian_shen(checkBigDecimal(null==rstZrc_ghys.getString("xian_shen")?"":rstZrc_ghys.getString("xian_shen").toString().trim()));
						zrc_ghys.setYj_zhengji(checkBigDecimal(null==rstZrc_ghys.getString("yj_zhengji")?"":rstZrc_ghys.getString("yj_zhengji").toString().trim()));
						zrc_ghys.setCheng_guo(checkBigDecimal(null==rstZrc_ghys.getString("cheng_guo")?"":rstZrc_ghys.getString("cheng_guo").toString().trim()));
						zrc_ghys.setCg_shangbao(checkBigDecimal(null==rstZrc_ghys.getString("cg_shangbao")?"":rstZrc_ghys.getString("cg_shangbao").toString().trim()));
						zrc_ghys.setCg_guidang(checkBigDecimal(null==rstZrc_ghys.getString("cg_guidang")?"":rstZrc_ghys.getString("cg_guidang").toString().trim()));
						zrc_ghys.setZs_buzhu(checkBigDecimal(null==rstZrc_ghys.getString("zs_buzhu")?"":rstZrc_ghys.getString("zs_buzhu").toString().trim()));
						zrc_ghys.setXian_buzhu(checkBigDecimal(null==rstZrc_ghys.getString("xian_buzhu")?"":rstZrc_ghys.getString("xian_buzhu").toString().trim()));
						zrc_ghys.setGh_bzshiyong(checkBigDecimal(null==rstZrc_ghys.getString("gh_bzshiyong")?"":rstZrc_ghys.getString("gh_bzshiyong").toString().trim()));
						zrc_ghys.setJiangli(checkBigDecimal(null==rstZrc_ghys.getString("jiangli")?"":rstZrc_ghys.getString("jiangli").toString().trim()));
						zrc_ghys.setZong(checkBigDecimal(null==rstZrc_ghys.getString("zong")?"":rstZrc_ghys.getString("zong").toString().trim()));
						zrc_ghys.setYs_ren(null==rstZrc_ghys.getString("ys_ren")?"":rstZrc_ghys.getString("ys_ren").toString().trim());
						zrc_ghys.setYs_shijian(new java.sql.Date(DataFormat.toDate(rstZrc_ghys.getString("ys_shijian")).getTime()));
						zrc_ghys.setQz_zhuanjia(null==rstZrc_ghys.getString("qz_zhuanjia")?"":rstZrc_ghys.getString("qz_zhuanjia").toString().trim());
						zrc_ghys.setTijiao(tijiao);
						zrc_ghys.setBeizhu(null==rstZrc_ghys.getString("beizhu")?"":rstZrc_ghys.getString("beizhu").toString().trim());
						zrc_ghys.setRemark("xian");
						zrc_ghysList.add(zrc_ghys);
					}

					//道路
					rst1 = stmt.executeQuery(sql1);
					while(rst1.next()){  
						Dl_sheshi dl = new Dl_sheshi();
						dl.setUnit_id(Long.parseLong(null==rst1.getString("unit_id")?"":rst1.getString("unit_id").toString().trim()));
						dl.setYear(Long.parseLong(null==rst1.getString("year")?"":rst1.getString("year").toString().trim()));
						dl.setShu(checkBigDecimal(null==rst1.getString("shu")?"":rst1.getString("shu").toString().trim()));
						dl.setKuan(checkBigDecimal(null==rst1.getString("kuan")?"":rst1.getString("kuan").toString().trim()));
						dl.setChang(checkBigDecimal(null==rst1.getString("chang")?"":rst1.getString("chang").toString().trim()));
						dl.setGshu(checkBigDecimal(null==rst1.getString("gshu")?"":rst1.getString("gshu").toString().trim()));
						dl.setGkuan(checkBigDecimal(null==rst1.getString("gkuan")?"":rst1.getString("gkuan").toString().trim()));
						dl.setGchang(checkBigDecimal(null==rst1.getString("gchang")?"":rst1.getString("gchang").toString().trim()));
						dl.setGleixing(null==rst1.getString("gleixing")?"":rst1.getString("gleixing").toString().trim());
						dl.setDengji(null==rst1.getString("dengji")?"":rst1.getString("dengji").toString().trim());
						dl_sheshi.add(dl);
					}
					
					//公共服务
					rst2 = stmt.executeQuery(sql2);
					while(rst2.next()){
						Gg_fuwu gg = new Gg_fuwu();
						gg.setUnit_id(Long.parseLong(null==rst2.getString("unit_id")?"":rst2.getString("unit_id").toString().trim()));
						gg.setYear(Long.parseLong(null==rst2.getString("year")?"":rst2.getString("year").toString().trim()));
						gg.setMing_cheng(null==rst2.getString("ming_cheng")?"":rst2.getString("ming_cheng").toString().trim());
						gg.setLei_bie(null==rst2.getString("lei_bie")?"":rst2.getString("lei_bie").toString().trim());
						gg.setShu_liang(checkBigDecimal(null==rst2.getString("shu_Liang")?"":rst2.getString("shu_Liang").toString().trim()));
						gg.setGui_mo(checkBigDecimal(null==rst2.getString("gui_mo")?"":rst2.getString("gui_mo").toString().trim()));
						gg.setGh_shifou(null==rst2.getString("gh_shifou")?"":rst2.getString("gh_shifou").toString().trim());
						gg.setGshu_liang(checkBigDecimal(null==rst2.getString("gshu_liang")?"":rst2.getString("gshu_liang").toString().trim()));
						gg.setGgui_mo(checkBigDecimal(null==rst2.getString("ggui_mo")?"":rst2.getString("ggui_mo").toString().trim()));
						gg.setBeizhu(null==rst2.getString("beizhu")?"":rst2.getString("beizhu").toString().trim());
						gg.setGcun(null==rst2.getString("gcun")?"":rst2.getString("gcun").toString().trim());
						gg_fuwu.add(gg);
					}
					
					//基础设施
					rst3 = stmt.executeQuery(sql3);
					while(rst3.next()){
						Ji_chu ji = new Ji_chu();
						ji.setUnit_id(Long.parseLong(null==rst3.getString("unit_id")?"":rst3.getString("unit_id").toString().trim()));
						ji.setYear(Long.parseLong(null==rst3.getString("year")?"":rst3.getString("year").toString().trim()));
						ji.setXshuliang(checkBigDecimal(null==rst3.getString("xshuliang")?"":rst3.getString("xshuliang").toString().trim()));
						ji.setXguimo(checkBigDecimal(null==rst3.getString("xguimo")?"":rst3.getString("xguimo").toString().trim()));
						ji.setXianjian(null==rst3.getString("xianjian")?"":rst3.getString("xianjian").toString().trim());
						ji.setGcun(null==rst3.getString("gcun")?"":rst3.getString("gcun").toString().trim());
						ji.setGliang(checkBigDecimal(null==rst3.getString("gliang")?"":rst3.getString("gliang").toString().trim()));
						ji.setGuimo(checkBigDecimal(null==rst3.getString("guimo")?"":rst3.getString("guimo").toString().trim()));
						ji.setGdi(checkBigDecimal(null==rst3.getString("gdi")?"":rst3.getString("gdi").toString().trim()));
						ji.setMingcheng(null==rst3.getString("mingcheng")?"":rst3.getString("mingcheng").toString().trim());
						ji_chu.add(ji);
					}
					
					//经济发展情况
					rst4 = stmt.executeQuery(sql4);
					while(rst4.next()){
						Jing_ji jing = new Jing_ji();
						jing.setUnit_id(Long.parseLong(null==rst4.getString("unit_id")?"":rst4.getString("unit_id").toString().trim()));
						jing.setYear(Long.parseLong(null==rst4.getString("year")?"":rst4.getString("year").toString().trim()));
						jing.setNian_shouru(checkBigDecimal(null==rst4.getString("nian_shouru")?"":rst4.getString("nian_shouru").toString().trim()));
						jing.setRj_shouru(checkBigDecimal(null==rst4.getString("rj_shouru")?"":rst4.getString("rj_shouru").toString().trim()));
						jing.setCj_zongchanzhi(checkBigDecimal(null==rst4.getString("cj_zongchanzhi")?"":rst4.getString("cj_zongchanzhi").toString().trim()));
						jing.setDy_chanzhi(checkBigDecimal(null==rst4.getString("dy_chanzhi")?"":rst4.getString("dy_chanzhi").toString().trim()));
						jing.setDe_chanzhi(checkBigDecimal(null==rst4.getString("de_chanzhi")?"":rst4.getString("de_chanzhi").toString().trim()));
						jing.setDs_chanzhi(checkBigDecimal(null==rst4.getString("ds_chanzhi")?"":rst4.getString("ds_chanzhi").toString().trim()));
						jing.setZhu_chanye(null==rst4.getString("zhu_chanye")?"":rst4.getString("zhu_chanye").toString().trim());
						jing.setTese_chanpin(null==rst4.getString("tese_chanpin")?"":rst4.getString("tese_chanpin").toString().trim());
						jing.setQiye_shu(checkBigDecimal(null==rst4.getString("qiye_shu")?"":rst4.getString("qiye_shu").toString().trim()));
						jing.setQiye_chanzbhi(checkBigDecimal(null==rst4.getString("qiye_chanzbhi")?"":rst4.getString("qiye_chanzbhi").toString().trim()));
						jing_ji.add(jing);
					}  
					
					//村民居住
					rst5 = stmt.executeQuery(sql5);
					while(rst5.next()){
						Ju_zhu ju = new Ju_zhu();
						ju.setUnit_id(Long.parseLong(null==rst5.getString("unit_id")?"":rst5.getString("unit_id").toString().trim()));
						ju.setYear(Long.parseLong(null==rst5.getString("year")?"":rst5.getString("year").toString().trim()));
						ju.setBeizhu(null==rst5.getString("beizhu")?"":rst5.getString("beizhu").toString().trim());
						ju.setNeirong(null==rst5.getString("neirong")?"":rst5.getString("neirong").toString().trim());
						ju.setDanwei(null==rst5.getString("danwei")?"":rst5.getString("danwei").toString().trim());
						ju.setShuliang(checkBigDecimal(null==rst5.getString("shuliang")?"":rst5.getString("shuliang").toString().trim()));
						ju.setBili(checkBigDecimal(null==rst5.getString("bili")?"":rst5.getString("bili").toString().trim()));
						ju_zhu.add(ju);
					}
					
					//人口与用地
					rst6 = stmt.executeQuery(sql6);
					while(rst6.next()){
						Ren_di ren = new Ren_di();
						ren.setUnit_id(Long.parseLong(null==rst6.getString("unit_id")?"":rst6.getString("unit_id").toString().trim()));
						ren.setYear(Long.parseLong(null==rst6.getString("year")?"":rst6.getString("year").toString().trim()));
						ren.setCz_zhandi(checkBigDecimal(null==rst6.getString("cz_zhandi")?"":rst6.getString("cz_zhandi").toString().trim()));
						ren.setCz_guihua(checkBigDecimal(null==rst6.getString("cz_guihua")?"":rst6.getString("cz_guihua").toString().trim()));
						ren.setJs_yongdi(checkBigDecimal(null==rst6.getString("js_yongdi")?"":rst6.getString("js_yongdi").toString().trim()));
						ren.setGd_mianji(checkBigDecimal(null==rst6.getString("gd_mianji")?"":rst6.getString("gd_mianji").toString().trim()));
						ren.setNongtian(checkBigDecimal(null==rst6.getString("nongtian")?"":rst6.getString("nongtian").toString().trim()));
						ren.setGy_tudi(checkBigDecimal(null==rst6.getString("gy_tudi")?"":rst6.getString("gy_tudi").toString().trim()));
						ren.setJt_tudi(checkBigDecimal(null==rst6.getString("jt_tudi")?"":rst6.getString("jt_tudi").toString().trim()));
						ren.setBq_bili(checkBigDecimal(null==rst6.getString("bq_bili")?"":rst6.getString("bq_bili").toString().trim()));
						ren.setSq_bili(checkBigDecimal(null==rst6.getString("sq_bili")?"":rst6.getString("sq_bili").toString().trim()));
						ren.setGh_xzdi(checkBigDecimal(null==rst6.getString("gh_xzdi")?"":rst6.getString("gh_xzdi").toString().trim()));
						ren.setGh_xzhu(checkBigDecimal(null==rst6.getString("gh_xzhu")?"":rst6.getString("gh_xzhu").toString().trim()));
						ren.setDimao(null==rst6.getString("dimao")?"":rst6.getString("dimao").toString().trim());
						ren.setRenkou(checkBigDecimal(null==rst6.getString("renkou")?"":rst6.getString("renkou").toString().trim()));
						ren.setHushu(checkBigDecimal(null==rst6.getString("hushu")?"":rst6.getString("hushu").toString().trim()));
						ren.setHuji(checkBigDecimal(null==rst6.getString("huji")?"":rst6.getString("huji").toString().trim()));
						ren.setChangzhu(checkBigDecimal(null==rst6.getString("changzhu")?"":rst6.getString("changzhu").toString().trim()));
						ren.setNy_renkou(checkBigDecimal(null==rst6.getString("ny_renkou")?"":rst6.getString("ny_renkou").toString().trim()));
						ren.setFny_renkou(checkBigDecimal(null==rst6.getString("fny_renkou")?"":rst6.getString("fny_renkou").toString().trim()));
						ren.setNm_renkou(checkBigDecimal(null==rst6.getString("nm_renkou")?"":rst6.getString("nm_renkou").toString().trim()));
						ren.setZy_minzu(null==rst6.getString("zy_minzu")?"":rst6.getString("zy_minzu").toString().trim());
						ren.setSsmz_bili(checkBigDecimal(null==rst6.getString("ssmz_bili")?"":rst6.getString("ssmz_bili").toString().trim()));
						ren.setTese(null==rst6.getString("tese")?"":rst6.getString("tese").toString().trim());
						ren.setCy_mianji(checkBigDecimal(null==rst6.getString("cy_mianji")?"":rst6.getString("cy_mianji").toString().trim()));
						ren_di.add(ren);
					}
					
					//荣获名录
					rst7 = stmt.executeQuery(sql7);
					while(rst7.next()){
						Rong_yu rong = new Rong_yu();
						rong.setUnit_id(Long.parseLong(null==rst7.getString("unit_id")?"":rst7.getString("unit_id").toString().trim()));
						rong.setYear(Long.parseLong(null==rst7.getString("year")?"":rst7.getString("year").toString().trim()));
						rong.setZd_fazhan(null==rst7.getString("zd_fazhan")?"":rst7.getString("zd_fazhan").toString().trim());
						rong.setCheng_hao(null==rst7.getString("cheng_hao")?"":rst7.getString("cheng_hao").toString().trim());
						rong.setZhi_chi(null==rst7.getString("zhi_chi")?"":rst7.getString("zhi_chi").toString().trim());
						rong.setJianjie(null==rst7.getString("jianjie")?"":rst7.getString("jianjie").toString().trim());
						rong_yu.add(rong);
					}
                    if (!"jichu".equals(type)){
						//文件
						rstFile = stmt.executeQuery(sqlFile);					
						int ii = 0;
						try {
							while(rstFile.next()){ 
								Date date = new Date();
								Long name = date.getTime();
								String fn = rstFile.getString("name").toString().trim();
								String[] ff = fn.split("\\.");
								Map fileMap = new HashMap(); //didian新增，则相应表unit_id也改变
								fileMap.put("unit_id", Long.parseLong(null==rstFile.getString("unit_id")?"":rstFile.getString("unit_id").toString().trim()));  
								fileMap.put("year", Long.parseLong(null==rstFile.getString("year")?"":rstFile.getString("year").toString().trim())); 
								fileMap.put("name", ""+user_id+"/"+ii+name+"."+ff[ff.length-1]+"##"+fn);
								String fiPath = request.getSession().getServletContext().getRealPath("/upFile/file/")+ "/"+user_id+"/" + ii+name+"."+ff[ff.length-1];
								try {
									createFile(fiPath,rstFile.getBytes("file"));
									//若文件为图片则生成缩略图
									try {
										if(ff[ff.length-1].toLowerCase().equals("jpg")||ff[ff.length-1].toLowerCase().equals("bmp")){
//										File imgFile = new File(fiPath);
//										Image imgfile = new Image(imgFile);
//										imgfile.resize(350, 230);
//										imgfile.saveAs(request.getSession().getServletContext().getRealPath("/upFile/file/")+ "/"+user_id+"/_" + ii+name+"."+ff[ff.length-1]);
											ImageTools.cutImage(350,230, fiPath, request.getSession().getServletContext().getRealPath("/upFile/file/")+ "/"+user_id+"/_" + ii+name+"."+ff[ff.length-1],1);
										}
									} catch (Exception e) {
										//e.printStackTrace();
									}
								} catch (Exception e) {}
								fileList.add(fileMap);
								ii++;
							}
						} catch (Exception e) {
							e.printStackTrace();
						}					
					}
				}
			}
			
			//把数据灌进oracle
			//打开事务
			dataBaseControl.beginTransaction();
			//地点
			dataBaseControl.executeSql("DELETE FROM T_didian a WHERE a.biao_shi in (select d.biao_shi from t_didian d," +
					"(select b.biao_shi from t_didian b where b.id = ?) c where d.biao_shi like c.biao_shi || '_%') and" +
					" a.remark = '新增'", new Object[]{user_id});			
			//更新didian表
			for(int i = 0;i<didian.size();i++){
				Didian di_dian = new Didian();
				Long id = Long.parseLong(((Map)didian.get(i)).get("id").toString().trim());
				String remark = null==((Map)didian.get(i)).get("remark")?"":((Map)didian.get(i)).get("remark").toString();
				//封装
				di_dian.setId(id);
				di_dian.setParent(Long.parseLong(((Map)didian.get(i)).get("parent").toString().trim()));
				di_dian.setName(null==((Map)didian.get(i)).get("name")?"":((Map)didian.get(i)).get("name").toString().trim());
				di_dian.setRemark(remark);
				di_dian.setBiao_shi(null==((Map)didian.get(i)).get("biaoshi")?"":((Map)didian.get(i)).get("biaoshi").toString().trim());
				di_dian.setZhu_xiao(null==((Map)didian.get(i)).get("zhuxiao")?"":((Map)didian.get(i)).get("zhuxiao").toString().trim());
				di_dian.setQuan_ming(null==((Map)didian.get(i)).get("quan_ming")?"":((Map)didian.get(i)).get("quan_ming").toString().trim());
				if("新增".equals(remark)){
					dataBaseControl.insertByBean(di_dian, id);
				}else{
					dataBaseControl.updateByBean(di_dian);
				}
			}
            //关闭事务
			dataBaseControl.endTransaction();
            if (!"jichu".equals(type)){
            	dataBaseControl.beginTransaction();			
                //然后删除表中数据
    			dataBaseControl.executeSql("DELETE FROM t_file a WHERE a.unit_id in(select b.id from T_didian b,(select " +
    					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=?", new Object[]{user_id,year});
    			
    			for(int i = 0;i<fileList.size();i++){
    				//上传文件
    				Map file = (Map)fileList.get(i);
    				String name = file.get("name").toString().trim();
    				String[] fName = name.split("##");
        	        //插入t_file表
        	        Long unit_id = Long.parseLong(file.get("unit_id").toString().trim());
        	        Long fYear = Long.parseLong(file.get("year").toString().trim());
        	        String sql = "insert into t_file (id,unit_id,year,name,path) values(?,?,?,?,?)";
        	        dataBaseControl.executeSql(sql, new Object[]{dataBaseControl.getSeq("file"),unit_id,fYear,fName[1],fName[0]});
    			}
    			dataBaseControl.endTransaction();	
            }
			dataBaseControl.beginTransaction();				
			
			//负责人
			for(int i = 0;i<fuzeList.size();i++){
				dataBaseControl.executeSql("DELETE FROM T_fuze a WHERE a.type='"+fztype+"' and a.unit_id=?", new Object[]{((Fuze)fuzeList.get(i)).getUnit_id()});
			}
			//负责人
			for(int i = 0;i<fuzeList.size();i++){
				dataBaseControl.insertByBean((Fuze)fuzeList.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();	
			
			//行政村
			dataBaseControl.executeSql("DELETE FROM T_XZC_GHYS a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=? and a.remark='xian'", new Object[]{user_id,year});			
			//行政村
			for(int i = 0;i<xzc_ghysList.size();i++){
				dataBaseControl.insertByBean((Xzc_ghys)xzc_ghysList.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();				
			//自然村
			dataBaseControl.executeSql("DELETE FROM T_ZRC_GHYS a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=? and a.remark='xian'", new Object[]{user_id,year});			
			//自然村
			for(int i = 0;i<zrc_ghysList.size();i++){
				dataBaseControl.insertByBean((Zrc_ghys)zrc_ghysList.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();				
		    //道路
			dataBaseControl.executeSql("DELETE FROM T_dl_sheshi a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=?", new Object[]{user_id,year});			
			//道路
			for(int i = 0;i<dl_sheshi.size();i++){
				dataBaseControl.insertByBean((Dl_sheshi)dl_sheshi.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();				
			//公共服务
			dataBaseControl.executeSql("DELETE FROM T_gg_fuwu a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=?", new Object[]{user_id,year});			
			//公共服务
			for(int i = 0;i<gg_fuwu.size();i++){
				dataBaseControl.insertByBean((Gg_fuwu)gg_fuwu.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();				
			//基础设施
			dataBaseControl.executeSql("DELETE FROM T_ji_chu a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=?", new Object[]{user_id,year});			
			//基础设施
			for(int i = 0;i<ji_chu.size();i++){
				dataBaseControl.insertByBean((Ji_chu)ji_chu.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();				
			//经济
			dataBaseControl.executeSql("DELETE FROM T_jing_ji a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=?", new Object[]{user_id,year});			
			//经济
			for(int i = 0;i<jing_ji.size();i++){
				dataBaseControl.insertByBean((Jing_ji)jing_ji.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();				
			//居住
			dataBaseControl.executeSql("DELETE FROM T_ju_zhu a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=?", new Object[]{user_id,year});			
			//居住
			for(int i = 0;i<ju_zhu.size();i++){
				dataBaseControl.insertByBean((Ju_zhu)ju_zhu.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();				
			//人口与用地
			dataBaseControl.executeSql("DELETE FROM T_ren_di a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=?", new Object[]{user_id,year});			
			//人口与用地
			for(int i = 0;i<ren_di.size();i++){
				dataBaseControl.insertByBean((Ren_di)ren_di.get(i));
			}
			dataBaseControl.endTransaction();
			dataBaseControl.beginTransaction();				
			//荣获名录
			dataBaseControl.executeSql("DELETE FROM T_rong_yu a WHERE a.unit_id in(select b.id from T_didian b,(select " +
					"c.biao_shi from t_didian c where c.id=?) d where b.biao_shi like d.biao_shi||'_%') and a.year=?", new Object[]{user_id,year});			
			//荣获名录
			for(int i = 0;i<rong_yu.size();i++){
				dataBaseControl.insertByBean((Rong_yu)rong_yu.get(i));
			}
            //关闭事务
			dataBaseControl.endTransaction();
		} catch (Exception e) {
			throw e;
		}finally{
			try {rstFuze.close();} catch (Exception e) {}
			try {rstXzc_ghys.close();} catch (Exception e) {}
			try {rstZrc_ghys.close();} catch (Exception e) {}
			try {rstFile.close();} catch (Exception e) {}
			try {rst1.close();} catch (Exception e) {}
			try {rst2.close();} catch (Exception e) {}
			try {rst3.close();} catch (Exception e) {}
			try {rst4.close();} catch (Exception e) {}
			try {rst5.close();} catch (Exception e) {}
			try {rst6.close();} catch (Exception e) {}
			try {rst7.close();} catch (Exception e) {}
			try {stmt.close();} catch (Exception e) {}
			try {conn.close();} catch (Exception e) {}
		}
		
	}
	
	//上传数据的数字验证
	private java.math.BigDecimal checkBigDecimal(String zifu){
		java.math.BigDecimal num = new java.math.BigDecimal(zifu.matches("[0-9]+(\\.[0-9]*)?")?Double.parseDouble(zifu):0); 
		return num;
	}
	
	 //将byte数组写入文件   
	private void createFile(String path, byte[] content) throws IOException {    
        FileOutputStream fos = new FileOutputStream(path);  
        fos.write(content);  
        fos.close();  
    }  
	//删除文件夹
	//param folderPath 文件夹完整绝对路径
	public static boolean delAllFile(String path) {
		boolean flag = false;
		File file = new File(path);
		if (!file.exists()) {
			return flag;
		}
		if (!file.isDirectory()) {
			return flag;
		}
		String[] tempList = file.list();
		File temp = null;
		for (int i = 0; i < tempList.length; i++) {
			if (path.endsWith(File.separator)) {
				temp = new File(path + tempList[i]);
			} else {
				temp = new File(path + File.separator + tempList[i]);
			}
			if (temp.isFile()) {
				temp.delete();
			}
			if (temp.isDirectory()) {
				delAllFile(path + "/" + tempList[i]);// 先删除文件夹里面的文件
				delFolder(path + "/" + tempList[i]);// 再删除空文件夹
				flag = true;
			}
		}
		return flag;
	}
	//删除指定文件夹下所有文件
	//param path 文件夹完整绝对路径
	public static void delFolder(String folderPath) {
		try {
			delAllFile(folderPath); // 删除完里面所有内容
			String filePath = folderPath;
			filePath = filePath.toString();
			java.io.File myFilePath = new java.io.File(filePath);
			myFilePath.delete(); // 删除空文件夹
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 复制文件
    public static void copyFile(String sourceFile, String targetFile) throws IOException {
        BufferedInputStream inBuff = null;
        BufferedOutputStream outBuff = null;
        try {
            // 新建文件输入流并对它进行缓冲
            inBuff = new BufferedInputStream(new FileInputStream(sourceFile));

            // 新建文件输出流并对它进行缓冲
            outBuff = new BufferedOutputStream(new FileOutputStream(targetFile));

            // 缓冲数组
            byte[] b = new byte[1024 * 5];
            int len;
            while ((len = inBuff.read(b)) != -1) {
                outBuff.write(b, 0, len);
            }
            // 刷新此缓冲的输出流
            outBuff.flush();
        } finally {
            // 关闭流
            if (inBuff != null)
                inBuff.close();
            if (outBuff != null)
                outBuff.close();
        }
    }
	
	// 先ftp上传文件，接受delphi上传数据库，并写进oracle
	public String uploadTest(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id=request.getParameter("id");
		String path="/opt/tomcat-7.0.33/webapps/ROOT/upFile/file/"+id+"/";
		String path1="/opt/tomcat-7.0.33/webapps/ROOT/upFile/file/"+id+"_/";
		File file = new File(path);
		String[] tempList = file.list();
		String temp = null;
		for (int i = 0; i < tempList.length; i++) {
			temp = path + File.separator + tempList[i];
			try {
			ImageTools.changeImage(temp, path1 + File.separator + tempList[i]);
			} catch (Exception e) {
				copyFile(temp,path1 + File.separator + tempList[i]);
			}
		}		
		return null;
	}	
	
}
