package mvcpackage.model.bean;

public class Employee {
	    protected int subjectID;
	    protected String description;
	    protected int credit;
	 
	    
public Employee() {}

public Employee(String description, int credit) {
	        this.description = description;
	        this.credit = credit;
	        
	    }
public Employee(int subjectID, String description, int credit) {
	        
	        this.subjectID = subjectID;
	        this.description = description;
	        this.credit = credit;
	        
	    }

public int getEid() {
	        return subjectID;
	    }
public void setEid(int subjectID) {
	        this.subjectID = subjectID;
	    }
public String getEname() {
	        return description;
	    }
public void setEname(String description) {
	        this.description = description;
	    }
public int getEage() {
	        return credit;
	    }
public void setEage(int credit) {
	        this.credit = credit;
	    }
	    
}

