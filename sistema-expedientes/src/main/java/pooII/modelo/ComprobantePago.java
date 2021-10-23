package pooII.modelo;

import java.util.List;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;

import jakarta.persistence.*;




@Entity
@Table(name= "comprobantes_pago")

public class ComprobantePago {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "comprobante_pago", nullable = false, length = 50)
    private File comprobante_pago;

    @Column(name = "fecha", nullable = false, length = 50)
    private Date fecha;

  /*   @JoinColumn(name = "cosechas_empleado")
    @OneToMany (mappedBy = "empleado")
    private List<Cosecha> cosechas = new ArrayList<>();

    @Column(name = "alta", nullable = false)
    private boolean alta;
    */

   /*  public Propietario(){} */

    public ComprobantePago(File comprobante_pago){
        this.comprobante_pago = comprobante_pago;
    
    }



       
}
