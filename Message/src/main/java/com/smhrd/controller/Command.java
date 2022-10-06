package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	// Controller를 일반클래스로 만들기 위해 일종의 규격을 정해주는 인터페이스
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;
}