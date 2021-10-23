
@extends ('layouts.admin')





@section('contenido')

    {{-- {{dd($propietarios);}}  --}}

   
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="test">
      
            <h3>Propietarios  
                <a href="" data-target="#modal-Create" data-toggle="modal"><button class="btn btn-success">Nuevo </button>   </a>         
            </h3>  
    
    </div>

    @include('propietario.modalCreate')


    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="test">
        @include('propietario.search')
    </div>



    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-condensed table-hover">
                    <thead>
                        {{-- <th>Id</th> --}}
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Cuit</th>
                        {{-- <th>Alta</th> --}}
                        <th>Opciones</th>

                    </thead>


                    @foreach ($propietarios as $prop)
                        <tr>
                           {{--  <td>{{$prop->propietario_id}}</td> --}}
                            <td>{{$prop->propietario_nombre}}</td>
                            <td>{{$prop->propietario_apellido}}</td>
                            <td>{{$prop->propietario_cuit}}</td>
                            {{-- <td>{{$prop->alta}}</td> --}}

                            <td>
                                {{-- <a href="{{route('propietario.edit', ['id' => $prop->propietario_id])}}"><button class="btn btn-info">Editar</button></a> --}}

                                <a href="" data-target="#modal-Edit-{{$prop->propietario_id}}" data-toggle="modal"><button class="btn btn-info">Editar</button></a>
                                
                                <a href="" data-target="#modal-delete-{{$prop->propietario_id}}" data-toggle="modal"><button class="btn btn-danger">Eliminar</button></a>
                            </td>    
                        </tr>
                    
                        @include('propietario.modalEdit')
                        @include('propietario.modal')


                    @endforeach
                </table>
            </div>
            <!-- para paginar {{$propietarios->render()}} -->

        </div>





@endSection


