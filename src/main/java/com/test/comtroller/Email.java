package com.test.comtroller;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * 
 * @author H__D
 * @date 2016年12月6日 下午7:01:27
 *
 */
public class Email {

    /**
     * 使用Transport 非静态方法 发送邮件
     * 连接163服务，给QQ邮箱发邮件
     */
    public static void main(String[] args) throws Exception {

        // 属性
        Properties properties = new Properties();
        // 设置认证属性
        properties.setProperty("mail.smtp.auth", "true");
        // 设置通信协议
        properties.setProperty("mail.transport.protocol", "smtp");
        // 邮件环境信息
        Session session = Session.getInstance(properties);
        // 调试,打印信息
        session.setDebug(true);

        // 邮件
        Message message = new MimeMessage(session);
        // 主题
        message.setSubject("test message");
        // 发送人
        message.setFrom(new InternetAddress("930408909@qq.com"));
        // 内容
        message.setText("this is content");

        // 邮件传输对象
        Transport transport = session.getTransport();
        // 传输连接：host，port，user，pass/主机，端口，用户名，密码
        transport.connect("smtp.sinorail.com", 25000, "930408909@qq.com", "qwer1234");
        // 发送邮件
        transport.sendMessage(message, new Address[] { new InternetAddress("1786401885@qq.com") });
        System.out.println("发送成功");
        // 关闭连接
        transport.close();
    }
}