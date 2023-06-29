package com.poly.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "Share", uniqueConstraints = {
		@UniqueConstraint(columnNames = {"VideoId","UserId"})
})
public class Share {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	@ManyToOne  @JoinColumn(name = "VideoId")
	Video video;
	@ManyToOne  @JoinColumn(name = "UserId")
	User user;
	String email;
	String emailr;
	@Temporal(TemporalType.DATE)
	Date ShareDate = new Date();
	public Long getId() {
		return id;
	}
	public User getUser() {
		return user;
	}
	public Video getVideo() {
		return video;
	}
	public String getEmail() {
		return email;
	}
	public String getEmailr() {
		return emailr;
	}
	public Date getShareDate() {
		return ShareDate;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setEmailr(String emailr) {
		this.emailr = emailr;
	}
	public void setShareDate(Date shareDate) {
		ShareDate = shareDate;
	}


	
}
