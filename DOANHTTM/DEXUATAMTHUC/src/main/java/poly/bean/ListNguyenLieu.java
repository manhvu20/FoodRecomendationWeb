package poly.bean;

import java.util.ArrayList;

public class ListNguyenLieu {
	private ArrayList<NguyenLieu_SoLuong> CT_NguyenLieuList;
	private ArrayList<CT_BUOCLAM> CT_BuocLam;

	public ArrayList<NguyenLieu_SoLuong> getCT_NguyenLieuList() {
		return CT_NguyenLieuList;
	}
	
	public ArrayList<CT_BUOCLAM> getCT_BuocLam() {
		return CT_BuocLam;
	}

	public void setCT_BuocLam(ArrayList<CT_BUOCLAM> cT_BuocLam) {
		CT_BuocLam = cT_BuocLam;
	}

	public void setCT_NguyenLieuList(ArrayList<NguyenLieu_SoLuong> cT_NguyenLieuList) {
		CT_NguyenLieuList = cT_NguyenLieuList;
	}

	

	public ListNguyenLieu() {
		super();
	}

	public ListNguyenLieu(ArrayList<NguyenLieu_SoLuong> cT_NguyenLieuList, ArrayList<CT_BUOCLAM> cT_BuocLam) {
		super();
		CT_NguyenLieuList = cT_NguyenLieuList;
		CT_BuocLam = cT_BuocLam;
	}
	
	
}
