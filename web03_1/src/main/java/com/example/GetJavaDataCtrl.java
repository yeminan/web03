package com.example;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GetJavaDataCtrl")
public class GetJavaDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GetJavaDataCtrl() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] names = {"홍길동","고길동","김길동","이길동"};
		
		ArrayList <String> list= new ArrayList<>();
		
		list.add("이장군");
		list.add("김장군");
		list.add("정장군");
		list.add("고장군");
		
		HashMap <String,Integer> map2=new HashMap<>();
		map2.put("백장군", 400);
		map2.put("청장군", 300);
		map2.put("흑장군", 600);
		map2.put("갈장군", 700);
		
		HashMap <String,String> map = new HashMap<>();
		map.put("name", "이민환");
		map.put("age", "26");
		map.put("hobby", "놀기");
		
		Human vo = new Human();
		vo.setCountry("korea");
		vo.setAge(29);
		vo.setName("손흥민");
		vo.setHobby("축구");
		
		ArrayList<Human> humanList= new ArrayList<Human>();
		Human human = new Human();
		human.setCountry("korea");
		human.setAge(27);
		human.setName("황희찬");
		human.setHobby("축구");
		humanList.add(human);
		
		Human human1 = new Human();
		human.setCountry("spain");
		human.setAge(40);
		human.setName("사비");
		human.setHobby("농구");
		humanList.add(human1);
		
		request.setAttribute("names", names);
		request.setAttribute("list", list);
		request.setAttribute("map2", map2);
		request.setAttribute("map", map);
		request.setAttribute("vo", vo);
		request.setAttribute("humanList", humanList);
	
		
		RequestDispatcher view = request.getRequestDispatcher("06getJavaData.jsp");
		view.forward(request, response);
		
		
		
		
	}

}
