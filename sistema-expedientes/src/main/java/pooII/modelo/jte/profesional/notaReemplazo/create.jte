@extends ('layouts.admin')





@section('contenido')

    {{-- {{ dd($ultimoNumeroMatricula);  }} --}}


    <div class="row">
    
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <h3>Nuevo Expediente </h3>
            <br>
            
            
            
            @if (count($errors)>0)    
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li> {{$error}} </li>
                        @endforeach
                    
                    </ul>
                </div>
            @endif    
            
            
                
            
            
            {!! Form::open(array('url'=>'expediente','method'=>'POST','autocomplete'=>'off', 'files'=>true)) !!}
            {{ Form::token() }}


            <div class="container" >
                <div class="row" >
                    

                    

                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <h4><strong>PROFESIONAL</strong></h4>   

                        <!-- ComboBox de Profesionales -->
                        <div class="form-group">
                        
                            {{-- <label for="profesional">PROFESIONAL</label> <br> --}}
                        
                            <x-combo-box.profesionales :content="$profesionales" />
                        
                        </div> 
                        
                    </div>    
                        
                    


                   

                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <!-- ComboBox de Propietarios -->

                        <h4><strong>PROPIETARIO</strong></h4> 

                        <div class="form-group">
                        
                            {{-- <label for="propietario">PROPIETARIO</label> <br> --}}
                        
                            <x-combo-box.propietarios :content="$propietarios" />
                        
                        </div>

                    </div>
                    

                </div> <!-- div.row -->



                <br>


                <div class="row" >    
                    
                    
                    <!-- UBICACIÓN -->

                    <h4><strong>UBICACIÓN</strong></h4>         
        

                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
                        
                        <div class="form-group" name="ubicación">
                                                
                        <!-- ComboBox de Localidad -->
                        
                            <label for="localidad">LOCALIDAD</label>    <br>           
                        
                            <x-combo-box.localidades :content="$localidades" />

                        </div>       

                    </div>




                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="calle">

                        <!-- Entrada de Calle -->   

                            <label for="calle">CALLE</label> <br>
                            <input type="text" name="calle" class="form-control" placeholder="Calle">   

                        </div>       

                    </div>




                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="numero">

                        <!-- Entrada de Número -->        
                          <label for="numero">NÚMERO</label> <br>
                          <input type="text" name="numero" class="form-control" placeholder="Número"> 

                        </div>       

                    </div>
                        



                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="barrio">

                        <!-- Entrada de Barrio -->        
                            <label for="barrio">BARRIO</label> <br>
                            <input type="text" name="barrio" class="form-control" placeholder="Barrio">     
                        
                        </div>
                    
                    </div>

                    <br><br> <br><br>
                    
                    
                </div> <!-- div.row -->

                <div class="row" >   
                    
                    
                    <!-- Datos catastrales -->

                    <h4 class='col-lg-9 col-sm-9 col-md-9 col-xs-12'><strong>DATOS CATASTRALES</strong></h4>  
                    <h4 class='col-lg-3 col-sm-3 col-md-3 col-xs-12'><strong>PARTIDA INMOBILIARIA</strong></h4> 

                    <div class="col-lg-2 col-sm-2 col-md-2 col-xs-12">
                    
                        <div class="form-group" name="seccion">  
                        
                        <!-- Entrada de Sección -->     

                            <label for="seccion">SECCIÓN</label> <br>
                            <input type="text" name="seccion" class="form-control" placeholder="ejemplo: 70">   

                        </div>
                    
                    </div>



                    <div class="col-lg-2 col-sm-2 col-md-2 col-xs-12">

                        <div class="form-group" name="manzana">  

                        <!-- Entrada de Manzana --> 

                          <label for="manzana">MANZANA</label> <br>
                          <input type="text" name="manzana" class="form-control" placeholder="ejemplo: 70"> 
                        
                        </div>
                    
                    </div>
                        


                    <div class="col-lg-2 col-sm-2 col-md-2 col-xs-12">

                        <div class="form-group" name="chacra"> 
                        
                        <!-- Entrada de Chacra -->  

                            <label for="chacra">CHACRA</label> <br>
                            <input type="text" name="chacra" class="form-control" placeholder="ejemplo: 70">  
                            
                        </div>
                    
                    </div>




                    <div class="col-lg-2 col-sm-2 col-md-2 col-xs-12">

                        <div class="form-group" name="parcela">     
                        
                        <!-- Entrada de Parcela -->        

                            <label for="parcela">PARCELA</label> <br>
                            <input type="text" name="parcela" class="form-control" placeholder="ejemplo: 70">     
                        
                        </div>
                    
                    </div>


                    <div class="col-lg-1 col-sm-1 col-md-1 col-xs-12">
                        {{-- VACIO --}}
                    </div>
                    
                    
                    <div class="col-lg-3 col-sm-2 col-md-2 col-xs-12">
                        
                        <div class="form-group" name="partida_inmobiliaria">     

                        <!-- Partida/s Inmobiliaria/s -->

                            <label for="partida_inmobiliaria">PARTIDA</label> <br>
                            <input type="text" name="partida_inmobiliaria_numero" class="form-control" placeholder="ejemplo: 70"> 

                        </div>
                    
                    </div>
                        
                        
                        <!--  FALTA AGREGAR BOTON PARA AGREGAR OTRA PARTIDA INMBOLIARIA    -->
                        
                        
                        <div class="col-lg-2 col-sm-2 col-md-2 col-xs-12">
                    
                    
                        </div>

                 
                </div> <!-- div.row -->

                    <br>
                     
                    


                <div class="row">   
                    
                    <!-- Obra -->
                    
                    <h4><strong>OBRA</strong></h4>  

                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 ">

                        <!-- ComboBox de Objetos -->
                    
                        <div class="form-group" name="objeto">
                        
                            <label for="objeto">OBJETO</label> <br>
                        
                            <x-combo-box.objetos :content="$objetos"/>
                        
                        </div>
                    
                    </div>




                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <div class="form-group" name="tipologia">
                        
                        <!-- ComboBox de Tipologías -->
                        
                            <label for="tipología">TIPOLOGÍA</label> <br>
                        
                            <x-combo-box.tipologias :content="$tipologias"/>
                        
                        </div>
                    
                    </div> 


                </div> <!-- div.row -->

                <br><br> 

                

                <div class="row" >

                    <!-- SUPERFICIE -->
                    
                    <h4><strong>SUPERFICIE (en m²)</strong></h4>   


                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">

                        <div class="form-group" name="superficie_a_construir">
                        
                        <!-- Entrada de Superficie a constuir -->  

                            <label for="nombre">A CONSTRUIR</label> <br>
                            <input type="text" name="superficie_a_construir" class="form-control" placeholder="ejemplo: 70">  

                        </div>
                    
                    </div> 




                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">

                        <div class="form-group" name="superficie_con_permiso">
                        
                        <!-- Entrada de Superficie con permiso -->     

                            <label for="nombre">CON PERMISO</label> <br>
                            <input type="text" name="superficie_con_permiso" class="form-control" placeholder="ejemplo: 70">  

                        </div>
                    
                    </div> 




                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">

                        <div class="form-group" name="superficie_sin_permiso">
                        
                        <!-- Entrada de Superficie sin permiso --> 

                            <label for="nombre">SIN PERMISO</label> <br>
                            <input type="text" name="superficie_sin_permiso" class="form-control" placeholder="ejemplo: 70"> 
                        
                        </div>

                    </div> 
                    
                </div> <!-- div.row -->
                    
                <br>
                    
                

                <div class="row" >
                    
                    <!-- del Expediente -->


                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <h4><strong>TAREAS</strong></h4>   

                        <div class="form-group">
                        
                        <!-- ComboBox de Tareas -->
                        
                            {{-- <label for="tipos_tareas">TAREA</label>  --}}

                            <x-combo-box.tipos_tareas :content="$tipos_tareas"/>
                        
                        </div>

                    </div>

                        


                         
                        
                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <h4><strong>PLANO O DOCUMENTO</strong></h4>   

                        <div class="form-group">
                        
                        <!-- Entrada de Planos -->       
                            
                            <form method="POST" enctype="multipart/form-data" action="{{route('expediente.store')}}">
                               {{--  <label for="plano">PLANO</label> <br> --}}
                                
                                @csrf
                                <input type="file" name="plano" class="form-control" placeholder="vacío"> 
                            </form>
                        
                        </div>

                    </div>
                        
                </div> <!-- div.row -->        
                    
                <br>


                <div class="row">
                    <h4 class="text-center"><strong>Este formulario será verificado por la Administración del Colegio de Arquitectos.</strong></h5>
                </div>
                
                <br>
              

            
           

                <div class="row" >

                <!-- Botones -->       
                
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">

                        <div class="form-group">

                            <button type="reset" class="btn btn-default col-lg-4"><strong>CANCELAR</strong></button>
                            <button type="submit" class="btn btn-primary col-lg-8"><strong>CONFIRMAR</strong></button>

                        </div>

                    </div>


                

                   
            </div> <!-- div.container-->     
        {!!Form::close()!!}


        </div>
    </div>


@endSection


