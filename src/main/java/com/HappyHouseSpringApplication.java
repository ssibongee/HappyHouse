package com;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = {"com.happyhouse.mapper"})
public class HappyHouseSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(HappyHouseSpringApplication.class, args);
	}

}
