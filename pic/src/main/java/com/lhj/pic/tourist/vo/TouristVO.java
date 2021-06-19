package com.lhj.pic.tourist.vo;

import com.lhj.pic.user.vo.UserVO;

public class TouristVO extends UserVO{

	/* tourist */
	private String tourist_idx;
	private String tourist_name;
	private String tourist_address;
	private String category_code;
	private String category_name;
	
	/* tourist_picture */
	private String tourist_picture_idx;
	private String tourist_picture_uid;
	private String file_name;
	private String file_ext;
	private String file_physical_path;
	private String reg_date;
	
	/* user_pic_history */
	private String pic_date;
	private String pic_yn;
	
	public String getTourist_idx() {
		return tourist_idx;
	}
	public void setTourist_idx(String tourist_idx) {
		this.tourist_idx = tourist_idx;
	}
	public String getTourist_name() {
		return tourist_name;
	}
	public void setTourist_name(String tourist_name) {
		this.tourist_name = tourist_name;
	}
	public String getTourist_address() {
		return tourist_address;
	}
	public void setTourist_address(String tourist_address) {
		this.tourist_address = tourist_address;
	}
	public String getCategory_code() {
		return category_code;
	}
	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getTourist_picture_idx() {
		return tourist_picture_idx;
	}
	public void setTourist_picture_idx(String tourist_picture_idx) {
		this.tourist_picture_idx = tourist_picture_idx;
	}
	public String getTourist_picture_uid() {
		return tourist_picture_uid;
	}
	public void setTourist_picture_uid(String tourist_picture_uid) {
		this.tourist_picture_uid = tourist_picture_uid;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_ext() {
		return file_ext;
	}
	public void setFile_ext(String file_ext) {
		this.file_ext = file_ext;
	}
	public String getFile_physical_path() {
		return file_physical_path;
	}
	public void setFile_physical_path(String file_physical_path) {
		this.file_physical_path = file_physical_path;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getPic_date() {
		return pic_date;
	}
	public void setPic_date(String pic_date) {
		this.pic_date = pic_date;
	}
	public String getPic_yn() {
		return pic_yn;
	}
	public void setPic_yn(String pic_yn) {
		this.pic_yn = pic_yn;
	}

}
