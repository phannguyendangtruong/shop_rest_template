package com.dangtruong.dao;

import com.dangtruong.entity.Order;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface OrderDAO extends JpaRepository<Order, Long> {

    @Query("SELECT o FROM Order o  WHERE o.account.username =?1")
    List<Order> findByUsername(String username);

    @Query("SELECT o FROM Order o WHERE o.confirm is NULL order by o.createDate desc")
    List<Order> findAllByConfirm();

    @Query("SELECT o FROM Order o  WHERE o.confirm is not NULL")
    List<Order> findAllByConfirmNull();

    @Transactional
    @Modifying
    @Query("UPDATE Order o set o.confirm = 1 WHERE o.id =?1")
    void confirm(Long id);
}
