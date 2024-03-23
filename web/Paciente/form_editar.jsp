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
                  <a class="nav-link" href="http://localhost:8080/SHSantos/Paciente">Pacientes</a>
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
      <div class="container-fluid">
         <div class="row-fluid">
            <div class="row">
               <div class="col-md-2"></div>
               <div class="col-md-8">
                  <div class="card">
                     <div class="card-header">
                        <strong>Excluir paciente</strong>
                        (Confira os dados)
                     </div>
                     <div class="card-body">
                        <form action="edit.jsp" method="POST">
                           <div class="form-row">
                              <div class="col-md-12 mb-3">
                                 <label for="nome">Nome completo</label>
                                 <input type="text" class="form-control" id="nome" name="nome" value="<%=request.getParameter("nome")%>" >
                              </div>
                              <div class="col-md-12 mb-3">
                                 <label for="id_paciente">ID</label>
                                 <input type="text" class="form-control" id="id_paciente" name="id_paciente" value="<%=request.getParameter("id_paciente")%>">
                              </div>
                           </div>
                           <div class="form-row">
                              <div class="col-md-12 mb-3">
                                 <label for="nome_mae">Nome da mãe</label>
                                 <input type="text" class="form-control" id="nome_mae" name="nome_mae" value="<%=request.getParameter("nome_mae")%>" >
                              </div>
                           </div>
                           <div class="form-row">
                              <div class="col-md-4 mb-3">
                                 <label for="cpf">CPF</label>
                                 <input type="text" class="form-control" id="cpf" name="cpf" value="<%=request.getParameter("cpf")%>" >
                              </div>
                              <div class="col-md-4 mb-3">
                                 <label for="cns">CNS</label>
                                 <input type="text" class="form-control" id="cartao_sus" name="cartao_sus" value="<%=request.getParameter("cartao_sus")%>" >
                              </div>
                              <div class="col-md-4 mb-3">
                                 <label for="ft_nasc">Data de nascimento</label>
                                 <div class="input-group">
                                    <input type="date" class="form-control" id="dt_nasc" name="dt_nasc" value="<%=request.getParameter("dt_nasc")%>" >
                                 </div>
                              </div>
                           </div>
                           <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                              <button class="btn btn-danger me-md-2" type="button">Cancelar</button> &nbsp;&nbsp;
                              <button class="btn btn-primary" type="submit">Alterar</button>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <script>
         // Example starter JavaScript for disabling form submissions if there are invalid fields
         (function() {
           'use strict';
           window.addEventListener('load', function() {
             // Fetch all the forms we want to apply custom Bootstrap validation styles to
             var forms = document.getElementsByClassName('needs-validation');
             // Loop over them and prevent submission
             var validation = Array.prototype.filter.call(forms, function(form) {
               form.addEventListener('submit', function(event) {
                 if (form.checkValidity() === false) {
                   event.preventDefault();
                   event.stopPropagation();
                 }
                 form.classList.add('was-validated');
               }, false);
             });
           }, false);
         })();
      </script>
   </body>
</html>