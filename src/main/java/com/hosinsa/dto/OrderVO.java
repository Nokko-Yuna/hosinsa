package com.hosinsa.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderVO {
	private int ordernum;
	private String id;
	private String orderdate;
	private int price;
}
