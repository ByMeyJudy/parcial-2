<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  </head>
  <body>
      <div class="container">   
          <h1>
              <c:if test="${seminario.id==0}">NUEVO</c:if>
              <c:if test="${seminario.id!=0}">EDITAR</c:if>
              AVISO 
          </h1>

         <form action="Inicio" method="post">            
                <input class="form-control form-control-lg" type="hidden" name="id" value=${seminario.id}>
                <table>
                <tr>
                    <td>Titulo:</td>
                    <td><input type="text" name="titulo" value="${seminario.titulo}"></td>
                </tr>
                <tr>
                    <td>Expositor: </td>
                    <td><input type="text" name="expositor" value="${seminario.expositor}"></td>
                </tr>
                <tr>
                    <td>Fecha: </td>
                    <td><input type="date" name="fecha" value="${seminario.fecha}"></td>

                </tr>
                <tr>
                    <td>Hora: </td>
                    <td><input type="text" name="hora" value="${seminario.hora}"></td>

                </tr>
                <tr>
                    <td>Cupo: </td>
                    <td><input type="text" name="cupo" value="${seminario.cupo}"></td>

                </tr>
                <tr>
                    <td colspan="2"><input class="btn btn-primary btn-lg" type="submit" value="Enviar" ></td>
                </tr>

            </table>
        </form>
        
      </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>