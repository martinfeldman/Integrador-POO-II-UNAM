package pooII.modelo;


import jakarta.persistence.*;




@Entity
@Table(name= "obras")

public class Obra {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "propietario_id", nullable = false)
    private Integer propietario_id;

    @Column(name = "localidad_id", nullable = false)
    private Integer localidad_id;

    @Column(name = "seccion", nullable = true)
    private Integer seccion; 

    @Column(name = "chacra", nullable = true)
    private Integer chacra; 

    @Column(name = "manzana", nullable = true)
    private Integer manzana; 

    @Column(name = "parcela", nullable = true)
    private Integer parcela; 

    @Column(name = "partida_inmobiliaria_id", nullable = false)
    private Integer partida_inmobiliaria_id;


  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

    @Column(name = "alta", nullable = false)
    private boolean alta;
   

   /*  public Propietario(){} */

    public Obra(){

    }

  

       
}
