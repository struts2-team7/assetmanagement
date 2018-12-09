package action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
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

public class AssetAction extends ActionSupport implements ModelDriven<Asset> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	IDao<Asset, Long> assetDao = new DaoImpl<>();
	IDao<Department, Long> departmentDao = new DaoImpl<>();
	IDao<Country, Long> countryDAO = new DaoImpl<>();
	IDao<Producer, Long> producerDAO = new DaoImpl<>();

	private Asset asset = new Asset();
	private InputStream inputStream;
	private Department department = new Department();

	private Map<Integer, String> categories;

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

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
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		department = departmentDao.get(Department.class, Long.parseLong(request.getParameter("departmentId")));
		assets = department.getAssets();
		return SUCCESS;
	}

	public String saveAsset() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		assetDao.saveOrUpdate(asset);
		return SUCCESS;
	}

	public String deleteAsset() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		assetDao.delete(Asset.class, Long.parseLong(request.getParameter("id")));
		Long departmentId = Long.parseLong(request.getParameter("departmentId"));
		department = departmentDao.get(Department.class, departmentId);
		return SUCCESS;
	}

	public String editAsset() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		asset = assetDao.get(Asset.class, Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}

	public String addNew() throws Exception {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		Long departmentId = Long.parseLong(request.getParameter("departmentId"));
		department = departmentDao.get(Department.class, departmentId);
		asset.setDepartment(department);
		return SUCCESS;
	}

	public List<Producer> getProducers() {
		producers = producerDAO.list(Producer.class);
		return producers;
	}

//	public String exportInExcel() {
//		try (HSSFWorkbook workbook = new HSSFWorkbook()) {
//			HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
//					.get(ServletActionContext.HTTP_REQUEST);
//			Long assetId = Long.parseLong(request.getParameter("assetId")));
//			String assetName = goodsService.findByStockId(stockId).getName();
//			assets = goodsService.findGoodsByStockId(stockId);
//			HSSFSheet sheet = workbook.createSheet(stockName);
//
//			Row rowHeading = sheet.createRow(0);
//			rowHeading.createCell(0).setCellValue("STT");
//			rowHeading.createCell(1).setCellValue("Mã tài sản");
//			rowHeading.createCell(2).setCellValue("Tên tài sản");
//			rowHeading.createCell(3).setCellValue("Nguyên giá");
//			rowHeading.createCell(4).setCellValue("Năm bắt đầu");
//
//			for (int rowIndex = 1; rowIndex <= assets.size(); rowIndex++) {
//				Row row = sheet.createRow(rowIndex);
//				Asset a = assets.get(rowIndex - 1);
//				row.createCell(0).setCellValue(rowIndex);
//				row.createCell(1).setCellValue(a.getCode());
//				row.createCell(2).setCellValue(a.getName());
//				row.createCell(3).setCellValue(a.getPrice());
//				row.createCell(4).setCellValue(a.getStartYear());
//			}
//
//			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
//			workbook.write(outputStream);
//			setInputStream(new ByteArrayInputStream(outputStream.toByteArray()));
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return SUCCESS;
//	}

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

	public Map<Integer, String> getCategories() {
		categories = new HashMap<>();
		categories.put(1, "Nhà cửa, vật liệu kiến trúc");
		categories.put(2, "Phương tiện vận tải");
		categories.put(3, "Công cụ, dụng cụ");
		return categories;
	}

}
