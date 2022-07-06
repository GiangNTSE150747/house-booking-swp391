package com.housebooking.controller.common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.housebooking.DAOimpl.web.RegisterDAO;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/sign-up")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	String username = request.getParameter("username");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("re-password");
		RegisterDAO register = new RegisterDAO();
		if ((username == null) && (password == null) && (rePassword == null)) {
			doDisplay(request, response);
		} else {
			if(register.checkUsername(username)) {
				if(register.checkPassword(password,rePassword)) {
					register.createUser(username, password);
				} else {
					request.setAttribute("register_mess", "Password và Re-Password không trùng nhau");
					doDisplay(request, response);
				}
			} else {
				request.setAttribute("register_mess", "Tên đăng nhập đã có người sử dụng");
				doDisplay(request, response);
			}
		}
	}
    
    protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	RequestDispatcher rd = request.getRequestDispatcher("/view/common/register.jsp");
		rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRegister(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doRegister(request, response);
	}

}
