package member;

public class member {
	private String id="";
	private String pwd="";
	private String email="";
	private String phone="";
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		if(id ==null) {
			this.id="";
		}else {
			this.id = id;
		}
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		if(pwd==null) {
			this.pwd="";
		}else {
			this.pwd = pwd;

		}
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		if(email==null) {
			this.email="";
		}else {
			this.email = email;
		}
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		if(phone==null) {
			this.phone="";
		}else {
			this.phone = phone;
		}
	}
}
