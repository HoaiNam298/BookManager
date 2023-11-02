package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.*;

public interface OrderDAO extends JpaRepository<Order, Integer> {
}
