package com.electric.domain;

public class HouseVO {
	String house_number;
	String sex;
	int age;
	String region;
	String marriage;
	String job;
	String email;
	String tel;
	int doubt;
	String name;
	String eType;
	

	public String geteType() {
		return eType;
	}

	public void seteType(String eType) {
		this.eType = eType;
	}

	public String getHouse_number() {
		return house_number;
	}

	public void setHouse_number(String house_number) {
		this.house_number = house_number;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getDoubt() {
		return doubt;
	}

	public void setDoubt(int doubt) {
		this.doubt = doubt;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "HouseVO [house_number=" + house_number + ", sex=" + sex + ", age=" + age + ", region=" + region
				+ ", marriage=" + marriage + ", job=" + job + ", email=" + email + ", tel=" + tel + ", doubt=" + doubt
				+ ", name=" + name + "]";
	}

}
