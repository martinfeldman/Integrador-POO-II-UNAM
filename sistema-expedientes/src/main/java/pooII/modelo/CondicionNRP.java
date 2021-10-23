package pooII.modelo;


import jakarta.persistence.*;




@Entity
@Table(name= "condiciones_nota_reemplazo_profesional")

public class CondicionNRP {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "condicion_nota_reemplazo_profesional", nullable = false, length = 50)
    private String condicion_nota_reemplazo_profesional;


  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

/*     @Column(name = "alta", nullable = false)
    private boolean alta; */
   

   /*  public Propietario(){} */

    public CondicionNRP(String condicion_nota_reemplazo_profesional){
        this.condicion_nota_reemplazo_profesional = condicion_nota_reemplazo_profesional;
       
    }



       
}
