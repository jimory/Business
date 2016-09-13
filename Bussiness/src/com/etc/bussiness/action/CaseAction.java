package com.etc.bussiness.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.etc.bussiness.biz.CaseBiz;
import com.etc.bussiness.entity.Cases;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Scope("prototype")
@Controller
public class CaseAction extends ActionSupport implements ModelDriven<Cases> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1323374429134410574L;
	/*
	ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	CaseBiz caseBiz=(CaseBiz) ac.getBean("caseBiz");*/
	
	@Resource
	private CaseBiz caseBiz;

	private Cases cases=new Cases();


	private int pageNum;
	private int pageSize;
	private String keyword;
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	//���ӣ���ͼƬ���ϴ�
	public String doAdd() throws IOException{
		if(img!=null){
		if(imgContentType.contains("image")){
			upload();
		}
		cases.setCaseImage(imgFileName);
	    caseBiz.addCase(cases);

		return "add";
		}
		cases.setCaseImage(null);
	    caseBiz.addCase(cases);

		return "add";
		
	}
	//�ϴ�ͼƬ���޸�ͼƬ������
	private void upload() throws IOException{
		String caseImage=ServletActionContext.getServletContext().getRealPath("/back/upload");
		File saveDir=new File(caseImage);
		if(!saveDir.exists()){
			saveDir.mkdirs();
		}
		changFileName();//�������ļ�
		// ���ļ�д�������Ӳ��
		FileUtils.copyFile(img, new File(saveDir,imgFileName));
	}
	//��ҳ��ѯ
	public String doSearch(){
		List<Cases> casesList=caseBiz.getCaseByPaging(pageNum, pageSize);
		ActionContext.getContext().put("casesList", casesList);
		ActionContext.getContext().put("pageCount", caseBiz.getPageCount(pageSize));
		return "list";
	}
	//������ѯ
	public String doSearchSome(){
		List<Cases> casesList=caseBiz.getCaseByPaging(pageNum, pageSize, keyword);
		ActionContext.getContext().put("casesList", casesList);
		ActionContext.getContext().put("pageCount", caseBiz.getPageCount(pageSize, keyword));	
		return "listSome";
	}
	//��̨��ѯ
	public String doBackSearch(){
		List<Cases> casesList=caseBiz.getCaseByPaging(pageNum, pageSize);
		ActionContext.getContext().put("casesList", casesList);
		ActionContext.getContext().put("pageCount", caseBiz.getPageCount(pageSize));		
		return "backList";
	}
	//һ���Ĳ�ѯ
	public String toOne(){
		Cases c=caseBiz.getCaseById(cases.getCaseId());
		ActionContext.getContext().getValueStack().push(c);
		return "toOne";
	}
	//�޸ĵĲ�ѯ
	public String toEdit(){
		Cases c = caseBiz.getCaseById(cases.getCaseId());

		ActionContext.getContext().getValueStack().push(c);
		return "edit";
	}
    //�޸�
	public String doEdit() throws IOException{
		Cases b = caseBiz.getCaseById(cases.getCaseId());
		if(img!=null){
		
		b.setCaseTitle(cases.getCaseTitle());
		b.setCaseDetail(cases.getCaseDetail());
		
		if(imgContentType.contains("image")){
			upload();
		}
		b.setCaseImage(imgFileName);
		
		caseBiz.updateCase(b);
		return "update";
		}else{
			b.setCaseTitle(cases.getCaseTitle());
			b.setCaseDetail(cases.getCaseDetail());
			b.setCaseImage(cases.getCaseImage());
		caseBiz.updateCase(b);
		return "update";
		}
		
	}
	//ɾ��
	public String doDelete(){
		
		caseBiz.deleteCase(cases.getCaseId());
		return "delete";
	}
	@Override
	public Cases getModel() {
		// TODO Auto-generated method stub
		return cases;
	}


	private File img;
	private String imgFileName;
	private String imgContentType;
	public File getImg() {
		return img;
	}
	public void setImg(File img) {
		this.img = img;
	}
	public String getImgFileName() {
		return imgFileName;
	}
	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}
	public String getImgContentType() {
		return imgContentType;
	}
	public void setImgContentType(String imgContentType) {
		this.imgContentType = imgContentType;
	}
	private void changFileName(){
		/*//��ͼƬ��������
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyyMMDDHHMMSS");//��ʽ��ʱ����� 
		Date date=new Date();;//ȡ�õ�ǰʱ�䣬Date()��java.util����ģ�����Ϊ��ʵ���� 
		String name=dateFormat.format(date);	
		int i=imgFileName.lastIndexOf(".");//ԭ�����ﵹ����һ��"."������ 
		String ext=imgFileName.substring(i+1);//ȡ�ú�׺����"."������ַ� 
		imgFileName=name+"."+ext;//ƴ�ն��� 
		 */
		String ext = imgFileName.substring(imgFileName.lastIndexOf("."));
		imgFileName = System.currentTimeMillis() + ""
				+ (int) (Math.random() * 10000) + ext;
	}
}


