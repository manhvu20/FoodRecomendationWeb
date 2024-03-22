package poly.bean;

public class DL_YEUTHICH {
	int ID_ND, IDMON, HANHDONG, TRANGTHAI;
	
	public int getID_ND() {
		return ID_ND;
	}

	public void setID_ND(int iD_ND) {
		ID_ND = iD_ND;
	}

	public int getIDMON() {
		return IDMON;
	}

	public void setIDMON(int iDMON) {
		IDMON = iDMON;
	}

	public int getHANHDONG() {
		return HANHDONG;
	}

	public void setHANHDONG(int hANHDONG) {
		HANHDONG = hANHDONG;
	}

	public int getTRANGTHAI() {
		return TRANGTHAI;
	}

	public void setTRANGTHAI(int tRANGTHAI) {
		TRANGTHAI = tRANGTHAI;
	}

	public DL_YEUTHICH() {
		super();
	}

	public DL_YEUTHICH(int iD_ND, int iDMON, int hANHDONG, int tRANGTHAI) {
		super();
		ID_ND = iD_ND;
		IDMON = iDMON;
		HANHDONG = hANHDONG;
		TRANGTHAI = tRANGTHAI;
	}
	
}
