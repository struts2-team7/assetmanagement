package dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class DaoImpl<T, ID extends Serializable> implements IDao<T, ID> {


	@SessionTarget
	private Session session;

	@TransactionTarget
	private Transaction transaction;

	public void saveOrUpdate(T entity) {
		try {
			session.saveOrUpdate(entity);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	public List<T> list(Class<T> clazz) {
		return session.createQuery(String.format("FROM %s", clazz.getName())).list();
	}

	@SuppressWarnings("unchecked")
	public T get(Class<T> clazz, ID id) {
		return (T) session.get(clazz, id);
	}

	public void delete(Class<T> clazz, ID id) {
		try {
			session.delete(get(clazz, id));
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByCode(Class<? extends T> clazz, String code) {
		return session.createQuery(String.format("FROM %s t WHERE t.code = :code", clazz.getName()))
				.setParameter("code", code).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByName(Class<? extends T> clazz, String name) {
		return session.createQuery(String.format("FROM %s t WHERE t.name = :name", clazz.getName()))
				.setParameter("name", name).list();
	}

	@Override
	public void delete(T t) {
		try {
			session.delete(t);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}

	}

}
