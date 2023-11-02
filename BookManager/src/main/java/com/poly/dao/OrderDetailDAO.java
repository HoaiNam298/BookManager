package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.*;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Integer> {
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	List<OrderDetail> findByOrderid(Integer orderid);

	@Query(value = "SELECT sum(o.price * o.quantity) FROM OrderDetails o", nativeQuery = true)
	String countSumOrder();
}