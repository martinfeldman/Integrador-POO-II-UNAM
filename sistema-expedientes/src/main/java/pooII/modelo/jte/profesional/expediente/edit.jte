@extends ('layouts.admin')




@section('contenido')

    {{-- {{dd($expediente);}} --}}
    {{-- {{dd($expedientes);}} --}}


    <div class="row">
    
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <h3>Editar Expediente: {{$expediente[0]->expediente_numero}} </h3>
            
            
            
            @if (count($errors)>0)    
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li> {{$error}} </li>
                        @endforeach
                    
                    </ul>
                </div>
            @endif    
            
            
                
            
            
            {!! Form::model($expediente, ['method'=>'PATCH', 'route'=>['expediente.update', $expediente[0]->expediente_id]] ) !!}
                {{ Form::token() }}


                <div class="row">


                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <!-- ComboBox de Profesionales -->
                        <div class="form-group">
                        
                            <label for="profesional">PROFESIONAL</label>
                        
                            <!-- ComboBox de Profesionales -->

                            <select class="combo" name="profesional_id" >
                               {{-- <option value="{{$expediente->profesional_nombre }} {{ $expediente->profesional_apellido }} {{$expediente->profesional_numero_matricula}} " </option> --}}

                               <option value="Select">{{$expediente[0]->profesional_nombre }} {{ $expediente[0]->profesional_apellido }}</option>

       
                            </select>   
                        
                        </div> 
                        
                    </div>    
                        
                    

                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <!-- ComboBox de Propietarios -->

                        <div class="form-group">
                        
                            <label for="propietario">PROPIETARIO</label>
                        
                            <!-- ComboBox de Propietarios -->

                            <select class="combo" name="propietario_id" >
                                <option value="Select">{{$expediente[0]->propietario_nombre }} {{ $expediente[0]->propietario_apellido }}</option>
        
                             </select> 
                        
                        </div>

                    </div>
                    
                    

                    
                    
                    
                    
                    <!-- UBICACIÓN -->

                    <h4><strong> UBICACIÓN</strong></h4>              

                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
                        
                        <div class="form-group" name="ubicación">
                                                
                        <!-- ComboBox de Localidad -->
                        
                            <label for="localidad">LOCALIDAD</label>              
                        
                            <select class="combo" name="localidad_id" >
                                <option value="{{$expediente[0]->localidad }}"</option>
        
                             </select>  

                        </div>       

                    </div>




                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="calle">

                        <!-- Entrada de Calle -->   

                            <label for="calle">CALLE</label>
                            <input type="text" name="calle" class="form-control" value="{{$expediente[0]->calle}}">   

                        </div>       

                    </div>




                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="numero">

                        <!-- Entrada de Número -->        
                          <label for="numero">NÚMERO</label>
                          <input type="text" name="numero" class="form-control" value="{{$expediente[0]->numero}}"> 

                        </div>       

                    </div>
                        



                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="barrio">

                        <!-- Entrada de Barrio -->        
                            <label for="barrio">BARRIO</label>
                            <input type="text" name="barrio" class="form-control" value="{{$expediente[0]->barrio}}">     
                        
                        </div>
                    
                    </div>
                    
                    
                    
                    
                    
                    <!-- Datos catastrales -->

                    <h4><strong> DATOS CATASTRALES</strong></h4>  


                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
                    
                        <div class="form-group" name="seccion">  
                        
                        <!-- Entrada de Sección -->     

                            <label for="seccion">SECCIÓN</label>
                            <input type="text" name="seccion" class="form-control" value="{{$expediente[0]->seccion}}">   

                        </div>
                    
                    </div>



                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="manzana">  

                        <!-- Entrada de Manzana --> 

                          <label for="manzana">MANZANA</label>
                          <input type="text" name="manzana" class="form-control" value="{{$expediente[0]->manzana}}"> 
                        
                        </div>
                    
                    </div>
                        


                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="chacra"> 
                        
                        <!-- Entrada de Chacra -->  

                            <label for="chacra">CHACRA</label>
                            <input type="text" name="chacra" class="form-control" value="{{$expediente[0]->chacra}}">  
                            
                        </div>
                    
                    </div>




                    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

                        <div class="form-group" name="parcela">     
                        
                        <!-- Entrada de Parcela -->        

                            <label for="parcela">PARCELA</label>
                            <input type="text" name="parcela" class="form-control" value="{{$expediente[0]->parcela}}">     
                        
                        </div>
                    
                    </div>




                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">

                        <div class="form-group" name="partida_inmobiliaria">     

                        <!-- Partida/s Inmobiliaria/s -->

                            <label for="partida_inmobiliaria">PARTIDAS INMOBILIARIAS</label>
                            <input type="text" name="partida_inmobiliaria_numero" class="form-control" value="{{$expediente[0]->calle}}"> 

                        </div>
                    
                    </div>
                        
                        
                        <!--  FALTA AGREGAR BOTON PARA AGREGAR OTRA PARTIDA INMBOLIARIA    -->
                        
                        
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                    
                    
                        </div>
                    
                    
                    
                    
                 {{--    <!-- Obra -->
                    
                    <h4><strong>OBRA</strong></h4>  

                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <!-- ComboBox de Objetos -->
                    
                        <div class="form-group" name="objeto">
                        
                            <label for="objeto">OBJETO</label>
                        
                            <x-combo-box.objetos :content="$objetos"/>
                        
                        </div>
                    
                    </div>




                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                        <div class="form-group" name="tipologia">
                        
                        <!-- ComboBox de Tipologías -->
                        
                            <label for="tipología">TIPOLOGÍA</label>
                        
                            <x-combo-box.tipologias :content="$tipologias"/>
                        
                        </div>
                    
                    </div>  --}}





                    <!-- SUPERFICIE -->
                    
                    <h4><strong>SUPERFICIE (en m²)</strong></h4>  


                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">

                        <div class="form-group" name="superficie_a_construir">
                        
                        <!-- Entrada de Superficie a constuir -->  

                            <label for="nombre">A CONSTRUIR</label>
                            <input type="text" name="superficie_a_construir" class="form-control" value="{{$expediente[0]->superficie_a_construir}}">  

                        </div>
                    
                    </div> 




                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">

                        <div class="form-group" name="superficie_con_permiso">
                        
                        <!-- Entrada de Superficie con permiso -->     

                            <label for="nombre">CON PERMISO</label>
                            <input type="text" name="superficie_con_permiso" class="form-control" value="{{$expediente[0]->superficie_con_permiso}}">  

                        </div>
                    
                    </div> 




                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">

                        <div class="form-group" name="superficie_sin_permiso">
                        
                        <!-- Entrada de Superficie sin permiso --> 

                            <label for="nombre">SIN PERMISO</label>
                            <input type="text" name="superficie_sin_permiso" class="form-control" value="{{$expediente[0]->superficie_sin_permiso}}"> 
                        
                        </div>

                    </div> 
                    
                    
                    
                    
                    
                    
                    
                    
                    <!-- del Expediente -->


                  {{-- > --}}

                        


                         
                        
                       <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">

                        <div class="form-group">
                        
                        <!-- Entrada de Planos -->       
                            
                            <form action="upload" method="POST" enctype="multipart/form-data">
                                <label for="plano">PLANO</label>
                                
                                @csrf
                                <input type="file" name="plano" class="form-control" placeholder="vacío"> 
                            </form>
                        
                        </div>

                    </div>
                        
                        
                    




                <h5>Este formulario será verificado por la Administración del Colegio de Arquitectos.</h5>


                <!-- Botones -->       
                
                <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

                    <div class="form-group">

                        <button type="reset" class="btn btn-danger">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>

                    </div>

                </div>


                

        </div> <!-- div.row  -->    


             

            {!!Form::close()!!}


        </div>
    </div>


@endSection


