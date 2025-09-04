package fit.iuh.se.ltwww_java_04092025_tuan03_dangnguyentienphat.servlet;

import fit.iuh.se.ltwww_java_04092025_tuan03_dangnguyentienphat.entity.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/registration-form")
public class RegistrationForm extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationForm() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());

        // Get data from form
        String fname = request.getParameter("txtFName");
        String lname = request.getParameter("txtLName");
        String email = request.getParameter("txtEmail");
        String year = request.getParameter("year");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("txtPhoneNumber");
        String address = request.getParameter("txtAddress");
        String city = request.getParameter("txtCity");
        String state = request.getParameter("txtState");
        String country = request.getParameter("txtCountry");
        String hobbies = request.getParameter("txtHobbies");
        String course = request.getParameter("txtCourse");

        String birthdate = day + "/" + month + "/" + year;

        LocalDate dOB = LocalDate.of(Integer.parseInt(year), Integer.parseInt(month), Integer.parseInt(day));

        // Set data to Student
        Student sv = new Student();
        sv.setFirstName(fname);
        sv.setLastName(lname);
        sv.setEmail(email);
        sv.setGender(gender);
        sv.setPhone(phone);
        sv.setDateOfBirth(dOB);

        // Set object student to request object
        request.setAttribute("student", sv);

        // Forward to result-registration-form.jsp
        RequestDispatcher rd = request.getRequestDispatcher("result-registration-form.jsp");
        rd.forward(request, response);
    }
}

