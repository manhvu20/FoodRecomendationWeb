package poly.bean;

public class USER {
	int maUser;
	String tenUser, email,password;
	public int getMaUser() {
		return maUser;
	}
	public void setMaUser(int maUser) {
		this.maUser = maUser;
	}
	public String getTenUser() {
		return tenUser;
	}
	public void setTenUser(String tenUser) {
		this.tenUser = tenUser;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public USER() {
		super();
	}
	public USER(int maUser, String tenUser, String email, String password) {
		
		this.maUser = maUser;
		this.tenUser = tenUser;
		this.email = email;
		this.password = password;
		
	}
	public USER(String tenUser, String email, String password) {
		super();
		this.tenUser = tenUser;
		this.email = email;
		this.password = password;
	}
	
	
	
}
