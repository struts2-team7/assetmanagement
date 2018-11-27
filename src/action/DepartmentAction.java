package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.DaoImpl;
import dao.IDao;
import lombok.Getter;
import model.Asset;
import model.Department;

public class DepartmentAction extends ActionSupport implements ModelDriven<Asset>{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IDao<Department, Long> departmentDAO = new DaoImpl<>();
	
	
    private Map<String, Boolean> actives;
    
	private Department department = new Department();
	
	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	@Getter
	private List<Department> departments;
	
	@Override
	public Asset getModel() {
		return null;
	}
	
	public String list() {
		departments = departmentDAO.list(Department.class);
		return SUCCESS;
	}
	
	public String saveDepartment() {
		System.out.println(department);
	    departmentDAO.saveOrUpdate(department);
	    return SUCCESS;
	}
	
	public String deleteDepartment() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
	    departmentDAO.delete(Department.class, Long.parseLong(request.getParameter("id")));
	    return SUCCESS;
	}
	
	public String editDepartment() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		department = departmentDAO.get(Department.class, Long.parseLong(request.getParameter("id")));
		departmentDAO.saveOrUpdate(department);
		return SUCCESS;
	}
	public String addNew() throws Exception {
		return SUCCESS;
	}
	
	public Map<String, Boolean> getActives() {
		actives = new HashMap<>();
		actives.put("Hoạt động", true);
		actives.put("Tạm dừng", false);
		return actives;
	}

	public void setActives(Map<String, Boolean> actives) {
		this.actives = actives;
	}

}
