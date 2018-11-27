package action;


import java.util.List;

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

public class AssetAction extends ActionSupport implements ModelDriven<Asset>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IDao<Asset, Long> assetDao = new DaoImpl<>();
	
	private Asset asset = new Asset();
	
	
	public Asset getAsset() {
		return asset;
	}

	public void setAsset(Asset asset) {
		this.asset = asset;
	}
	@Getter
	private List<Asset> assets;

	@Getter
	private List<Producer> producers;
	
	@Override
	public Asset getModel() {
		// TODO Auto-generated method stub
		return asset;
	}
	
	public String list() {
		assets = assetDao.list(Asset.class);
		return SUCCESS;
	}
	
	public String saveAsset() {
		
		assetDao.saveOrUpdate(asset);
		return SUCCESS;
	}
	
	public String deleteAsset() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		assetDao.delete(Asset.class, Long.parseLong(request.getParameter("id")));
	    return SUCCESS;
	}
	
	public String editAsset() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		asset = assetDao.get(Asset.class, Long.parseLong(request.getParameter("id")));
		assetDao.saveOrUpdate(asset);
		return SUCCESS;
	}
	public String addNew() throws Exception {
		return SUCCESS;
	}
}
