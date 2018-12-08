package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import dao.ReportDao;
import dao.ReportDaoImpl;
import dto.AssetReport;
import dto.CategoryAssetReport;
import dto.DepartmentAssetReport;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReportAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String, Integer> categories;
	private ReportDao reportDao = new ReportDaoImpl();
	
	private List<AssetReport> assetReport = new ArrayList<AssetReport>();
	
	private List<CategoryAssetReport> categoryAssetReport = new ArrayList<CategoryAssetReport>();
	
	private List<DepartmentAssetReport> departmentAssetReport = new ArrayList<DepartmentAssetReport>();
	
	public String execute() {
		assetReport = reportDao.getAssetReport();
		categoryAssetReport = reportDao.getCategoryAssetReport();
		departmentAssetReport = reportDao.getDepartmentAssetReport();
		reportDao.getCategoryAssetReport().forEach(e-> System.out.println(e));
		reportDao.getDepartmentAssetReport().forEach(e-> System.out.println(e));
		reportDao.getAssetReport().forEach(e -> System.out.println(e));
		return SUCCESS;
	}
	public Map<String, Integer> getCategories() {
		categories = new HashMap<>();
		categories.put("Nhà cửa, vật kiến trúc", 1);
		categories.put("Phương tiện vận tải", 2);
		categories.put("Công cụ, dụng cụ", 3);
		return categories;
	}
	
}
