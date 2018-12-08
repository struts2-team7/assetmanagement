package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.AccountDao;
import dao.AccountDaoImpl;
import lombok.Getter;
import lombok.Setter;
import model.Account;

@Getter
@Setter
public class AccountAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private AccountDao accountDao = new AccountDaoImpl();

	private String currentPassword;
	private String newPassword;
	private String verifyPassword;

	public String logout() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().invalidate();
		return SUCCESS;
	}

	public String goPasswordForm() {
		return SUCCESS;
	}

	public String changePassword() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		Account account = (Account) request.getSession().getAttribute("user");
		account = accountDao.changePassword(account.getId(), newPassword);
		if (account == null) {
			addActionMessage("Đổi mật khẩu thất bại!");
			return INPUT;
		} else {
//			addActionMessage("Đổi mật khẩu thành công!");
			request.getSession().setAttribute("user", account);
			return SUCCESS;
		}
	}

	@Override
	public void validate() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		Account account = (Account) request.getSession().getAttribute("user");
		if (!currentPassword.equals(account.getPassword()))
			addFieldError("currentPassword", "Mật khẩu hiện tại không đúng!");
	}

}