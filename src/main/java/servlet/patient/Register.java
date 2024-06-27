package servlet.patient;

import bean.Patient;
import dao.PatientDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/patient/register")
public class Register extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message="";
        String password = req.getParameter("password");
        String passwordCof = req.getParameter("passwordCof");

        // 检查密码是否匹配
        if(password!=null && password.equals(passwordCof)){
            String account=req.getParameter("account");
            if(account!=null){
                PatientDao patientDao=new PatientDao();
                List<Patient> patients = patientDao.query("account", account);
                if(patients.size()==0){
                    String name = req.getParameter("name");
                    String email = req.getParameter("email");
                    Patient patient=new Patient(null,account,email,password,name,"100");
                    if(patientDao.insert(patient)){
                        message="注册成功，请登录！";
                        req.getSession().setAttribute("s_message",message);
                        resp.sendRedirect("login.jsp");
                        return;
                    }else {
                        message="注册失败，请稍后再试！";
                    }
                }else {
                    message="该账号已存在！";
                }
            }else {
                message="请输入账号！";
            }
        }else {
            message="两次密码不正确！";
        }

        // 将消息传递给注册页面
        req.setAttribute("message",message);
        req.getRequestDispatcher("register.jsp").forward(req,resp);
    }
}
