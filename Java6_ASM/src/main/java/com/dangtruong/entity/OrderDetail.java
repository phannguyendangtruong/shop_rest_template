package com.dangtruong.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Orderdetails")
public class OrderDetail {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private Double price;
  private Integer quantity;

  @ManyToOne
  @JoinColumn(name = "Productid")
  Product product;

  @ManyToOne
  @JoinColumn(name = "Orderid")
  Order order;
}
