package com.ccs.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailMail {
	private MailSender mailSender;

	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}

	public void sendMail(String from, String to, String subject, String msg) throws MessagingException {

		//SimpleMailMessage message = new SimpleMailMessage();
		
		MimeMessage message = ((JavaMailSenderImpl)mailSender).createMimeMessage();
		
		// use the true flag to indicate you need a multipart message
		MimeMessageHelper helper = new MimeMessageHelper(message, true);
		helper.setTo(to);
		helper.setFrom(from);
		helper.setSubject(subject);
		
		// use the true flag to indicate the text included is HTML
		helper.setText(msg, true);

		/*message.setFrom(from);
		message.setTo(to);
		message.setSubject(subject);
		message.setText(msg);
		mailSender.send(message);*/
		
		((JavaMailSenderImpl)mailSender).send(message);
	}
}