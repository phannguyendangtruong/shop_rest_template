package com.dangtruong.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.dangtruong.entity.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {
    @Query("SELECt SUM(o.price) FROM  OrderDetail o")
    Double sum();

    @Query("SELECt o FROM  OrderDetail o WHERE o.order.id =?1")
    List<OrderDetail> getOrderDetail(Long id);
}
