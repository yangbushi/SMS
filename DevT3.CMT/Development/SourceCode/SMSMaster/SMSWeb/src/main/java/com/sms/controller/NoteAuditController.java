package com.sms.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sms.model.EvaluationPlan;
import com.sms.model.HealthcareOrganization;
import com.sms.model.Page;
import com.sms.service.EvaluationPlanService;
import com.sms.service.EvaluationRecordService;
import com.sms.service.HealthcareOrganizationService;

/**
 * 项目名称：SMSWeb  
 * 类全名:com.sms.controller.EvaluationPlanController    
 * 类描述：    
 * 创建人：Abdurahman   
 * 创建时间：2015-11-25 下午3:15:53    
 * 修改备注：    
 * @version  jdk1.7 
 * 
 * Copyright (c) 2015, rhm.victor@163.com All Rights Reserved.
 */

@Controller
public class NoteAuditController {
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Autowired
    private EvaluationRecordService evaluationRecordService;

    private Logger logger = Logger.getLogger(NoteAuditController.class);

//    @Autowired
//    private HealthcareOrganizationService healthcareOrganizationService;

    /**
     * getAll:获取所有的 EvaluationPlan. <br/> 
     * @author Abu.Tulaike 
     * @param model
     * @return 
     * @since JDK 1.6
     */
//    @RequestMapping("/jsp/list")
//    public String getAll( HttpServletRequest request,ModelMap model)
//    {
//        String pagenum=request.getParameter("pagenum");
//        
//       // CustomerService service =new CustomerServiceImpl();
////        List<Customer> list =service.getAll();
////        request.setAttribute("list", list);
////        Page page =service.getPageData(pagenum);
//        
//       // String servletName=this.getServletName();
//        Page page =evaluationPlanService.getPageData(pagenum, request.getContextPath()+"/"+"jsp/list.do");
//        
//       // request.setAttribute("page", page);
//       // List<EvaluationPlan> all = evaluationPlanService.getAll();
//        logger.info("getAll成功执行！！！");
//        model.put("list", page);
//        return "ReviewPlan";
//    }

    /**
     * del:执行删除. <br/> 
     * @author Abu.Tulaike 
     * @param id
     * @return 
     * @since JDK 1.6
     */
//    @RequestMapping("/jsp/{id}/del")
//    public String del(@PathVariable("id")
//    Integer id)
//    {
//        evaluationPlanService.delete(id);
//        logger.info("删除" + id);
//
//        return "redirect:/jsp/list.do";
//    }

    /**
     * insert:新增计划. <br/> 
     * TODO(这里描述这个方法适用条件 – 可选).<br/> 
     * @author Abu.Tulaike 
     * @param request
     * @param evaluationPlan
     * @return
     * @throws ParseException 
     * @since JDK 1.6
     */
//    @RequestMapping(value = "/jsp/add", method = RequestMethod.POST)
//    public @ResponseBody
//    String insert(HttpServletRequest request, EvaluationPlan evaluationPlan) throws ParseException
//    {
//
//        String start = request.getParameter("start");
//        String end = request.getParameter("end");
//        if (start == null || "".equals(start) || end == null || "".equals(end))
//        {
//            return "fail";
//        }
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        Date startDate = dateFormat.parse(start);
//        Date endDate = dateFormat.parse(end);
//        evaluationPlan.setStartDateTime(startDate);
//        evaluationPlan.setEndDateTime(endDate);
//
//        List<HealthcareOrganization> all = null;
//        String scope = request.getParameter("evaluateScope");
//        if(scope.equals("所有医院")) {
//        	all = healthcareOrganizationService.getAllOnlyHcoCodeName();
//        } else if (scope.equals("市属医院")) {
//        	all = healthcareOrganizationService.getAllOnlyHcoCodeNameByHcoType("市属");
//        } else if (scope.equals("社区卫生服务中心")) {
//        	all = healthcareOrganizationService.getAllOnlyHcoCodeNameByHcoType("社区");
//        }
//        if(!scope.equals("指定医院")) {
//        	String strCode = "";
//        	String strName = "";
//            for(int i = 0; i < all.size(); i++) {
//            	strCode += all.get(i).getHcoCode() + ";";
//            	strName += all.get(i).getHcoName() + ";";
//            }
//            evaluationPlan.setEvaluateOrgCode(strCode);
//            evaluationPlan.setEvaluateOrgName(strName);
//        }
//
//        
//        evaluationPlan.setStatus(1);
//        int result = evaluationPlanService.insert(evaluationPlan);
//        logger.info("执行evaluationPlan添加操作!!");
//
//        return result > 0 ? "success" : "fail";
//    }

