package pooII.controladores;

import java.sql.SQLException;
import java.util.Collections;

import pooII.paginas.ModeloExpediente;
import pooII.modelo.Expediente;
import pooII.paginas.ModeloExpedientes;
import pooII.repositorios.ExpedienteRepositorio;
import pooII.repositorios.RepositorioExcepcion;
import io.javalin.http.Context;





public class ExpedienteControlador {


    private final ExpedienteRepositorio expedienteRepositorio;

    public ExpedienteControlador(ExpedienteRepositorio expedienteRepositorio) {
        this.expedienteRepositorio = expedienteRepositorio;
    }




    public void listar(Context ctx) throws SQLException {
        var modelo = new ModeloExpedientes();
        modelo.expedientes = expedienteRepositorio.listar();
        ctx.render("cursos.jte", Collections.singletonMap("modelo", modelo));        
    }




    public void nuevo(Context ctx) throws SQLException {
        ctx.render("crearCurso.jte", Collections.singletonMap("modelo", null));        
    }




    public void crear(Context ctx) throws SQLException {
        var expediente = new Expediente(ctx.formParamAsClass(

            "numero", Integer.class
            ).get());
        this.expedienteRepositorio.crear(expediente);
        ctx.redirect("/expedientes");        
    }




    public void borrar(Context ctx) throws SQLException, RepositorioExcepcion {
        System.out.println(ctx.pathParamAsClass("id", Integer.class).get());
        this.expedienteRepositorio.borrar(this.expedienteRepositorio.obtener(ctx.pathParamAsClass("id", Integer.class).get()));
        ctx.redirect("/cursos");  
    }





    public void modificar(Context ctx) throws SQLException, RepositorioExcepcion {
        var modelo = new ModeloExpediente();
        modelo.expediente = this.expedienteRepositorio.obtener(ctx.pathParamAsClass("id", Integer.class).get());
        ctx.render("editarCurso.jte", Collections.singletonMap("modelo", modelo));
    }



    
}
