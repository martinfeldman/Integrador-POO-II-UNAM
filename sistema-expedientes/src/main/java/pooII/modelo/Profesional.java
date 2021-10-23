package pooII.modelo;


import java.util.List;
import java.util.ArrayList;
import jakarta.persistence.*;




@Entity
@Table(name= "profesionales")

public class Profesional {

   
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "nombres", nullable = false, length = 50)
    private String nombres;

    @Column(name = "apellidos", nullable = false, length = 50)
    private String apellidos;

    @Column(name = "cuit", nullable = false, length = 50)
    private String dni; 

    @Column(name = "numero_matricula", nullable = false, length = 50)
    private Integer numero_matricula; 

    @Column(name = "email", nullable = false, length = 50)
    private String email; 

    /* @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>();

    @Column(name = "alta", nullable = false)
    private boolean alta;
   

    public Empleado(){}

    public Empleado(String nombres, String apellidos, String cuit, Integer numero_matricula, 
            String email ){
        this.nombres = nombres;
        this.apellidos = apellidos;



        */
    } 