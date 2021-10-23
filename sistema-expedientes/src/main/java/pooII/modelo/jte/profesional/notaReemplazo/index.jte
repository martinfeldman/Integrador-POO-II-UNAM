
@extends ('layouts.admin')





@section('contenido')

  
   {{--  {{ dd($expedientes);  }} --}}
    <div class="row">

        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <h3>Expedientes <a href="{{url('expediente/create')}}">
                <button class="btn btn-success">Nuevo</button></a>
            </h3>
            @include('administrativo.expediente.search')
            
            
        </div>

    </div>
    


    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-condensed table-hover">
                    <thead>
                        <th class="col-lg-1 col-md-1 col-sm-1 col-xs-12">Numero Expediente</th>
                        <th>Profesional</th>
                        <th>Propietario</th>
                        <th>Tipologia</th>
                        <th>Tareas</th>
                        <th>Fecha Inicio</th>
                        <th class="col-lg-1 col-md-1 col-sm-1 col-xs-12">Partida/s Inmobiliaria/s</th>
                        <th>Opciones</th>

                    </thead>


                    @foreach ($expedientes as $expt)
                        <tr>
                            <td>{{$expt->expediente_numero}}</td>
    

                            <td>{{$expt->profesional_nombre}} {{$expt->profesional_apellido}}</td>

                            <td>{{$expt->propietario_nombre}} {{$expt->propietario_apellido}}</td>

                            
                            <td>{{$expt->tipologia}}</td>
                                

                            <td>{{$expt->tipo_tarea}}</td>


                            <td>{{$expt->fecha_inicio}}</td>


                            <td>{{$expt->partida_inmobiliaria_numero}}</td>


                        {{-- Botones --}}
                            <td>
                                <a href="{{route('expediente.show', ['id' => $expt->expediente_id])}}"><button class="btn btn-success">Ver</button></a>

                                <a href="{{route('expediente.edit', ['id' => $expt->expediente_id])}}"><button class="btn btn-info">Editar</button></a>
                                
                                {{-- <a href="" data-target="#modal-delete-{{$expt->expediente_id}}" data-toggle="modal"><button class="btn btn-danger">Eliminar</button></a> --}}
                            </td>  

                        </tr>
                    

                        @include('administrativo.expediente.modal')


                    @endforeach
                </table>
            </div>
            {{-- <!-- para paginar {{$expedientes->render()}} --> --}}

        </div>





@endSection


