package dao;

import java.io.Serializable;
import java.util.List;

public interface IDao<T, ID extends Serializable> {
	void saveOrUpdate(T t);

	List<T> list(Class<T> clazz);

	T get(Class<T> clazz, ID id);

	void delete(Class<T> clazz, ID id);
	
	void delete(T t);
	
	List<T> findByCode(Class<? extends T> clazz, String code);

	List<T> findByName(Class<? extends T> clazz, String name);
}
