package com.agileai.hr.module.information.handler;

import com.agileai.domain.DataParam;
import com.agileai.domain.DataRow;
import com.agileai.hotweb.controller.core.SimpleHandler;
import com.agileai.hotweb.renders.LocalRenderer;
import com.agileai.hotweb.renders.ViewRenderer;
import com.agileai.hr.module.information.service.HrEmployeeManage;

/**
 * generated by miscdp
 */
public class SalarySetHandler extends SimpleHandler{
	public SalarySetHandler(){
		super();
	}
	
	public ViewRenderer prepareDisplay(DataParam param) {
		DataRow dataRow = getService().getSalaryLimitRecord();
		this.setAttribute("salaryLimit",dataRow.get("TYPE_NAME"));
		this.setAttributes(param);
		this.processPageAttributes(param);
		return new LocalRenderer(getPage());
	}
	
	public ViewRenderer doSaveAction(DataParam param){
		getService().updateSalaryLimitRecord(param);
		return prepareDisplay(param);
	}
	
	protected void processPageAttributes(DataParam param){
		
	}
	
	protected HrEmployeeManage getService() {
		return (HrEmployeeManage) this.lookupService(HrEmployeeManage.class);
	}
}
