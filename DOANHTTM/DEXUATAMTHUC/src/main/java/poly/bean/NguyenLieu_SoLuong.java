package poly.bean;

public class NguyenLieu_SoLuong {
	int idNguyenLieu,soLuong;

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

	public NguyenLieu_SoLuong(int idNguyenLieu, int soLuong) {
		super();
		this.idNguyenLieu = idNguyenLieu;
		this.soLuong = soLuong;
	}

	public NguyenLieu_SoLuong() {
		super();
	}
	
}
