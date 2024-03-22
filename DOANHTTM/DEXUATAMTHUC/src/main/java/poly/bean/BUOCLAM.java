package poly.bean;

public class BUOCLAM {
	int idStep;
	String nameStep;
	public int getIdStep() {
		return idStep;
	}
	public void setIdStep(int idStep) {
		this.idStep = idStep;
	}
	public String getNameStep() {
		return nameStep;
	}
	public void setNameStep(String nameStep) {
		this.nameStep = nameStep;
	}
	public BUOCLAM(int idStep, String nameStep) {
		super();
		this.idStep = idStep;
		this.nameStep = nameStep;
	}
	public BUOCLAM() {
		super();
	}
	
}
