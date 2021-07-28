package com.myopgg.myopggapp.vue;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class CORSFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	  @Override
	  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	      HttpServletResponse httpResponse = (HttpServletResponse) response;
	      httpResponse.addHeader("Access-Control-Allow-Origin", "*");
	      httpResponse.addHeader("Access-Control-Allow-Methods", "POST, GET, PUT, UPDATE, OPTIONS");
	      httpResponse.setHeader("Access-Control-Allow-Headers", "X-Requested-With, X-Auth-Token");       chain.doFilter(request, response);
	  }


	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
}
