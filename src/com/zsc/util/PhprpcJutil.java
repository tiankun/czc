/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2010-10-29</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Didian;

public class PhprpcJutil {
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	/**
	 * ��ȡָ��ʡ����µĳ�������
	 * @param father
	 * @return
	 * @throws Exception
	 */
	public String getCitys(String father) throws Exception {
		DataBaseControl dataBaseControl = DataBaseControl.getInstance();
		Map obj=dataBaseControl.getOneResultSet("select t.* from t_didian t where t.id=?",new Object[] { father });
		String[] ids=obj.get("biao_shi").toString().split("_");
		Collection citys =  dataBaseControl.getOutResultSet(
				"select t.* from t_didian t where t.parent=? and (t.ZHU_XIAO<>'��' or  t.ZHU_XIAO is null) order by id",
				new Object[] { father });
		if(ids.length==6||citys.isEmpty())
			return "T";//��ʾΪ���ڵ��ˣ����ҿ�
		return JsonUtils.getJSONString(citys);
	}
    /**
     * ��ȡָ�����б�ŵĵ�������
     * @param father
     * @return
     * @throws Exception
     */
	@SuppressWarnings("unchecked")
	public String getLineCitys(String id) throws Exception {
		DataBaseControl dataBaseControl = DataBaseControl.getInstance();
		Map obj=dataBaseControl.getOneResultSet("select t.* from t_didian t where t.id=?",new Object[] { id });
		String[] ids=obj.get("biao_shi").toString().split("_");
		List list=new ArrayList();
		for (int i = 0; i < ids.length; i++) {
			list.add(dataBaseControl.getOneResultSet("select t.* from t_didian t where t.id=?",new Object[] { ids[i] }));	
		}
		return JsonUtils.getJSONString(list);
	}
	/** 
	 * ������������
	 **/
	public String saveDidian(String parent, String name) throws Exception {
		if (!"".equals(name.trim())) {
			DataBaseControl dataBaseControl = DataBaseControl.getInstance();
			Map parentObj = dataBaseControl.getOneResultSet("select * from t_didian t where id=?",new Object[] { parent });
			Didian didian = new Didian();
			long id = dataBaseControl.getSeq("Didian");
			didian.setId(id);
			didian.setName(name.trim());
			didian.setParent(Long.parseLong(parent));
			didian.setBiao_shi(parentObj.get("biao_shi").toString() + "_" + id);
			didian.setQuan_ming(parentObj.get("quan_ming") + name.trim());
			dataBaseControl.insertByBean(didian, id);
			return "succeed";
		} else
			return "";
	}		
	
	/**
	 *ɾ������
	 **/
	public String deleteDidian(String id) throws Exception {
		DataBaseControl dataBaseControl = DataBaseControl.getInstance();		
			dataBaseControl.executeSql("UPDATE t_didian SET ZHU_XIAO='��' WHERE ID=?", new Object[]{id});
		return "succeed";
	}
//	/** 
//	 * delphi�����¼(ֻ�����ؼ��û�)
//	 **/
//	public String login(String logName, String password,HttpSession session) throws Exception {
//		String outStr="ok";
//		DataBaseControl dataBaseControl = DataBaseControl.getInstance();
//		Collection users = dataBaseControl.getOutResultSet("select * from t_myuser where log_name=? and log_pass=? and guan_li in(select a.id from t_didian a where a.parent in (select b.id from t_didian b where b.parent=1))",
//				new Object[]{logName,Encrypt.crypt(password)});
//		if(users==null||users.isEmpty()){
//			outStr="��¼����������󣬵�¼ʧ�ܣ�";
//		}else if (users.size()==1) {
//			Map user=(Map) users.toArray()[0];
//			session.setAttribute("user", user);
//		}else{
//			outStr="ϵͳ�ڲ����󣬵�¼ʧ�ܣ�";
//		}
//		return outStr;
//	}
	
