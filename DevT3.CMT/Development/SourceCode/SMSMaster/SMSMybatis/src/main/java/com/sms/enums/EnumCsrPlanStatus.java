package com.sms.enums;

public enum EnumCsrPlanStatus {
	UnKnown("未知", 0), UnExecute("待执行", 1), Executing("执行中", 2), Complted("已完成",
			3), Canceled("已取消", 4);
	// 成员变量
	protected String name;
	protected int value;

	// 构造方法
	private EnumCsrPlanStatus(String name, int value) {
		this.name = name;
		this.value = value;
	}

	// 覆盖方法
	@Override
	public String toString() {
		return this.value + "_" + this.name;
	}

	public String getName() {
		return name;
	}

	public int getValue() {
		return value;
	}
	
    public static String getName(int value) {
        for (EnumCsrPlanStatus c : EnumCsrPlanStatus.values()) {
            if (c.getValue() == value) {
                return c.name;
            }
        }
        return null;
    }
    
    public static EnumCsrPlanStatus getEnum(int value) {
        for (EnumCsrPlanStatus c : EnumCsrPlanStatus.values()) {
            if (c.getValue() == value) {
                return c;
            }
        }
        return EnumCsrPlanStatus.UnKnown;
    }
    
    
    

	
}
