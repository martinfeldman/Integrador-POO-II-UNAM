package pooII.modelo;

import jakarta.persistence.*;




@Entity
@Table(name= "localidades")

public class Localidad {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "localidad", nullable = false, length = 50)
    private String localidad;



  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

    @Column(name = "alta", nullable = false)
    private boolean alta;
   

   /*  public Propietario(){} */

    public Localidad(String localidad){
        this.localidad = localidad; 
    }




       
}
