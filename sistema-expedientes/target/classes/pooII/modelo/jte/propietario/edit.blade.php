@extends ('layouts.admin')




@section('contenido')

    <div class="row">
    
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <h3>Editar Propietario: {{$propietario->nombre}} </h3>
            
            
            
            @if (count($errors)>0)    
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li> {{$error}} </li>
                        @endforeach
                    
                    </ul>
                </div>
            @endif    
            
            
                
            
            
            {!! Form::model($propietario, ['method'=>'PATCH', 'route'=>['propietario.update', $propietario->propietario_id]] ) !!}
                {{ Form::token() }}


                <!-- Entrada de Nombre -->
                <div class="form-group">

                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" class="form-control" value="{{$propietario->nombre}}" placeholder="Nombre...">

                </div>



                <!-- Entrada de Apellido -->                
                <div class="form-group">

                    <label for="nombre">Apellido</label>
                    <input type="text" name="apellido" class="form-control" value="{{$propietario->apellido}}" placeholder="Apellido...">

                </div>



                <!-- Entrada de Cuit -->                
                <div class="form-group">

                    <label for="nombre">Cuit</label>
                    <input type="text" name="cuit" class="form-control" value="{{$propietario->cuit}}" placeholder="Cuit...">
                
                </div>



                <!-- Botones -->                
                <div class="form-group">

                    <button type="reset" class="btn btn-danger">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>

                </div>
             

            {!!Form::close()!!}


        </div>
    </div>


@endSection


