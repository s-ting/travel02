package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentDao;
import dao.UserDao;
import entity.Content;
import entity.User;

public class ContentSearchFore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContentSearchFore() {
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
		response.setContentType("text/html:charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		ContentDao dao = new ContentDao();
		try {
			List<Content> listByTitle = dao.getListByTitle(title);
			request.setAttribute("contentList", listByTitle);
			request.getRequestDispatcher("fore_indexSearch.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

