package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentDao;
import entity.Content;

public class ContentUpdate  extends HttpServlet {

	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContentUpdate() {
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
//		System.out.println(id);
//		//接收信息
		String title=request.getParameter("title");
		String content_=request.getParameter("content");
		String column = request.getParameter("column");
		
		Content content1 = new Content();
		content1.setTitle(title);
		content1.setColumn(column);
		content1.setContent(content_);
		
		ContentDao dao = new ContentDao();
		
		try {
			boolean flag = dao.contentUpdate(content1 ,id);
			if(flag==true){
				out.print("<script type='text/javascript'>alert('更新成功！');window.location='content.jsp';</script>");
				out.flush();
				out.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
