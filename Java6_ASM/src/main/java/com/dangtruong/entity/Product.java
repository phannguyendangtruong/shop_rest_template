package com.dangtruong.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Products")
@SuppressWarnings("serial")
public class Product {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  private String name;
  private String image;
  private Double price;

  @Temporal(TemporalType.DATE)
  @Column(name = "Createdate")
  Date createDate = new Date();

  Boolean available;

  @ManyToOne
  @JoinColumn(name = "Categoryid")
  Category category;

  @JsonIgnore
  @OneToMany(mappedBy = "product")
  List<OrderDetail> orderDetails;
}
