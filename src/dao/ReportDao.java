package dao;

import java.util.List;

import dto.AssetReport;
import dto.CategoryAssetReport;
import dto.DepartmentAssetReport;

public interface ReportDao {
	
	List<CategoryAssetReport> getCategoryAssetReport();
	
	List<DepartmentAssetReport> getDepartmentAssetReport();
	
	List<AssetReport> getAssetReport();
	
}
