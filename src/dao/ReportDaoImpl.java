package dao;

import java.util.List;

import org.hibernate.Session;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;

import dto.AssetReport;
import dto.CategoryAssetReport;
import dto.DepartmentAssetReport;

public class ReportDaoImpl implements ReportDao{
	
	@SessionTarget
	private Session session;

	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryAssetReport> getCategoryAssetReport() {
		return session.createQuery("SELECT new dto.CategoryAssetReport(a.category, count(a.id), sum(a.price)) "
				+ "FROM Asset a GROUP BY a.category").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DepartmentAssetReport> getDepartmentAssetReport() {
		return session.createQuery("SELECT new dto.DepartmentAssetReport(d.name, count(a.id), sum(a.price)) "
				+ "FROM Department d LEFT JOIN d.assets a GROUP BY d.name").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AssetReport> getAssetReport() {
		 return session.createQuery("SELECT new dto.AssetReport(a.code, a.name, a.category, a.price, a.startYear, a.depRate) "
				+ "FROM Asset a WHERE a.startYear + a.depYear <  year(current_date())").list();
	}

	
	/*
	 * SELECT category, count(id), sum(price) from assets group by category
SELECT departments.`name`, count(assets.id), sum(assets.price) FROM departments LEFT JOIN assets on departments.id = assets.department_id
SELECT code, name, category, price, startyear, dep_rate FROM assets WHERE startyear + dep_year < YEAR(NOW())
	 */
	
	
}
