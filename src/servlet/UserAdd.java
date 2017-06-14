package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import entity.User;

/**
 * Servlet implementation class UserAdd
 */
public class UserAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		UserDao userDao = new UserDao();
		User user = new User();
		user.setAdminName(request.getParameter("adminName"));
		user.setPassword(request.getParameter("password"));
		user.setPhone(request.getParameter("mobile"));
		String auth = request.getParameter("auth");
		if(auth.equals("0")){
			user.setRole("普通用户");
		}else if(auth.equals("1")){
			user.setRole("超级管理员");
		}
		
		try {
			int result = userDao.addUser(user);
			if(result>0){
				response.sendRedirect("userAdmin.jsp");
			}else{
				response.sendRedirect("userAdd.jsp");
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
