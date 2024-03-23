<%@page import="br.com.model.Paciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.PacienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <title>Saints Lime</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      <link rel="stylesheet" href="css/style.css"/>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   </head>
   <body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
         <a class="navbar-brand" href="http://localhost:8080/SHSantos/index.jsp">Saints Lime</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu">
               <li class="nav-item">
                  <a class="nav-link active" href="http://localhost:8080/SHSantos/Paciente">Pacientes</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="#.">Médicos</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="#.">Consultas</a>
               </li>
            </ul>
         </div>
      </nav>
      <br>
      <div class="container-fluid">
      <div class="row-fluid">
         <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-5">
               <h5>Lista de pacientes</h5>
            </div>
            <div class="col-md-4"></div>
            <div class="col-md-1"><a type="button" href="http://localhost:8080/SHSantos/Paciente/form_add.html" class="btn btn-success">Inserir</a></div>
         </div>
         <br>
         <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
               <div class="table-responsive">
                  <%
                     PacienteDAO pacienteDAO = new PacienteDAO();
                     ArrayList<Paciente> listaPacientes = pacienteDAO.BuscarPacientes();
                     %>
                  <table class="table">
                     <thead>
                        <tr>
                           <th>
                           </th>
                           <th>CPF</th>
                           <th>Nome completo</th>
                           <th>Nome da mãe</th>
                           <th>Data de nascimento</th>
                           <th>CNS</th>
                           <th>Ações</th>
                        </tr>
                     </thead>
                     <tbody>
                        <% for (int i = 0; i < listaPacientes.size(); i++) {
                           out.print("<tr><td></td>");
                           out.print("<td>" + listaPacientes.get(i).getCpf()+ "</td>");
                           out.print("<td>" + listaPacientes.get(i).getNome() + "</td>");
                           out.print("<td>" + listaPacientes.get(i).getNome_mae()+ "</td>");
                           out.print("<td>" + listaPacientes.get(i).getDt_nasc()+ "</td>");
                           out.print("<td>" + listaPacientes.get(i).getCartao_sus()+ "</td>");
                           out.print("<td><a type=\"button\" href=\"form_editar.jsp??id_paciente=" + listaPacientes.get(i).getIdpaciente() + "&nome=" + listaPacientes.get(i).getNome() + "&nome_mae=" + listaPacientes.get(i).getNome_mae() + "&cartao_sus=" + listaPacientes.get(i).getCartao_sus() + "&cpf=" + listaPacientes.get(i).getCpf() + "&dt_nasc=" + listaPacientes.get(i).getDt_nasc() + "\"class=\"btn btn-warning\">Editar</a> <a type=\"button\" href=\"form_excluir.jsp?id_paciente=" + listaPacientes.get(i).getIdpaciente() + "&nome=" + listaPacientes.get(i).getNome() + "&nome_mae=" + listaPacientes.get(i).getNome_mae() + "&cartao_sus=" + listaPacientes.get(i).getCartao_sus() + "&cpf=" + listaPacientes.get(i).getCpf() + "&dt_nasc=" + listaPacientes.get(i).getDt_nasc() + "\"class=\"btn btn-danger\">Excluir</a></td></tr>");
                           }
                           %>
                     </tbody>
                  </table>
               </div>
            </div>
            <div class="col-md-1"></div>
         </div>
      </div>
   </body>
</html>