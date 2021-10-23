package pooII.modelo;


import jakarta.persistence.*;




@Entity
@Table(name= "empleados_administrativos")

public class EmpleadoAdministrativo {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "nombres", nullable = false, length = 50)
    private String nombres;

    @Column(name = "apellidos", nullable = false, length = 50)
    private String apellidos;

    @Column(name = "dni", nullable = false, length = 50)
    private String dni; 


  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

    @Column(name = "alta", nullable = false)
    private boolean alta;
   

   /*  public Propietario(){} */

    public EmpleadoAdministrativo(String nombres, String apellidos, String dni ){
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.dni = dni;       
    }



       
}
