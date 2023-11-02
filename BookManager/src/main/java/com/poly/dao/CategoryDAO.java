package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.*;

public interface CategoryDAO extends JpaRepository<Category, Integer> {

	@Query(value = "SELECT count(c.id) FROM Categories c", nativeQuery = true)
	Integer countAllCategory();
}
