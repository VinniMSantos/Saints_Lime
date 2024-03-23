<%@page import="br.com.DAO.PacienteDAO"%>
<%@page import="br.com.model.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saints Lime</title>
    </head>
    <body>
        <%
            try {
                Paciente paciente = new Paciente();
                paciente.setIdpaciente(Integer.parseInt(request.getParameter("id_paciente")));

                PacienteDAO pacienteDAO = new PacienteDAO();
                pacienteDAO.ExcluirPaciente(paciente); // linha que chama o metodo de cadastro
                response.sendRedirect("index.jsp");
            } catch (Exception e) {

            }
        %>
    </body>
</html>
