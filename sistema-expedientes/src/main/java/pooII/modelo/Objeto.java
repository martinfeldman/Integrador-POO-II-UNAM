package pooII.modelo;


import jakarta.persistence.*;




@Entity
@Table(name= "propietarios")

public class Objeto {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "objeto", nullable = false, length = 50)
    private String objeto;




  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */
/* 
    @Column(name = "alta", nullable = false)
    private boolean alta; */
   

   /*  public Propietario(){} */

    public Objeto(String objeto){
        this.objeto = objeto;     
    }



       
}
