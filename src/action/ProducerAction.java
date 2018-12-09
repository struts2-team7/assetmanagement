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
import model.Producer;

public class ProducerAction extends ActionSupport implements ModelDriven<Asset>{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IDao<Producer, Long> producerDAO = new DaoImpl<>();
	
	private Producer producer = new Producer();
	private Map<String, Boolean> actives;
	
	
	public Producer getProducer() {
		return producer;
	}

	public void setProducer(Producer producer) {
		this.producer = producer;
	}
	@Getter
	private List<Producer> producers;
	
	@Override
	public Asset getModel() {
		return null;
	}
	
	public String list() {
		producers = producerDAO.list(Producer.class);
		return SUCCESS;
	}
	
	public String saveProducer() {
		if(producerDAO.findByName(producer.getClass(), producer.getName()) != null) {
			addFieldError("producer.name", "Tên nhà sản xuất đã tồn tại. Vui lòng kiểm tra lại!");
			return INPUT;
		}
		producerDAO.saveOrUpdate(producer);
	    return SUCCESS;
	}
	
	public String deleteProducer() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		producerDAO.delete(Producer.class, Long.parseLong(request.getParameter("id")));
	    return SUCCESS;
	}
	
	public String editProducer() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		producer = producerDAO.get(Producer.class, Long.parseLong(request.getParameter("id")));
		producerDAO.saveOrUpdate(producer);
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
