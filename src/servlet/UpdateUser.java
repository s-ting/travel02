package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import entity.User;

/**
 * Servlet implementation class UpdateUser
 */
public class UpdateUser extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		//用户更改前id;
		int adminId=Integer.parseInt(request.getParameter("adminId"));//123|asd
		System.out.println(adminId);
		//接收用户信息
//		int id=Integer.parseInt(request.getParameter("userId"));
		String adminName=request.getParameter("adminName");
		String phone=request.getParameter("mobile");
//		String address=request.getParameter("address");
		User user = new User();
		user.setPhone(phone);
		user.setAdminName(adminName);
//		user.setAdminId(adminId);
		UserDao dao = new UserDao();
		try {
			boolean flag = dao.updateUser(user, adminId);
			if(flag==true){
				out.print("<script type='text/javascript'>alert('用户更新成功！');window.location='userAdmin.jsp';</script>");
				out.flush();
				out.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
