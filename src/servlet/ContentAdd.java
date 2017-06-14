package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentDao;
import entity.Content;
import entity.User;

public class ContentAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 /**
     * @see HttpServlet#HttpServlet()
     */
	public ContentAdd(){
		super();
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
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ContentDao contentDao = new ContentDao();
		Content content = new Content();

		content.setTitle(request.getParameter("title"));
		content.setColumn(request.getParameter("column"));
		content.setContent(request.getParameter("content"));
		
		User user = (User) request.getSession().getAttribute("login");
		content.setAdminId(user.getAdminId() + "");
		
		try {
			int result = contentDao.contentAdd(content);
			if(result>0){
				response.sendRedirect("content.jsp");
			}else{
				response.sendRedirect("contentAdd.jsp");
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
