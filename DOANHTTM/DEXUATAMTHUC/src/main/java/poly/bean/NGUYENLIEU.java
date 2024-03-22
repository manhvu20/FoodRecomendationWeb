package poly.bean;

public class NGUYENLIEU {
	String tenNguyenLieu,tenDonVi;
	int maNguyenLieu,maDonVi;
	
	public String getTenNguyenLieu() {
		return tenNguyenLieu;
	}
	public void setTenNguyenLieu(String tenNguyenLieu) {
		this.tenNguyenLieu = tenNguyenLieu;
	}
	public int getMaNguyenLieu() {
		return maNguyenLieu;
	}
	public void setMaNguyenLieu(int maNguyenLieu) {
		this.maNguyenLieu = maNguyenLieu;
	}
	public int getMaDonVi() {
		return maDonVi;
	}
	public void setMaDonVi(int maDonVi) {
		this.maDonVi = maDonVi;
	}
	
	public String getTenDonVi() {
		return tenDonVi;
	}
	public void setTenDonVi(String tenDonVi) {
		this.tenDonVi = tenDonVi;
	}
	public NGUYENLIEU(String tenNguyenLieu, String tenDonVi, int maNguyenLieu, int maDonVi) {
		super();
		this.tenNguyenLieu = tenNguyenLieu;
		this.tenDonVi = tenDonVi;
		this.maNguyenLieu = maNguyenLieu;
		this.maDonVi = maDonVi;
	}
	

}