    /**
     * findById:查看详细信息. <br/> 
     * @author Abu.Tulaike 
     * @param id
     * @param modelMap
     * @return 
     * @since JDK 1.6
     */
//    @RequestMapping("jsp/{id}/info")
//    public String findById(@PathVariable("id")
//    Integer id, ModelMap modelMap)
//    {
//        EvaluationPlan info = evaluationPlanService.selectByPrimaryKey(id);
//        modelMap.put("info", info);
//        logger.info("根据ID显示信息！" + info.toString());
//        return "Pop-viewPlan";
//    }

    @RequestMapping("jsp/{id}/auditNote")
    public String auditNote(@PathVariable("id")
    Integer id, ModelMap modelMap)
    {
    	EvaluationRecord edit = evaluationRecordService. .selectByPrimaryKey(id);
        modelMap.put("edit", edit);
        logger.info("根据ID显示信息！" + edit.toString());
        return "Pop-auditNote";
    }

    /**
     * updateStatus:更新状态. <br/> 
     * TODO(这里描述这个方法适用条件 – 可选).<br/> 
     * @author Abu.Tulaike 
     * @param id
     * @param evaluationPlan
     * @return 
     * @since JDK 1.6
     */
//    @RequestMapping("jsp/{id}/status")
//    public String updateStatus(@PathVariable("id")
//    Integer id, EvaluationPlan evaluationPlan)
//    {
//        @SuppressWarnings("unused")
//		Integer st = 4; // 状态改为4
//        evaluationPlan.setPlanId(id);
//        evaluationPlan.setStatus(4);
//        evaluationPlanService.updateByPrimaryKeySelective(evaluationPlan);
//        logger.info("状态更新成功！");
//        return "redirect:/jsp/list.do";
//    }

//    @RequestMapping("/jsp/getHCO")
//    @ResponseBody
//    public List<Object> getHCO(HttpServletRequest request, HttpServletResponse response)
//    {
//        List<HealthcareOrganization> all = healthcareOrganizationService.getAll();
//
//        List<Object> listZTree = new ArrayList<Object>();
//
//        String str = "";
//        str = "{id:'" + 1 + "', pId:'" + 0 + "', name:\"" + "所有医院" + "\" }";
//        listZTree.add(str);
//        str = "{id:'" + 11 + "', pId:'" + 1 + "', name:\"" + "市属医院" + "\" }";
//        listZTree.add(str);
//        str = "{id:'" + 12 + "', pId:'" + 1 + "', name:\"" + "社区卫生服务中心" + "\" }";
//        listZTree.add(str);
//        Integer id1 = 11001, id2 = 12001;
//        for (int i = 0; i < all.size(); i++)
//        {
//            HealthcareOrganization healthcareOrganization = all.get(i);
//
//            if (all.get(i).getHcoType().equals("市属"))
//            {
//                str = "{id:'" + id1 + "', pId:'" + 11 + "',code:\"" + healthcareOrganization.getHcoCode()
//                        + "\" , name:\"" + healthcareOrganization.getHcoName() + "\" }";
//                id1++;
//            }
//            if (all.get(i).getHcoType().equals("社区"))
//            {
//                str = "{id:'" + id2 + "', pId:'" + 12 + "',  code:\"" + healthcareOrganization.getHcoCode()
//                        + "\" ,name:\"" + healthcareOrganization.getHcoName() + "\" }";
//                id2++;
//            }
//            logger.info(str);
//            listZTree.add(str);
//        }
//        return listZTree;
//    }
//
//    @RequestMapping("/jsp/{id}/getExistHCO")
//    @ResponseBody
//    public List<Object> getExistHCO(@PathVariable("id")
//    Integer id, HttpServletRequest request, HttpServletResponse response)
//    {
//        System.out.println(id);
//        List<HealthcareOrganization> all = healthcareOrganizationService.getAll();
//        EvaluationPlan edit = evaluationPlanService.selectByPrimaryKey(id);
//        List<Object> listZTree = new ArrayList<Object>();
//        String myOrgName = edit.getEvaluateOrgName();
//        String str = "";
//        Integer id1 = 11001, id2 = 12001;
//        boolean beCity = false, beCounty = false;
//        for (int i = 0; i < all.size(); i++)
//        {
//            HealthcareOrganization healthcareOrganization = all.get(i);
//
//            if (healthcareOrganization.getHcoType().equals("市属"))
//            {
//                if (myOrgName.contains(healthcareOrganization.getHcoName()))
//                {
//                    beCity = true;
//                    str = "{id:'" + id1 + "', pId:'" + 11 + "',code:\"" + healthcareOrganization.getHcoCode()
//                            + "\" , name:\"" + healthcareOrganization.getHcoName() + "\"" + ", checked:true" + "}";
//                } else
//                {
//                    str = "{id:'" + id1 + "', pId:'" + 11 + "',code:\"" + healthcareOrganization.getHcoCode()
//                            + "\" , name:\"" + healthcareOrganization.getHcoName() + "\" }";
//                }
//                System.out.println(str);
//                id1++;
//            }
//            if (all.get(i).getHcoType().equals("社区"))
//            {
//                if (myOrgName.contains(healthcareOrganization.getHcoName()))
//                {
//                    beCounty = true;
//                    str = "{id:'" + id2 + "', pId:'" + 12 + "',  code:\"" + healthcareOrganization.getHcoCode()
//                            + "\" ,name:\"" + healthcareOrganization.getHcoName() + "\"" + ", checked:true" + "}";
//                } else
//                {
//                    str = "{id:'" + id2 + "', pId:'" + 12 + "',  code:\"" + healthcareOrganization.getHcoCode()
//                            + "\" ,name:\"" + healthcareOrganization.getHcoName() + "\" }";
//                }
//                System.out.println(str);
//                id2++;
//            }
//            // log.info(str);
//            listZTree.add(str);
//        }
//
//        str = "{id:'" + 1 + "', pId:'" + 0 + "', name:\"" + "所有医院" + "\"" + ", checked:true" + "}";
//        System.out.println(str);
//        listZTree.add(str);
//        if (beCity)
//        {
//            str = "{id:'" + 11 + "', pId:'" + 1 + "', name:\"" + "市属医院" + "\"" + ", checked:true" + "}";
//        } else
//        {
//            str = "{id:'" + 11 + "', pId:'" + 1 + "', name:\"" + "市属医院" + "\" }";
//        }
//        System.out.println(str);
//        listZTree.add(str);
//        if (beCounty)
//        {
//            str = "{id:'" + 12 + "', pId:'" + 1 + "', name:\"" + "社区卫生服务中心" + "\"" + ", checked:true" + "}";
//        } else
//        {
//            str = "{id:'" + 12 + "', pId:'" + 1 + "', name:\"" + "社区卫生服务中心" + "\" }";
//        }
//        System.out.println(str);
//        listZTree.add(str);
//
//        return listZTree;
//    }

