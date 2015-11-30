package com.vico.msgservice.receive.ui;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

import com.vico.msgservice.receive.service.MsgReceiveService;





@SuppressWarnings("serial")
public class MsgReceiveFrame extends JFrame implements ActionListener{
	private MsgReceiveService smsMsgService = new MsgReceiveService();
	private JButton btnStart = new JButton("启动");
	private JButton btnStop = new JButton("暂停");
	private Boolean isHasStart = false;
	
	public MsgReceiveFrame(){ 
		this.setTitle("短信接受服务");
		this.setLayout(null);
		this.setBounds(600, 300, 270,110);
		
		btnStart.setSize(90, 40);
		btnStop.setSize(90, 40);
		btnStart.setLocation(30, 20);
		btnStop.setLocation(140, 20);
		this.add(btnStart);
		this.add(btnStop);
		this.setVisible(true);
		this.setResizable(false);
		this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		btnStart.addActionListener(this);
		btnStop.addActionListener(this);
		btnStop.setEnabled(false);
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource().equals(btnStart)){
		
			if(!isHasStart){
				smsMsgService.start();
				isHasStart = true;
			}
			else {
				smsMsgService.setIsSuspend(false);
			}
			
			btnStart.setText("恢复");
			btnStop.setEnabled(true);
			btnStart.setEnabled(false);
		}else{
			smsMsgService.setIsSuspend(true);
			btnStart.setEnabled(true);
			btnStop.setEnabled(false);
		}
	}
}
