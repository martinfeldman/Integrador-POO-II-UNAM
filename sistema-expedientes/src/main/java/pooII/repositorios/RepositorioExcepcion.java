package pooII.repositorios;

public class RepositorioExcepcion extends RuntimeException {
    
    private static final long serialVersionUID = 1L;

    public RepositorioExcepcion() {
        super("Excepción en Repositorio");
    }
}