package pooII.modelo;

import java.util.List;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;

import jakarta.persistence.*;




@Entity
@Table(name= "expedientes")

public class Expediente {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "numero", nullable = false)
    private Integer numero;

    @Column(name = "profesional_id", nullable = false)
    private Integer profesional_id;

    @Column(name = "estado_id", nullable = true)
    private Integer estado_id; 

    @Column(name = "tarea_id", nullable = false)
    private Integer tarea_id; 

    @Column(name = "obra_id", nullable = false)
    private Integer obra_id; 

    @Column(name = "tipologia_id", nullable = false)
    private Integer tipologia_id; 

    @Column(name = "objeto_id", nullable = false)
    private Integer objeto_id; 


    @Column(name = "superficie_a_construir", nullable = false)
    private Double superficie_a_construir; 

    @Column(name = "superficie_con_permiso", nullable = false)
    private Double superficie_con_permiso; 

    @Column(name = "superficie_sin_permiso", nullable = false)
    private Double superficie_sin_permiso; 


    @Column(name = "fecha_inicio", nullable = false, length = 50)
    private Date fecha_inicio;

    @Column(name = "fecha_cierre", nullable = false, length = 50)
    private Date fecha_cierre;


    @Column(name = "liquidacion", nullable = false)
    private Double liquidacion; 

    @Column(name = "comprobante_pago", nullable = false, length = 50)
    private File comprobante_pago;


    @Column(name = "condicion_id", nullable = false)
    private Integer condicion_id; 

  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>(); */

    @Column(name = "alta", nullable = false)
    private boolean alta;
   

    public Expediente(Integer numero){
        this.numero = numero;
    }




       
}
