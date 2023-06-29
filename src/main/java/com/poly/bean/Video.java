package com.poly.bean;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.NamedNativeQueries;
import org.hibernate.annotations.NamedNativeQuery;
@NamedNativeQueries({
	@NamedNativeQuery(name = "Report.random10", query = "Select top 10 * from Videos order by newid()", resultClass = Video.class) })
@NamedQueries({
	@NamedQuery(name = "Video.findByKeyword", query = "SELECT DISTINCT o.video FROM Favorite o"
			+ " WHERE o.video.title LIKE :keyword"),
	@NamedQuery(name = "Video.findByUser", query = "SELECT o.video FROM Favorite o" + " WHERE o.user.id=:id"),
	@NamedQuery(name = "Video.findInRange", query = "Select distinct o.video from Favorite o where o.likeDate between :min and :max")

})
@Entity
@Table(name = "Videos")
public class Video {
	@Id
	String id;
	String title;
	String poster;
	String description;
	Integer views = 0;
	Boolean active = true;
	@OneToMany(mappedBy = "video")
	List<Favorite> favorites;
	@OneToMany(mappedBy = "video")
	List<Share> share;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getViews() {
		return views;
	}
	public void setViews(Integer views) {
		this.views = views;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	public List<Favorite> getFavorites() {
		return favorites;
	}
	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}
	public List<Share> getShare() {
		return share;
	}
	public void setShare(List<Share> share) {
		this.share = share;
	}
	
}
