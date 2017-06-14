package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ConsultDao;
import entity.Consult;
import entity.User;

public class ConsultAddQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 /**
    * @see HttpServlet#HttpServlet()
    */
	public ConsultAddQuestion(){
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ConsultDao consultDao = new ConsultDao();
		Consult consult = new Consult();

		consult.setQuestionTitle(request.getParameter("questionTitle"));
		consult.setQuestion(request.getParameter("question"));
		consult.setUserId(request.getParameter("userId"));

		
		User user = (User) request.getSession().getAttribute("login");
		consult.setUserId(user.getAdminId() + "");
		
		try {
			int result = consultDao.consultAddQuestion(consult);
			if(result>0){
				response.sendRedirect("fore_consult_list.jsp");
			}else{
				response.sendRedirect("fore_consult.jsp");
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
