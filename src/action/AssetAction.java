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
import model.Country;
import model.Department;
import model.Producer;

public class AssetAction extends ActionSupport implements ModelDriven<Asset>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IDao<Asset, Long> assetDao = new DaoImpl<>();
	IDao<Department, Long> departmentDao = new DaoImpl<>();
	IDao<Country, Long> countryDAO = new DaoImpl<>();
	IDao<Producer, Long> producerDAO = new DaoImpl<>();
	
	private Asset asset = new Asset();
	
	private Department department = new Department();
	
	private Map<String, Integer> categories;
	
	public Asset getAsset() {
		return asset;
	}

	public void setAsset(Asset asset) {
		this.asset = asset;
	}
	@Getter
	private List<Asset> assets;

	private List<Producer> producers;
	
	private List<Country> countries;
	
	@Override
	public Asset getModel() {
		// TODO Auto-generated method stub
		return asset;
	}
	
	public String list() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		department = departmentDao.get(Department.class, Long.parseLong(request.getParameter("departmentId")));
		assets = department.getAssets();
		return SUCCESS;
	}
	
	public String saveAsset() {
		assetDao.saveOrUpdate(asset);
		return SUCCESS;
	}
	
	public String deleteAsset() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		assetDao.delete(Asset.class, Long.parseLong(request.getParameter("id")));
		Long departmentId = Long.parseLong(request.getParameter("departmentId"));
		department = departmentDao.get(Department.class, departmentId);
	    return SUCCESS;
	}
	
	public String editAsset() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		asset = assetDao.get(Asset.class, Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}
	public String addNew() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		Long departmentId = Long.parseLong(request.getParameter("departmentId"));
		department = departmentDao.get(Department.class, departmentId);
		asset.setDepartment(department);
		return SUCCESS;
	}

	public List<Producer> getProducers() {
		producers = producerDAO.list(Producer.class);
		return producers;
	}

	public void setProducers(List<Producer> producers) {
		this.producers = producers;
	}

	public List<Country> getCountries() {
		countries = countryDAO.list(Country.class);
		return countries;
	}

	public void setCountries(List<Country> countries) {
		this.countries = countries;
	}
	
	public Department getDepartment() {
		return department;
	}
	
	public void setDepartment(Department department) {
		this.department = department;
	}
	
	public Map<String, Integer> getCategories() {
		categories = new HashMap<>();
		categories.put("Nhà cửa, vật kiến trúc", 1);
		categories.put("Phương tiện vận tải", 2);
		categories.put("Công cụ dụng cụ", 3);
		return categories;
	}
	
}
