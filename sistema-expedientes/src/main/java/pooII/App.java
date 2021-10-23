package pooII;


import io.javalin.*;
import io.javalin.http.Context;
import java.util.Collections;

import static io.javalin.apibuilder.ApiBuilder.*;   // para usar routes


import pooII.repositorios.*;
import pooII.controladores.*;
import pooII.paginas.*;





public class App {



      /** 
     * @param args argumento que recibe la aplicación
     */
    public static void main(String[] args) {



        //var expedienteRepositorio = new ExpedienteRepositorio();
        var expedienteControlador = new ExpedienteControlador(expedienteRepositorio);


         // creo servidor
        Javalin app = Javalin.create(config -> {
            config.addStaticFiles("/public", null);
        })
        .exception(RepositorioExcepcion.class, (e, ctx) -> { ctx.status(404); }) 
        .start(7000);



        app.get("/", App::mostrarIndex); // muestra el index
        app.post("/", App::validarUsuario); // "valida usuario" 


        
        app.get("/cursos", expedienteControlador::listar); // lista los expedientes
        app.get("/cursos/nuevo", expedienteControlador::nuevo); // pantalla de nuevo expediente
        app.post("/cursos", expedienteControlador::crear); // crear un expediente
        app.get("/cursos/:id", expedienteControlador::modificar); // devuelve datos del expediente
        app.delete("/cursos/:id", expedienteControlador::borrar); // borra un expediente


       /*  app.get("/cursos/:id/revisiones", revisionesControlador::listarPorCursoId); // lista revisiones por curso
        app.post("/cursos/:id/revisiones", revisionesControlador::crear); // Crear una nueva revision  */



        // donde cargar una revision nueva?
        // creo una pagina nueva o uso una existente (en este ejemplo)
        /* app.get("/cursos/:id/revisiones/nuevo", revisionesControlador::nuevo); */
        // o alternativamente uso revisionesControlador::listar para Alta de revision        
    }





    /** 
     * @param ctx Contexto de la petición
     */
    private static void mostrarIndex(Context ctx) {
        var modelo = new ModeloIndex();
        // controlo por cookie
        if (ctx.cookie("nombreUsuario") != null) {
            modelo.nombreUsuario = ctx.cookie("nombreUsuario");
        } else {
            modelo.nombreUsuario = "";
        }
        ctx.render("index.jte", Collections.singletonMap("modelo", modelo));
    }



    /** 
     * @param ctx Contexto de la petición
     */
    private static void validarUsuario(Context ctx) {
        // obtengo valor enviado en el formulario
        var valor = ctx.formParamAsClass("nombreUsuario", String.class).get();
        // creo el cookie (antes se debe validar sobre la base de datos o alguna otra forma)
        // recibo el elemento y hago un trim para guardarlo en el cookie
        ctx.cookie("nombreUsuario", valor.trim());
        // redirecciono a / 
        ctx.redirect("/");
    }    





}