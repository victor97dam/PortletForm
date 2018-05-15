package com.test;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class NewPortlet
 */
public class Student extends MVCPortlet {
	
	public void addStudent(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException, PortletException {
		
		String name = ParamUtil.getString(actionRequest, "name");
		int age = ParamUtil.getInteger(actionRequest,  "age");
		String fatherName = ParamUtil.getString(actionRequest, "father");
		String motherName = ParamUtil.getString(actionRequest, "mother");
		
		String respuesta = name.toString()+age+fatherName+motherName;
		
		actionResponse.setRenderParameter("accion", respuesta);
	}
 

}
