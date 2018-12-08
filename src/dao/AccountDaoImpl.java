package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

import model.Account;

public class AccountDaoImpl implements AccountDao {

	@SessionTarget
	protected Session session;

	@TransactionTarget
	protected Transaction transaction;

	@Override
	public Account findByUsernameAndPassword(String username, String password) {
		return (Account) session
				.createQuery("SELECT a FROM Account a WHERE a.username = :username AND a.password = :password")
				.setParameter("username", username).setParameter("password", password).uniqueResult();
	}

	@Override
	public Account changePassword(Long id, String password) {
		try {
			int rowAffected = session.createQuery("UPDATE Account a SET a.password = :password WHERE a.id = :id")
					.setParameter("password", password).setParameter("id", id).executeUpdate();
			if (rowAffected > 0)
				return (Account) session.get(Account.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
