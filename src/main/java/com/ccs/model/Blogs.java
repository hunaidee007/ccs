package com.ccs.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;

/**
 * Person entity
 * 
 * @author DevCrumb.com
 */
@Entity
public class Blogs {

	@Id
	@GeneratedValue
	private Long id;
	private String title;
	private Date createdDate;
	@Column(length = 6001)
	private String blogText;
	@Column(length = 6001)
	private String summaryText;
	private String author;
	private String imagePath;

	private String url;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Blogs() {
	}

	public String getSummaryText() {
		return summaryText;
	}

	public void setSummaryText(String summaryText) {
		this.summaryText = summaryText;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getBlogText() {
		return blogText;
	}

	public void setBlogText(String blogText) {
		this.blogText = blogText;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Blogs(Long id, String title, Date createdDate, String blogText, String author, String imagePath) {
		super();
		this.id = id;
		this.title = title;
		this.createdDate = createdDate;
		this.blogText = blogText;
		this.author = author;
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "blogs [id=" + id + ", title=" + title + ", createdDate=" + createdDate + ", blogText=" + blogText
				+ ", author=" + author + ", imagePath=" + imagePath + "]";
	}

}
