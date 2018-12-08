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
public class LoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private AccountDao accountDao = new AccountDaoImpl();

	private String username;
	private String password;

	public String login() {
		Account account = accountDao.findByUsernameAndPassword(username, password);
		if (account == null) {
			addActionMessage("Sai tài khoản hoặc mật khẩu");
			return INPUT;
		}
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext()
				.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute("user", account);
		return SUCCESS;
	}

	@Override
	public void validate() {
		if (username == null || username.isEmpty())
			addFieldError("username", "Bạn chưa nhập tài khoản");
		if (password == null || password.isEmpty())
			addFieldError("password", "Bạn chưa nhập mật khẩu");
	}
}
