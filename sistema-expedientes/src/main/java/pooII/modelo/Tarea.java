package pooII.modelo;


import java.util.Date;

import jakarta.persistence.*;




@Entity
@Table(name= "tareas")

public class Tarea {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "tipo_tarea_id", nullable = false)
    private Integer tipo_tarea_id;

    @Column(name = "fecha_inicio", nullable = false)
    private Date fecha_inicio;

    @Column(name = "fecha_fin", nullable = false)
    private Date fecha_fin;

    @Column(name = "plano_id", nullable = false)
    private Integer plano_id;


  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

    @Column(name = "alta", nullable = false)
    private boolean alta;
   

   /*  public Propietario(){} */

    public Tarea(Integer tipo_tarea_id, Date fecha_inicio, Date fecha_fin, Integer plano_id ){
        this.tipo_tarea_id = tipo_tarea_id;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;    
        this.plano_id = plano_id;
    }

   

       
}
