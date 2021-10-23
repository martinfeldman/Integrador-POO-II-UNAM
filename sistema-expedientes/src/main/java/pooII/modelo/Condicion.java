package pooII.modelo;


import java.util.Date;

import jakarta.persistence.*;




@Entity
@Table(name= "condiciones")

public class Condicion {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "condicion", nullable = false, length = 50)
    private String condicion;

    @Column(name = "fecha", nullable = false, length = 50)
    private Date fecha;



  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

/*     @Column(name = "alta", nullable = false)
    private boolean alta; */
   

   /*  public Propietario(){} */

    public Condicion(String condicion, Date fecha){
        this.condicion = condicion;
        this.fecha = fecha;       
    }


       
}
