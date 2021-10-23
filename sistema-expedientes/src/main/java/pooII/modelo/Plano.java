package pooII.modelo;

import java.io.File;

import jakarta.persistence.*;




@Entity
@Table(name= "planos")

public class Plano {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "plano", nullable = false, length = 50)
    private File plano;


  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */
/* 
    @Column(name = "alta", nullable = false)
    private boolean alta; */
   

   /*  public Propietario(){} */

    public Plano(File plano){
        this.plano = plano;
    
    }

       
}
