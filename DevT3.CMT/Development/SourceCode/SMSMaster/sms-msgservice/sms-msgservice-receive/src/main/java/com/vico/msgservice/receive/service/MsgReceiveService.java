package com.vico.msgservice.receive.service;

import org.apache.log4j.Logger;


public class MsgReceiveService extends Thread {
	private static final Logger logger = Logger
			.getLogger(MsgReceiveService.class);
	
	
	private boolean isSuspend = false;  
    private String control = ""; 
    public void setIsSuspend(boolean suspend) {  
        if (!suspend) {  
            synchronized (control) {  
                control.notifyAll();  
            }  
        }  
        this.isSuspend = suspend;  
    }  
    public boolean getIsSuspend() {  
        return this.isSuspend;
    }  
    

	
	@Override
	public void start() {
		super.start();
	}
	


	@Override
	public void run() {

		while(true){
			try {
				synchronized (control) {  
	                if (isSuspend) {  
	                    try {  
	                        control.wait();  
	                    } catch (InterruptedException e) {  
	                        e.printStackTrace();  
	                    }  
	                }  
	            }  
	            Thread.sleep(1000);
	            
	       
				
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		

	}

}
