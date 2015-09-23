/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2015 官房电子科技有限公司</p>
 * <p> Created on 2015-2-9</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.site;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Infor;
import com.zsc.util.DataFormat;
import com.zsc.web.BaseAction;
/**
 * 网站后台管理
 */
public class ManageAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/**
	 * 显示所有栏目
	 */
	public String listModule(HttpServletRequest request)throws Exception{	
		List list=(List) dataBaseControl.getOutResultSet("select * from Inforname order by id", null);
		request.setAttribute("list", list);
		return "/site/modules.jsp";
	}
	/**
	 * 显示指定栏目下的新闻信息
	 */
	public String listInfor(HttpServletRequest request)throws Exception{
		String inforname=request.getParameter("inforname");
		List list=(List) dataBaseControl.getOutResultSet("select id,biaoti,wenbieming,wenjian,times,case when inforname='友情链接' then gaiyao end gaiyao from t_Infor where inforname=? order by times desc", new Object[]{inforname});
		request.setAttribute("list", list);
		request.setAttribute("inforname", inforname);
		return "/site/infors.jsp";
	}
	/**
	 * 删除指定id新闻信息
	 */
	public String delInfor(HttpServletRequest request)throws Exception{
		String id=request.getParameter("id");
		dataBaseControl.executeSql("delete from t_infor where id=?", new Object[]{id});
		String inforname=request.getParameter("inforname");
		List list=(List) dataBaseControl.getOutResultSet("select id,biaoti,wenbieming,wenjian,times,case when inforname='友情链接' then gaiyao end gaiyao  from t_infor where inforname=? order by times desc", new Object[]{inforname});
		request.setAttribute("list", list);
		request.setAttribute("inforname", inforname);
		return "/site/infors.jsp";
	}
	/**
	 * 编辑新闻
	 */
	public String edit(HttpServletRequest request)throws Exception{
		String id=request.getParameter("id");
		String inforname=request.getParameter("inforname");
		if(id!=null&&!"".equals(id)){
			Map infor=dataBaseControl.getOneResultSet("select * from t_infor where id=?", new Object[]{id});
			inforname=infor.get("inforname").toString();
			request.setAttribute("infor", infor);
		}
		request.setAttribute("inforname", inforname);
		return "/site/inforEdit.jsp";
	}
	/**
	 * 保存新闻
	 */
	public String save(HttpServletRequest request)throws Exception{
		String id=request.getParameter("id");
		Infor infor=new Infor();
		if(id==null||"".equals(id)){//新增
			infor.setLiulangcishu(0);
			BeanUtils.populate(infor, request.getParameterMap());
			dataBaseControl.insertByBeanLob(infor);
		}else{//更新
			Map temp=dataBaseControl.getOneResultSet("select * from t_infor where id=?", new Object[]{id});
			BeanUtils.populate(infor, temp);
			BeanUtils.populate(infor, request.getParameterMap());
			dataBaseControl.updateByBeanLob(infor);
		}
		String inforname=request.getParameter("inforname");
		List list=(List) dataBaseControl.getOutResultSet("select id,biaoti,wenbieming,wenjian,times,case when inforname='友情链接' then gaiyao end gaiyao  from t_infor where inforname=? order by times desc", new Object[]{inforname});
		request.setAttribute("list", list);
		request.setAttribute("inforname", inforname);
		return "/site/infors.jsp";
	}
	/**
	 * 保存新闻
	 */
	public String uploadFile(HttpServletRequest request,HttpServletResponse response)throws Exception{
		String inforname;
		//文件保存目录路径
		String savePath = request.getSession().getServletContext().getRealPath("/")+ "upFile/";
		//文件保存目录URL
		String saveUrl = request.getContextPath() + "/upFile/";

		//定义允许上传的文件扩展名
		String extMap="doc,docx,xls,xlsx,ppt,txt,zip,rar,gz,bz2";

		//最大文件大小
		long maxSize = 1024000*50;
		response.setContentType("text/html; charset=UTF-8");
		//检查目录
		File uploadDir = new File(savePath);
		if (!uploadDir.isDirectory()) {
			uploadDir.mkdirs();
		}
		File saveDirFile = new File(savePath);
		if (!saveDirFile.exists()) {
			saveDirFile.mkdirs();
		}

		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("GBK");
		List items = upload.parseRequest(request);
		Iterator itr = items.iterator();
		Map<String, Object> parameters = new HashMap<String, Object>();
		List<FileItem> listFile = new ArrayList();
		while (itr.hasNext()) {
			FileItem fi = (FileItem) itr.next();
			if (fi.isFormField()){
				try {
					parameters.put(fi.getFieldName(), fi.getString("GBK"));
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}else
				if (fi.getName() != null && !"".equals(fi.getName())) {
					listFile.add(fi);
				}
		}
		inforname=parameters.get("inforname").toString();
        for (FileItem item : listFile) {
				String fileName = item.getName();
				fileName=fileName.substring(fileName.lastIndexOf(File.separatorChar)+1);
				//检查文件大小
				if (item.getSize() > maxSize) {
					request.setAttribute("err","上传文件大小超过限制。");
					break;
				}
				//检查扩展名
				String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
				if (!Arrays.<String>asList(extMap.split(",")).contains(fileExt)) {
					request.setAttribute("err","上传文件扩展名是不允许的扩展名。\n只允许"+ extMap + "格式。");
					break;
				}

				SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
				String newFileName = df.format(new Date()) + "_"+ new Random().nextInt(1000) + "." + fileExt;
				try {
					File uploadedFile = new File(savePath, newFileName);
					item.write(uploadedFile);
					Infor infor=new Infor();
					infor.setLiulangcishu(0);
					infor.setBiaoti(fileName);
					infor.setWenbieming(fileName);
					infor.setWenjian(newFileName);
					infor.setInforname(inforname);
					infor.setTimes(new java.sql.Date(DataFormat.toDate(parameters.get("times").toString()).getTime()));
					dataBaseControl.insertByBeanLob(infor);
				} catch (Exception e) {
					request.setAttribute("err","上传文件失败。");
					break;
				}
		}
		List list=(List) dataBaseControl.getOutResultSet("select id,biaoti,wenbieming,wenjian,times,case when inforname='友情链接' then gaiyao end gaiyao  from t_infor where inforname=? order by times desc", new Object[]{inforname});
		request.setAttribute("list", list);
		request.setAttribute("inforname", inforname);
		return "/site/infors.jsp";	
	}	
}
