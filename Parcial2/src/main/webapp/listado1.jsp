<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Listado</title>
  </head>
  <div style="text-align:center">
      <font face="Verdana">
      <fieldset style="border: ridge #C0392B  2px;">
          <legend>SEGUNDO PARCIAL TEM-742</legend>
          <p>Nombres: Mery Judith Mamani Mamani</p>
          <p>Carnet: 9234793</p>
      </fieldset>
      </font>
  </div>

  <body>
      <div class="container">
          <h1 style="text-align:center">Registro de Seminarios</h1>
          <p><a href="Inicio?action=add" class="btn btn-primary btn-sm">Nuevo</a></p>
          <table class="table">
              <thead class="table-dark">
                  <tr>
                      <th>ID</th>
                      <th>TITULO</th>
                      <th>EXPOSITOR</th>
                      <th>FECHA</th>
                      <th>HORA</th>
                      <th>CUPO</th>
                      <th colspan="2">ACCIONES</th>
                  </tr>
              </thead>
              <tbody>
              <c:forEach var="item" items="${seminarios}">
                  <tr>
                      <td>${item.id}</td>
                      <td>${item.titulo}</td>
                      <td>${item.expositor}</td>
                      <td>${item.fecha}</td>
                      <td>${item.hora}</td>
                      <td>${item.cupo}</td>
                      <td><a href="Inicio?action=edit&id=${item.id}" class="btn btn-warning">Editar</a></td>
                      <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('¿Está seguro de eliminar?'))" class="btn btn-danger">Eliminar</a></td>
                  </tr>
              </c:forEach>
              </tbody>
          </table>

      </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>
