package servlet;

import bean.Patient;
import dao.PatientDao;
import util.MyMail;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

@WebServlet("/patient/findPwd")
public class FindPwd extends HttpServlet {
    @Override
    protected void service(final HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = Util.nullToString(req.getParameter("account")) ;
        String email = req.getParameter("email");
        String action = req.getParameter("action");
        PatientDao patientDao=new PatientDao();
        List<Patient> list = patientDao.query("account", account);
        String message="";
        if(list.size()>0){
            String password = Util.nullToString(req.getParameter("password"));
            String passwordCof = Util.nullToString(req.getParameter("passwordCof"));
            if(password.equals(passwordCof)){
                String set=" set password=? where pid=?";
                if(patientDao.update(set,new Object[]{password,list.get(0).getId()})){
                    message="密码修改成功，请登录！";
                    req.setAttribute("message",message);
                    req.getRequestDispatcher("login.jsp").forward(req,resp);
                    return;
                }else {
                    message="密码修改失败，请稍后再试！";
                }
            }else {
                message="两次密码不一致！";
            }

        }else {
            message="账号不存在!";
        }
        req.setAttribute("message",message);
        req.getRequestDispatcher("findPwd.jsp").forward(req,resp);
    }
}
