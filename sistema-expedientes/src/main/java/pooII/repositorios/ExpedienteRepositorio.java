package pooII.repositorios;

import java.util.List;
import pooII.modelo.Expediente;

public interface ExpedienteRepositorio {

    List<Expediente> listar() throws RepositorioExcepcion;
    int crear (Expediente expediente) throws RepositorioExcepcion;
    boolean borrar (Expediente expediente) throws RepositorioExcepcion;
    boolean modificar (Expediente curexpedienteso) throws RepositorioExcepcion;
    Expediente obtener (int id) throws RepositorioExcepcion;
    
}
