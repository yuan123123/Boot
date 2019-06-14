package com.test.comtroller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class testtest {
	public static void main(String[] args) {
		String ordertime1 = "2019-05-07 15:11:06.0";
		//最新的时间
		ordertime1=ordertime1.substring(0,ordertime1.length()-2);
		System.out.println(ordertime1+"pname");
		//七天前的时间
		String ordertime7="";
		SimpleDateFormat format1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date ordertime1Date = format1.parse(ordertime1);
			Date ordertime7Date=ordertime1Date;
			int b=0;
			Boolean a=true;
			while (a==true) {
				
				if(!ordertime7.equals("")){
					ordertime7Date = format1.parse(ordertime7);
				}
				if(ordertime7.equals("")){
					ordertime7 = format1.format(new Date(ordertime1Date.getTime() - (long)7 * 24 * 60 * 60 * 1000));
					System.out.println(ordertime7+"七天前");
				}else{
					ordertime7 = format1.format(new Date(ordertime7Date.getTime() - (long)7 * 24 * 60 * 60 * 1000));
					System.out.println(ordertime7+"七天前1");
				}
				b++;
				if(b==5){
					a=false;
				}
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}   
}
