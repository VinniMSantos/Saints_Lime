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
                try{
                    Paciente paciente = new Paciente();
                        paciente.setNome(request.getParameter("nome"));
                        paciente.setCpf(request.getParameter("cpf"));
                        paciente.setCartao_sus(request.getParameter("cartao_sus"));
                        paciente.setNome_mae(request.getParameter("nome_mae"));
                        paciente.setDt_nasc(request.getParameter("dt_nasc"));

                        PacienteDAO pacienteDAO = new PacienteDAO();
                        pacienteDAO.CadastrarPaciente(paciente); // linha que chama o metodo de cadastro
                        response.sendRedirect("index.jsp");
                }catch (Exception e){
                
                }
            %>
    </body>
</html>
