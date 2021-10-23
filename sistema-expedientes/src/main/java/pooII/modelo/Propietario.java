package pooII.modelo;

import java.util.List;
import java.util.ArrayList;
import jakarta.persistence.*;




@Entity
@Table(name= "propietarios")

public class Propietario {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "nombres", nullable = false, length = 50)
    private String nombres;

    @Column(name = "apellidos", nullable = false, length = 50)
    private String apellidos;

    @Column(name = "razon_social", nullable = true, length = 100)
    private String razon_social; 

    @Column(name = "cuit", nullable = false, length = 50)
    private String cuit; 


  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

    @Column(name = "alta", nullable = false)
    private boolean alta;
   

   /*  public Propietario(){} */

    public Propietario(String nombres, String apellidos, String cuit ){
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.cuit = cuit;       
    }

    public Propietario(String nombres, String apellidos, String razon_social, String cuit ){
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.razon_social = razon_social;
        this.cuit = cuit;       
    }


       
}
