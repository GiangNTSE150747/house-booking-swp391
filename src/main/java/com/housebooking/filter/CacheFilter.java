package com.housebooking.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class CacheFilter
 */
@WebFilter(filterName = "CacheFilter", urlPatterns = {"/dashboard", "/manage", "/manage-bill", "/owner-post"})
public class CacheFilter implements Filter {

    /**
     * Default constructor. 
     */
    public CacheFilter() {
        // TODO Auto-generated constructor stub
    }

	/**	
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		 HttpServletResponse httpResponse = (HttpServletResponse) response;
	        httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
	        httpResponse.setHeader("Pragma", "no-cache"); // HTTP 1.0
	        httpResponse.setDateHeader("Expires", 0); // Proxies.
	        chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
