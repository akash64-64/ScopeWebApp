package com.scopeWeb.scopeWebApp.Model;

import jakarta.persistence.*;

@Entity
@Table(name="Courses")
public class courseModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int courseid;
	
	private String coursename;
	
	private String courseduration;
	
	private int coursefees;

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getCourseduration() {
		return courseduration;
	}

	public void setCourseduration(String courseduration) {
		this.courseduration = courseduration;
	}

	public int getCoursefees() {
		return coursefees;
	}

	public void setCoursefees(int coursefees) {
		this.coursefees = coursefees;
	}

	@Override
	public String toString() {
		return "courseModel [courseid=" + courseid + ", coursename=" + coursename + ", courseduration=" + courseduration
				+ ", coursefees=" + coursefees + "]";
	}
	
	
	
}
