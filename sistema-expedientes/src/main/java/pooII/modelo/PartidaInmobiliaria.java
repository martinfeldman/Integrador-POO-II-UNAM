package pooII.modelo;


import jakarta.persistence.*;




@Entity
@Table(name= "partidas_inmobiliarias")

public class PartidaInmobiliaria {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "numero", nullable = false, length = 50)
    private Integer numero;


  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

/*     @Column(name = "alta", nullable = false)
    private boolean alta; */
   

   /*  public Propietario(){} */

    public PartidaInmobiliaria(Integer numero, String apellidos, String cuit ){
        this.numero = numero;  
    }

  

       
}
