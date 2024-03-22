package poly.bean;

public class LOAIMON {
	int maLoai,soLuong;
	String tenLoai;
	
	public int getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(int maLoai) {
		this.maLoai = maLoai;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	public LOAIMON(int maLoai, String tenLoai) {
		super();
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
	}
	public LOAIMON() {
		super();
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public LOAIMON(int maLoai, int soLuong, String tenLoai) {
		super();
		this.maLoai = maLoai;
		this.soLuong = soLuong;
		this.tenLoai = tenLoai;
	}
	
	
}