    /**
     * update:编辑计划. <br/> 
     * TODO(根据选中的Id来回显计划).<br/> 
     * @author Abu.Tulaike 
     * @param request
     * @param evaluationPlan
     * @return
     * @throws ParseException 
     * @since JDK 1.6
     */
//    @RequestMapping(value = "/jsp/update", method = RequestMethod.POST)
//    public @ResponseBody
//    String update( HttpServletRequest request, EvaluationPlan evaluationPlan) throws ParseException
//    {
//
//        String iid = request.getParameter("iid");
//        Integer id = Integer.parseInt(iid);
//        evaluationPlan.setPlanId(id);
//        System.out.println(id+ "+++++++++++++++++");
//        String start = request.getParameter("start");
//        String end = request.getParameter("end");
//        if (start == null || "".equals(start) || end == null || "".equals(end))
//        {
//            return "fail";
//        }
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        Date startDate = dateFormat.parse(start);
//        Date endDate = dateFormat.parse(end);
//        evaluationPlan.setStartDateTime(startDate);
//        evaluationPlan.setEndDateTime(endDate);
//
//        List<HealthcareOrganization> all = null;
//        String scope = request.getParameter("evaluateScope");
//        if(scope.equals("所有医院")) {
//        	all = healthcareOrganizationService.getAllOnlyHcoCodeName();
//        } else if (scope.equals("市属医院")) {
//        	all = healthcareOrganizationService.getAllOnlyHcoCodeNameByHcoType("市属");
//        } else if (scope.equals("社区卫生服务中心")) {
//        	all = healthcareOrganizationService.getAllOnlyHcoCodeNameByHcoType("社区");
//        }
//        if(!scope.equals("指定医院")) {
//        	String strCode = "";
//        	String strName = "";
//            for(int i = 0; i < all.size(); i++) {
//            	strCode += all.get(i).getHcoCode() + ";";
//            	strName += all.get(i).getHcoName() + ";";
//            }
//            evaluationPlan.setEvaluateOrgCode(strCode);
//            evaluationPlan.setEvaluateOrgName(strName);
//        }
//        
//        evaluationPlan.setStatus(1);
//        int result = evaluationPlanService.update(evaluationPlan);
//        logger.info("执行evaluationPlan添加操作!!---------------------->>" + result);
//
//        return result > 0 ? "success" : "fail";
//    }
}
