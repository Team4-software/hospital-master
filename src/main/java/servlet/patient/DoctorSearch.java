package servlet.patient;

import bean.Doctor;
import bean.Pages;
import dao.DoctorDao;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/patient/searchDoctor")
public class DoctorSearch extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = Util.nullToString(req.getParameter("doctor"));
        int start = Util.nullToZero(req.getParameter("start"));
        DoctorDao doctorDao = new DoctorDao();
        String where = "where dname like ? ";
        int total = doctorDao.getDoctorCount(where, new Object[]{Util.toLike(name)});
        Pages pages = new Pages(start, total, 6);
        where += " limit " + ((pages.getCurrentPage() - 1) * 6) + ",6";
        List<Doctor> doctors = doctorDao.query(where, new Object[]{Util.toLike(name)});
        req.setAttribute("doctors", doctors);
        req.setAttribute("pages", pages);
        req.setAttribute("doctor", name);
        String order = req.getParameter("order");
        if ("doctor".equals(order)) {
            req.getRequestDispatcher("orderDoctor.jsp").forward(req, resp);
        }
    }
}
