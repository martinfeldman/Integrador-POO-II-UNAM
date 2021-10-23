package pooII.modelo;


import jakarta.persistence.*;




@Entity
@Table(name= "tipos_tareas")

public class TipoTarea {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "tipos_tarea", nullable = false, length = 50)
    private String tipos_tarea;




  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

    @Column(name = "alta", nullable = false)
    private boolean alta;
   

   /*  public Propietario(){} */

    public TipoTarea(String tipos_tarea){
        this.tipos_tarea = tipos_tarea;
 
    }

   
       
}
