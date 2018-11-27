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

public class CountryAction extends ActionSupport implements ModelDriven<Asset>{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IDao<Country, Long> countryDAO = new DaoImpl<>();
	private Map<String, Boolean> actives;
	private Country country = new Country();
	
	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	@Getter
	private List<Country> countries;
	
	@Override
	public Asset getModel() {
		return null;
	}
	
	public String list() {
		countries = countryDAO.list(Country.class);
		return SUCCESS;
	}
	
	public String saveCountry() {
		countryDAO.saveOrUpdate(country);
	    return SUCCESS;
	}
	
	public String deleteCountry() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		countryDAO.delete(Country.class, Long.parseLong(request.getParameter("id")));
	    return SUCCESS;
	}
	
	public String editCountry() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		country = countryDAO.get(Country.class, Long.parseLong(request.getParameter("id")));
		countryDAO.saveOrUpdate(country);
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
