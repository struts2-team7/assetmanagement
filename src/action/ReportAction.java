package action;

import java.util.ArrayList;
import java.util.List;

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
	
	
}
