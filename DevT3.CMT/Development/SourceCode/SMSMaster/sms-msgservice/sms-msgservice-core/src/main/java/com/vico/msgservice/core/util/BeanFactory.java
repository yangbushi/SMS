package com.vico.msgservice.core.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class BeanFactory {
	private static BeanFactory factory = null;
	public static BeanFactory getInstance(){
		if(factory == null){
			factory = new BeanFactory();
		}
		return factory;
	}
	
	public Object getBean(String beanName){
		//ApplicationContext context = new ClassPathXmlApplicationContext("service-spring.xml"); 
		//String[] d= context.getBeanDefinitionNames();
		//EvaluationPlanService smsMsgBizInte = (EvaluationPlanService)context.getBean("evaluationPlanServiceImpl");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("service-spring.xml"); 
		return context.getBean(beanName);
	}
}
