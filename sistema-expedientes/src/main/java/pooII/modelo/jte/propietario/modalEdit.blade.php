


<div class="modal fade modal-slide-in-right" aria-hidden="true"
 role="dialog" tabindex="-1" id="modal-Edit-{{$prop->propietario_id}}">
    
    

        



            @if (count($errors)>0)    
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li> {{$error}} </li>
                        @endforeach
                    
                    </ul>
                </div>
            @endif    
            
            

            
            
            {!! Form::model(['method'=>'PATCH', 'route'=>['propietario.update', $prop->propietario_id]] ) !!}
                {{ Form::token() }}


                <!-- Entrada de Nombre -->
                <div class="modal-dialog">
                    <div class="modal-content">
        
        
                        <div class="modal-header">


                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"> x </span>    
                            </button>



                            <h3 class="modal-title">Editar Propietario </h3>
                            
                            
                            
                            <div class="modal-body"></div>
                            
                                <div class="form-group">
                                    <label for="nombre">Nombre</label>
                                    <input type="text" name="nombre" class="form-control" placeholder="Nombre...">
                                
                                </div>
                            
                            
                            
                                <!-- Entrada de Apellido -->                
                                <div class="form-group">
                                
                                    <label for="nombre">Apellido</label>
                                    <input type="text" name="apellido" class="form-control" placeholder="Apellido...">
                                
                                </div>
                            
                            
                            
                                <!-- Entrada de Cuit -->                
                                <div class="form-group">
                                
                                    <label for="nombre">Cuit</label>
                                    <input type="text" name="cuit" class="form-control" placeholder="Cuit...">
                                
                                </div>
                        



                            </div>


                        
                            <!-- Botones -->                
                            <div class="form-group">
                                <button class="col-lg-4 col-md-4 col-sm-4 col-xs-12 btn btn-danger" type="reset">Cancelar</button>
                                <button class="col-lg-8 col-md-8 col-sm-8 col-xs-12 btn btn-primary" type="submit" >Guardar</button>
                            
                                <br><br>
                            </div>
                        </div>
                    </div>
                </div>
            
            {!!Form::close()!!}


   



</div>
<div  id="test">