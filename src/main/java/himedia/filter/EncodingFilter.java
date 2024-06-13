package himedia.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class EncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		// 연결된 필터 요청, 응답객체 전달
		chain.doFilter(req, resp);
		
	}

	
	
}
