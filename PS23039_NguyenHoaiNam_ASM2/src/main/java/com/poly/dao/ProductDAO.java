package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.*;

public interface ProductDAO extends JpaRepository<Product, Integer> {

	@Query(value = "SELECT * FROM Products WHERE price BETWEEN ?1 AND ?2", nativeQuery = true)
	List<Product> findByPrice(double minPrice, double maxPrice);

	List<Product> findByPriceBetween(double minPrice, double maxPrice);

	Page<Product> findAllByNameLike(String name, Pageable pageable);

	@Query("SELECT count(p.id) FROM Product p")
	Integer countAllProduct();

	@Query("SELECT new Report(p.category, sum(p.price), count(p)) FROM Product p GROUP BY p.category ORDER BY sum(p.price) DESC")
	List<Report> getInventoryByCategory();

	@Query("SELECT new Report(p.createDate, sum(p.price), count(p)) FROM Product p GROUP BY p.createDate ORDER BY sum(p.price) DESC")
	List<Report> getInventoryByDate();
}
