package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ConsultDao;
import entity.Consult;
import entity.User;

public class ConsultAnswer extends HttpServlet {

	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultAnswer() {
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
		//内容id;
		int id=Integer.parseInt(request.getParameter("id"));

		//接收信息
		String answer=request.getParameter("answer");
		
		Consult consult = new Consult();
		consult.setAnswer(answer);
		
		User user = (User) request.getSession().getAttribute("login");
		consult.setAdminId(user.getAdminId() + "");
		
		ConsultDao dao = new ConsultDao();
		
		try {
			boolean flag = dao.consultAnswer(consult ,id);
			if(flag==true){
				out.print("<script type='text/javascript'>alert('回复成功！');window.location='consult.jsp';</script>");
				out.flush();
				out.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
