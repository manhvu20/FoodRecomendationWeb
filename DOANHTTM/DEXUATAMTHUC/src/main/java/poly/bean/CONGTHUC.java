package poly.bean;




public class CONGTHUC {
	int maCongThuc;
	String doKho;
	TIME time;	
	public int getMaCongThuc() {
		return maCongThuc;
	}
	public void setMaCongThuc(int maCongThuc) {
		this.maCongThuc = maCongThuc;
	}
	public String getDoKho() {
		return doKho;
	}
	public void setDoKho(String doKho) {
		this.doKho = doKho;
	}
	
	
	
	public TIME getTime() {
		return time;
	}
	public void setTime(TIME time) {
		this.time = time;
	}
	public CONGTHUC() {
		super();
	}
	public CONGTHUC(int maCongThuc, String doKho, TIME time) {
		super();
		this.maCongThuc = maCongThuc;
		this.doKho = doKho;
		this.time = time;
	}
	public CONGTHUC(String doKho, TIME time) {
		super();
		this.doKho = doKho;
		this.time = time;
	}
	
	
	
}
