package com.shop.test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.shop.common.BoardVO;
import com.shop.common.MemberVO;

class VOTest {

	private BoardVO header;
	private MemberVO list;
	private String data1 = "타이틀";
	private String data2 = "admin"; 
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		System.out.println("인스턴스 시작");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		System.out.println("인스턴스 종료");
	}

	@BeforeEach
	void setUp() throws Exception {
		header = new BoardVO();
		list = new MemberVO();
		System.out.println("테스트 시작");		
	}

	@AfterEach
	void tearDown() throws Exception {
		System.out.println("테스트 종료");
	}

	@Test
	void VOtest1() {
		header.setTitle(" 타이틀");
		System.out.println("데이터 : "+header.getTitle());
		assertEquals(data1, header.getTitle());
		fail("VOTest1 False");
	}

	@Test
	void VOtest2() {
		list.setUserid("admin");
		System.out.println("데이터 : "+list.getUserid());
		assertEquals(data2, list.getUserid());
		fail("VOTest2 False");
	}
}