package com.poly.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;

@NamedStoredProcedureQueries({
		@NamedStoredProcedureQuery(name = "Report.FavoriteByTilte", procedureName = "spFavoriteByTilte", parameters = {
				@StoredProcedureParameter(name = "Title", type = String.class) },

				resultClasses = { Report.class })
		})
@Entity
public class Report {
	@Id
	String group;
	Long likes;
	Date newest;
	Date oldest;

	public Report(String group, Long likes, Date newest, Date oldest) {
		this.group = group;
		this.likes = likes;
		this.newest = newest;
		this.oldest = oldest;
	}

	public Report() {

	}

	/**
	 * @return the group
	 */
	public String getGroup() {
		return group;
	}

	/**
	 * @param group the group to set
	 */
	public void setGroup(String group) {
		this.group = group;
	}

	/**
	 * @return the likes
	 */
	public Long getLikes() {
		return likes;
	}

	/**
	 * @param likes the likes to set
	 */
	public void setLikes(Long likes) {
		this.likes = likes;
	}

	/**
	 * @return the newest
	 */
	public Date getNewest() {
		return newest;
	}

	/**
	 * @param newest the newest to set
	 */
	public void setNewest(Date newest) {
		this.newest = newest;
	}

	/**
	 * @return the oldest
	 */
	public Date getOldest() {
		return oldest;
	}

	/**
	 * @param oldest the oldest to set
	 */
	public void setOldest(Date oldest) {
		this.oldest = oldest;
	}

}
