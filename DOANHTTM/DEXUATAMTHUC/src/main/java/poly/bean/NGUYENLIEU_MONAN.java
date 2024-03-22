package poly.bean;

public class NGUYENLIEU_MONAN {
	int idNguyenLieu,soLuong;
	String tenNguyenLieu, tenDonVi;
	public int getIdNguyenLieu() {
		return idNguyenLieu;
	}
	public void setIdNguyenLieu(int idNguyenLieu) {
		this.idNguyenLieu = idNguyenLieu;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public String getTenNguyenLieu() {
		return tenNguyenLieu;
	}
	public void setTenNguyenLieu(String tenNguyenLieu) {
		this.tenNguyenLieu = tenNguyenLieu;
	}
	public String getTenDonVi() {
		return tenDonVi;
	}
	public void setTenDonVi(String tenDonVi) {
		this.tenDonVi = tenDonVi;
	}
	
	public NGUYENLIEU_MONAN() {
		super();
	}
	public NGUYENLIEU_MONAN(int idNguyenLieu, int soLuong, String tenNguyenLieu, String tenDonVi) {
		super();
		this.idNguyenLieu = idNguyenLieu;
		this.soLuong = soLuong;
		this.tenNguyenLieu = tenNguyenLieu;
		this.tenDonVi = tenDonVi;
	}
	
}
