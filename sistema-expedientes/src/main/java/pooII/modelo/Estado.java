package pooII.modelo;


import jakarta.persistence.*;




@Entity
@Table(name= "estados")

public class Estado {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "estado", nullable = false, length = 10)
    private String estado;




  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

/*     @Column(name = "alta", nullable = false)
    private boolean alta; */
   

   /*  public Propietario(){} */

    public Estado(String estado){
        this.estado = estado;
   
    }




       
}
