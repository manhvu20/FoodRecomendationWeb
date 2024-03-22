package poly.bean;
public class MEAL {
	int maMon,idLoai,idND;
	String tenMon, hinhAnh,moTa,idCongThuc, tenND;
	public int getMaMon() {
		return maMon;
	}
	public void setMaMon(int maMon) {
		this.maMon = maMon;
	}
	public String getTenMon() {
		return tenMon;
	}
	public void setTenMon(String tenMon) {
		this.tenMon = tenMon;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public MEAL() {
		super();
	}
	
	public int getIdLoai() {
		return idLoai;
	}
	public void setIdLoai(int idLoai) {
		this.idLoai = idLoai;
	}
	public int getIdND() {
		return idND;
	}
	public void setIdND(int idND) {
		this.idND = idND;
	}
	public String getIdCongThuc() {
		return idCongThuc;
	}
	public void setIdCongThuc(String idCongThuc) {
		this.idCongThuc = idCongThuc;
	}
	
	public String getTenND() {
		return tenND;
	}
	public void setTenND(String tenND) {
		this.tenND = tenND;
	}
	
	public MEAL(int maMon, int idLoai, int idND, String tenMon, String hinhAnh, String moTa, String idCongThuc) {
		super();
		this.maMon = maMon;
		this.idLoai = idLoai;
		this.idND = idND;
		this.tenMon = tenMon;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.idCongThuc = idCongThuc;
	}
	
	
	public MEAL(int maMon, int idLoai, int idND, String tenMon, String hinhAnh, String moTa, String idCongThuc, String tenND) {
		super();
		this.maMon = maMon;
		this.idLoai = idLoai;
		this.idND = idND;
		this.tenMon = tenMon;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.idCongThuc = idCongThuc;
		this.tenND = tenND;
	}
	
	
	
	
	
	
	
	
	
}
