package dao;

import model.Account;

public interface AccountDao {
	
	Account findByUsernameAndPassword(String username, String password);
	
	Account changePassword(Long id, String password);
}
