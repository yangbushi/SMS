package com.sms.enums;

import java.util.ArrayList;
import java.util.List;

public enum EnumVisitType {
	 UnKnown("未知","0"),NormalClinic("普通门诊", "1"), EmergencyTreatment("急诊", "2"), PhysicalExam("体检", "3"), InHospital("住院", "4");
     // 成员变量
     private String name;
     private String value;

     // 构造方法
     private EnumVisitType(String name, String value) {
         this.name = name;
         this.value = value;
     }

     public static String getName(String value) {
         for (EnumVisitType c : EnumVisitType.values()) {
             if (c.getValue() == value) {
                 return c.name;
             }
         }
         return null;
     }
 
     public static EnumVisitType getEnum(String value) {
         for (EnumVisitType c : EnumVisitType.values()) {
             if (c.getValue() == value) {
                 return c;
             }
         }
         return EnumVisitType.UnKnown;
     }
     /**
      * 获取门诊的类型
      * @return
      */
     public static List<EnumVisitType> getClinicEnumVisitTypes(){
    	 @SuppressWarnings("serial")
		List<EnumVisitType> types = new ArrayList<EnumVisitType>(){
    	 };
    	 types.add(EnumVisitType.NormalClinic);
    	 types.add(EnumVisitType.EmergencyTreatment);
    	 types.add(EnumVisitType.PhysicalExam);
    	 return types;
     }
     
     // 覆盖方法
     @Override
     public String toString() {
         return this.value + "_" + this.name;
     }
     
     public String getName(){
    	 return name;
     }
     
     public String getValue(){
    	 return value;
     }

}