    /**
     * ��ȡdelphi�û���¼����Ͻ�ĵ�ַ����
     */
	public List getDidians(String logName, String password) throws Exception {
		DataBaseControl dataBaseControl = DataBaseControl.getInstance();
		Map user=dataBaseControl.getOneResultSet("select t.guan_li from t_myuser t where t.log_name=? or t.log_pass=?", new Object[]{logName,password});
		List list=(List) dataBaseControl.getOutResultSet("select * from t_didian t where t.biao_shi like (select a.biao_shi||'_%' from t_didian a where a.id=?)", new Object[]{user.get("guan_li")});
		return list;
	}
    /**
     * ��ȡdelphi�û��޸�����
     */
	public String modifyPass(String logName, String password,String newPassword) throws Exception {
		String outStr="ok";
		DataBaseControl dataBaseControl = DataBaseControl.getInstance();
		Map user=dataBaseControl.getOneResultSet("select t.id from t_myuser t where t.log_name=? or t.log_pass=?", new Object[]{logName,password});
		if(user==null)
			outStr="ԭ�û����������";
		else{
			dataBaseControl.executeSql("update t_myuser set log_pass=? where id=?", new Object[]{Encrypt.crypt(newPassword),user.get("id")});
		}
		return outStr;
	}
    /**
     * delphi�û���ӵ�ַ����
     */
	public String insertDidian(String name, String parentId) throws Exception {
		DataBaseControl dataBaseControl = DataBaseControl.getInstance();
		List list=(List) dataBaseControl.getOutResultSet("select biao_shi from t_didian where name=? and parent=? and (zhu_xiao<>'��' or zhu_xiao is null)", new Object[]{name,parentId});
		if (list!=null&&!list.isEmpty()){
			return ((Map)list.get(0)).get("biao_shi").toString();
		}else{
			Map parent=dataBaseControl.getOneResultSet("select biao_shi,quan_ming from t_didian where id=?", new Object[]{parentId});
			Didian didian=new Didian();
			long id=dataBaseControl.getSeq("Didian");
			didian.setId(id);
			didian.setParent(Long.parseLong(parentId));
			didian.setName(name);
			didian.setBiao_shi(parent.get("biao_shi").toString()+"_"+id);
			didian.setQuan_ming(parent.get("quan_ming")+name);
			dataBaseControl.insertByBean(didian,id);
			return parent.get("biao_shi").toString()+"_"+id;
		}
	}
	public String checkUser(String userId) throws Exception {
		String outStr="ok";
		DataBaseControl dataBaseControl = DataBaseControl.getInstance();
		//����������ŭ��������
		List list1 = (List)dataBaseControl.getOutResultSet("select b.id from t_didian b where b.biao_shi like '1_6601_%' " +
				"or b.biao_shi like '1_13191_%' or b.biao_shi like '1_14872_%' or b.biao_shi like '1_15173_%'", null);
		//��Ϫ���ն����ٲס���˫����
		List list2 = (List)dataBaseControl.getOutResultSet("select b.id from t_didian b where b.biao_shi like '1_3444_%' " +
				"or b.biao_shi like '1_7125_%' or b.biao_shi like '1_8258_%' or b.biao_shi like '1_12928_%'", null);
		//��������������ͨ������
		List list3 = (List)dataBaseControl.getOutResultSet("select b.id from t_didian b where b.biao_shi like '1_2_%' " +
				"or b.biao_shi like '1_1717_%' or b.biao_shi like '1_5180_%' or b.biao_shi like '1_9272_%'", null);
		//��ӡ���ɽ����ɽ���º�
		List list4 = (List)dataBaseControl.getOutResultSet("select b.id from t_didian b where b.biao_shi like '1_10457_%' " +
				"or b.biao_shi like '1_11876_%' or b.biao_shi like '1_4202_%' or b.biao_shi like '1_14441_%'", null);
		Date now = new Date();
		if(now.after(format.parse("2012-12-24 00:00:00"))&&now.before(format.parse("2012-12-26 23:59:59"))){
			int jishu=0;
			for(int i = 0;i<list1.size();i++){
				if(((Map)list1.get(i)).get("id").toString().equals(userId)){
					i++;
					break;
				}
			}
			if(jishu!=1){
				outStr="����Ϊ����������ŭ���������ĸ������ϴ��ļ���";
			}
		}else if(now.after(format.parse("2012-12-27 00:00:00"))&&now.before(format.parse("2012-12-31 23:59:59"))){
			int jishu=0;
			for(int i = 0;i<list2.size();i++){
				if(((Map)list2.get(i)).get("id").toString().equals(userId)){
					i++;
					break;
				}
			}
			if(jishu!=1){
				outStr="����Ϊ��Ϫ���ն����ٲס���˫�����ĸ������ϴ��ļ���";
			}
		}else if(now.after(format.parse("2013-01-01 00:00:00"))&&now.before(format.parse("2013-01-04 23:59:59"))){
			int jishu=0;
			for(int i = 0;i<list3.size();i++){
				if(((Map)list3.get(i)).get("id").toString().equals(userId)){
					i++;
					break;
				}
			}
			if(jishu==1){
				outStr="����Ϊ��������������ͨ�������ĸ������ϴ��ļ���";
			}
		}else if(now.after(format.parse("2013-01-05 00:00:00"))&&now.before(format.parse("2013-01-08 23:59:59"))){
			int jishu=0;
			for(int i = 0;i<list4.size();i++){
				if(((Map)list4.get(i)).get("id").toString().equals(userId)){
					i++;
					break;
				}
			}
			if(jishu!=1){
				outStr="����Ϊ��ӡ���ɽ����ɽ���º��ĸ������ϴ��ļ���";
			}
		}
		return outStr;
	}	
}
