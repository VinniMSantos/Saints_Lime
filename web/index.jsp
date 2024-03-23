<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.PacienteDAO"%>
<%@page import="br.com.model.Paciente"%>
<%@page import="br.com.model.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Saints Lime</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="style.css" />
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    </head>
    
        <style></style>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="http://localhost:8080/SHSantos/index.jsp">Saints Lime</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="nav navbar-nav menu">
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/SHSantos/Paciente/">Pacientes</a>
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
        <br><br>
        
                <% PacienteDAO pacienteDAO = new PacienteDAO();
                 ArrayList<Paciente> listaPacientes = pacienteDAO.BuscarPacientes(); %>
                <div class="row">
                    <div class="col-md-3">
                        <div class="card-counter primary">
                            <i class="fa fa-users"></i>
                            <span class="count-numbers"><% out.print(listaPacientes.size());%></span>
                            <span class="count-name">Pacientes</span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card-counter danger">
                            <i class="fa fa-list-alt"></i>
                            <span class="count-numbers"></span>
                            <span class="count-name">Consultas confirmadas</span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card-counter success">
                            <i class="fa fa-file-text-o"></i>
                            <span class="count-numbers"></span>
                            <span class="count-name">Consultas pendentes</span>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card-counter info">
                            <i class="fa fa-user-md"></i>
                            <span class="count-numbers"></span>
                            <span class="count-name">Médicos</span>
                        </div>
                    </div>
                </div>
            
        
    
</html>
