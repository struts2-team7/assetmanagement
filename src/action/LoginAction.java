package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.DaoImpl;
import dao.IDao;
import model.Account;
import model.Asset;

public class LoginAction extends ActionSupport implements ModelDriven<Asset>{
	/**
	 * 
	 */
	
	
	private static final long serialVersionUID = 1L;
	IDao<Account, Long> accountDAO = new DaoImpl<>();
    private Account account = new Account();
    
    
	public Account getAccount() {
		return account;
	}


	public void setAccount(Account account) {
		this.account = account;
	}


	@Override
	public Asset getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
    public void validate() {
        if (account.getUsername().length() == (0)) {
            this.addFieldError("user.uname", "Tài khoản không hợp lệ!");
        }
        if (account.getPassword().length() == (0)) {
            this.addFieldError("user.pwd", "Mật khẩu không hợp lệ!");
        }
    }
 
//    @Override
//    public String execute() {
//        if (accountDAO.find(account.getUsername(), account.getPassword())) {
//            return SUCCESS;
//        } else {
//            this.addActionError("Invalid username and password");
//        }
//        return INPUT;
//    }
//	
	
}
