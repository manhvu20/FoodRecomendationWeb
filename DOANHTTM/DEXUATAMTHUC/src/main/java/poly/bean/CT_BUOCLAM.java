package poly.bean;

public class CT_BUOCLAM {
	int buocLam;
	
	String moTa,tenBuoc;
	public int getBuocLam() {
		return buocLam;
	}
	public void setBuocLam(int buocLam) {
		this.buocLam = buocLam;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
	public CT_BUOCLAM() {
		super();
	}
	
	public String getTenBuoc() {
		return tenBuoc;
	}
	public void setTenBuoc(String tenBuoc) {
		this.tenBuoc = tenBuoc;
	}
	
	public CT_BUOCLAM(int buocLam, String moTa, String tenBuoc) {
		super();
		this.buocLam = buocLam;
		this.moTa = moTa;
		this.tenBuoc = tenBuoc;
	}
	public CT_BUOCLAM(String moTa, String tenBuoc) {
		super();
		this.moTa = moTa;
		this.tenBuoc = tenBuoc;
	}
	
}
