package pooII.modelo;


import java.io.File;

import jakarta.persistence.*;




@Entity
@Table(name= "certificados")

public class Certificado {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "certificado", nullable = false, length = 50)
    private File certificado;

    @JoinColumn(name = "certificado_expediente")
    @OneToOne (mappedBy = "certificado")
    private Integer expediente_id;

   /* No se considera necesario eliminar Certificados, por lo que se anula el atributo Alta. 
        A eliminarse proximamente
   
   
   @Column(name = "alta", nullable = false)
    private boolean alta; */
   




    public Certificado(File certificado, Integer expediente_id){
        this.certificado = certificado;
        this.expediente_id = expediente_id;
    }




       
}
