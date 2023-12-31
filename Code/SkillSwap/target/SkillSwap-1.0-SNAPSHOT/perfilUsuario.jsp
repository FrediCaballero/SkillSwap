<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de Servicios</title>
        <%@include file="referencias.jsp" %>
        <%@include file="scripPremium.jsp" %>
    </head>

<body>
        <!--Menu Principal-->
        <%@include file="navbar.jsp" %>
    
    <div class="container emp-profile" >
           
                <div class="col-12 col-sm-12 col-md-10 col-lg-10">
                    <ul>
                            <p></p>
                            <p></p>
                            <p></p>
                    </ul>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://github.com/mdo.png" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Cambiar foto
                                <input type="file" name="file"/>
                            </div>
                    </div>
                </div>

                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                    
                                    </h5>
                                    <h6>
                                        
                                            Juan Perez


                                    <br>
                                    </h6>
                                    <p class="proile-rating">CALIFICACION : <span>8/10</span></p>
                                 <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Datos Personales</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Servicios</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="reto-tab" data-toggle="tab" href="#reto" role="tab" aria-controls="reto" aria-selected="false">Reto activo</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="historia-tab" data-toggle="tab" href="#historia" role="tab" aria-controls="historia" aria-selected="false">Historial de retos</a>
                                </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="solicitudes-tab" data-toggle="tab" href="#solicitudes" role="tab" aria-controls="solicitudes" aria-selected="false">Solicitudes de contratos</a>
                                    </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                                <button type="button" class="btn btn-success" name="btnAddMore" onclick="window.location.href='{{route('premium')}}'">
                                    Hazte Premium
                                </button>
                            <button type="button" class="profile-edit-btn" name="btnAddMore" data-toggle="modal" data-target="#myModal" >
                            Editar Perfil
                            </button>

                        <!-- The Modal -->
                            <div class="modal fade" id="myModal">
                                <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                    <h4 class="modal-title">Editar Perfil</h4>
                                    <button type="button" class="close" data-dismiss="modal">×</button>
                                    </div>

                                    <form action="{{route('update.user',\Auth::user())}}" method="POST" >
                                    {{ csrf_field() }}  @method("PATCH")
                                    <!-- Modal body -->
                                    <div class="modal-corpo">


                                        <div class="form-row">

                                            <div class="form-group col-md-6">
                                            <label for="inputEmail4">Nombre</label>
                                            <input type="text" name="name"  id="inputNombre" placeholder="Escriba su Nombre*" value="{{ old('name',$user->name)}}" />
                                            @error('name')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                            </div>

                                            <div class="form-group col-md-6">
                                            <label for="inputPassword4">Apellidos</label>
                                            <input type="text" name="lastname"  id="inputApellidos" placeholder="Escriba sus Apellidos*" value="{{ old('lastname',$user->lastname)}}" />
                                            @error('lastname')
                                            <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                            </div>

                                        </div>

                                        <div class="form-row">

                                            <div class="form-group col-md-6">
                                            <label for="inputEmail4">Correo</label>
                                            <input type="email" name="email"  id="inputCorreo" placeholder="Escriba su Correo*" value="{{ old('email',$user->email)}}"/>
                                            @if($errors->has('email'))
                                                <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('email') }}</strong>
                                                </span>
                                            @endif
                                            </div>

                                            <div class="form-group col-md-6">
                                            <label for="inputPassword4">Contraseña</label>
                                            <input type="password" name="password"  id="inputPassword" placeholder="Escriba su contraseña*" value="{{ old('password') }}"/>
                                            @error('password')
                                            <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                            </div>

                                        </div>

                                        <div class="form-row">
                                            
                                            <div class="form-group col-md-3">
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label for="inputNaci">Fecha de Nacimiento</label>
                                                <input  name="birthdate" type="text" placeholder="Fecha de Nacimiento" onclick="ocultarError();" onfocus="(this.type='date')" onblur="(this.type='text')" value="{{ old('birthdate',$user->birthdate)}}" />
                                                @error('birthdate')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>

                                            <div class="form-group col-md-3">
                                            </div>

                                        </div>


                                    </div>

                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                    <button type="submit" class="btn btn-outline-success">Guardar

                                    </button>

                                    <button id="cerrarBtn" type="button" class="btn btn-outline-danger" data-dismiss="modal">Cerrar</button>

                                    </div>

                                    </form>
                                </div>
                                </div>
                            </div>

                    </div>

                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>Mis contratos realizados</p>

                            <p>Contratos Pasados</p>

                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nombres</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Juan</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Apellidos</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Pérez</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Correo</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>juanPerez@hotmail.com</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>DNI</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>74917524</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Servicio</label>
                                            </div>
                                            <div class="col-md-6">

                                                <p> Confeccionista de prendas</p>
                                            
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nacimiento</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>24/09/1997</p>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                @foreach($user->UseOccIntermediate as $serviceUsers)
                                <div class="d-flex justify-content-between form-details-get">
                                    <input type="hidden" class="get-user-offer-input" name="userOffer" value="{{ $serviceUsers->use_id }}" required>
                                    <input type="hidden" class="get-price-offer-input" name="priceOffer" value="{{ $serviceUsers->precio }}" required>
                                    <input type="hidden" class="get-service-offer-input" name="serviceOffer" value="{{ $serviceUsers->id }}" required>
                                    <input type="hidden" class="get-type-offer-input" name="typeOfJob" value="1">
                                    @if($serviceUsers->use_occ_group_payment)
                                    @else
                                        <a href="{{ route('showProfileServiceOccupation',$serviceUsers->id) }}">{{ $serviceUsers->ser_occ_name }}</a>
                                    @endif










                                    @php
                                        $receivedServiceNow2 = false;
                                    @endphp
                                    @if(auth()->user()!=null)
                                        @if(auth()->user()->id == $serviceUsers->IntermediateUseOcc->id)
                                                @if($serviceUsers->use_occ_group_payment)
                                                @else

                                                    <button class="btn btn-outline-dark flex-shrink-0" disabled type="button">
                                                        <em class="bi-cart-fill me-1"></em>
                                                        Tu eres el del servicio
                                                    </button>

                                                @endif



                                        @else
                                            @foreach($serviceUsers->IntermediateOccContract as $contract)
                                                @if($contract->use_receive == auth()->user()->id)
                                                    @php
                                                        $receivedServiceNow2 =true;
                                                    @endphp
                                                @else
                                                @endif

                                            @endforeach
                                            @if($receivedServiceNow2 == true)
                                            <div class="text-danger">* Para comunicarte <br> con el que<br> ofrece el servicio<br>, presione <a href="">AQUI</a> </div>

                                            <button type="button" class="btn btn-secondary p-3 btn-details-now-data" disabled>
                                                Contratar
                                            </button>
                                            <br>
                                            @else
                                                @if($serviceUsers->use_occ_group_payment)
                                                @else

                                                    <button type="button" class="btn btn-secondary p-3 btn-details-now-data" onclick="window.location.href='{{ route('showProfileServiceOccupation',$serviceUsers->id) }}'">
                                                        Contratar
                                                    </button>
                                                @endif



                                            @endif
                                        @endif
                                    @else
                                        <button class="btn btn-outline-dark flex-shrink-0" onclick="window.location.href='{{ route('registrouser') }}'" type="button">
                                            <em class="bi-cart-fill me-1"></em>
                                            Contratar
                                        </button>

                                    @endif

                                    <br/>

                                </div>
                                @endforeach


                                @foreach($user->UseTalIntermediate as $serviceTalUsers)
                                    <div class="d-flex justify-content-between form-details-get">
                                        <input type="hidden" class="get-user-offer-input" name="userOffer" value="{{ $serviceTalUsers->use_id }}" required>
                                        <input type="hidden" class="get-price-offer-input" name="priceOffer" value="{{ $serviceTalUsers->precio }}" required>
                                        <input type="hidden" class="get-service-offer-input" name="serviceOffer" value="{{ $serviceTalUsers->id }}" required>
                                        <input type="hidden" class="get-type-offer-input" name="typeOfJob" value="2">

                                        <a href="{{ route('showProfileServiceTalent',$serviceTalUsers->id) }}">{{ $serviceTalUsers->ser_tal_name }}</a>

                                    @php
                                        $receivedServiceNow = false;
                                    @endphp
                                    @if(auth()->user()!=null)
                                        @if(auth()->user()->id == $serviceTalUsers->IntermediateUseTal->id)
                                            <button class="btn btn-outline-dark flex-shrink-0" disabled type="button">
                                                <em class="bi-cart-fill me-1"></em>
                                                Tu eres el del servicio
                                            </button>

                                        @else
                                            @foreach($serviceTalUsers->IntermetiateTalContract as $contract)
                                                @if($contract->use_receive == auth()->user()->id)
                                                    @php
                                                        $receivedServiceNow =true;
                                                    @endphp
                                                @else
                                                @endif

                                            @endforeach
                                            @if($receivedServiceNow == true)
                                            <div class="text-danger">* Para comunicarte <br> con el que<br> ofrece el servicio<br>, presione <a href="">AQUI</a> </div>

                                            <button type="button" class="btn btn-secondary p-3 btn-details-now-data" disabled>
                                                Contratar
                                            </button>
                                            <br>
                                            @else

                                            <button type="button" class="btn btn-secondary p-3" onclick="window.location.href='{{ route('showProfileServiceTalent',$serviceTalUsers->id) }}'">
                                                Contratar
                                            </button>



                                            @endif
                                        @endif
                                    @else
                                        <button class="btn btn-outline-dark flex-shrink-0" onclick="window.location.href='{{ route('registrouser') }}'" type="button">
                                            <em class="bi-cart-fill me-1"></em>
                                            Contratar
                                        </button>

                                    @endif
                                        <br/>
                                    </div>
                                @endforeach


                            </div>

                            <div class="tab-pane fade" id="reto" role="tabpanel" aria-labelledby="reto-tab">
                                @if(count($user->UseOccIntermediate->where('use_occ_group_payment',true))==0 )
                                    <div class="row pr-4 ml-2 py-3 px-1" >
                                        <div class="col-4 rounded " >
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRAvXbCfEK1M6djzeOmvBz82N4VozHuhjXgKV5LEvcuvbpzyoVUoYC99zeipVug8du4uk&usqp=CAU" class="rounded" style="width: 100% !important;" alt="imagen de servicio">
                                        </div>
                                        <div class="col-8">
                                            <h2 class="fs-4"> No tienes ningún reto registrado</h2>
                                            <a href="{{ route('offerMyServiceChange') }}" class= "badge badge-light text-dark">Registre su reto aquí</a>
                                        </div>
                                    </div>

                                    <div class="row col-sm-12">
                                        <div class="col-md-6">
                                            <label>Nombre del reto</label>

                                        </div>
                                        <div class="col-md-6">
                                            <a href="{{ route('showProfileServiceRetos',$retoActivo->id) }}" class="badge badge-light text-dark"><p>{{ $retoActivo->IntermediateChange->cha_name }} <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-up-right" viewBox="0 0 16 16">
                                                <path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5z"/>
                                                <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0v-5z"/>
                                            </svg> </p></a>

                                        </div>
                                    </div>


                                    <div class="row col-sm-12">
                                        <div class="col-md-6">
                                            <label>Meta</label>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="small">$ {{ $retoActivo->precio }}</p>
                                        </div>
                                    </div>

                                    @php
                                        $porcentaje = ($retoActivo->precio_actual*100/$retoActivo->precio);
                                    @endphp
                                    @if($porcentaje==0)
                                        <div class="col-sm-12 progress">
                                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: 100%" aria-valuenow="{{ $porcentaje }}" aria-valuemin="0" aria-valuemax="100">
                                                {{ $porcentaje }}%
                                            </div>
                                        </div>

                                    @else
                                        <div class="col-sm-12 progress">
                                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: {{ $porcentaje }}%;min-width:5%" aria-valuenow="{{ $porcentaje }}" aria-valuemin="0" aria-valuemax="100">
                                                {{ number_format($porcentaje,2) }}%
                                            </div>
                                        </div>
                                    @endif



                                    <br>
                                    <div class="row col-sm-12">
                                        <div class="col-sm-12 contenedor">
                                            @if($retoActivo->IntermediateChange->cha_video !=null)
                                                @php
                                                    $ytarray=explode("/", $retoActivo->IntermediateChange->cha_video);
                                                    $ytendstring=end($ytarray);
                                                    $ytendarray=explode("?v=", $ytendstring);
                                                    $ytendstring=end($ytendarray);
                                                    $ytendarray=explode("&", $ytendstring);
                                                    $ytcode=$ytendarray[0];
                                                    echo "<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/$ytcode\" title='VideoYoutube' frameborder=\"0\" allowfullscreen></iframe>";
                                                @endphp
                                                <br>
                                                <a href="{{ $serviceUsers->IntermediateChange->cha_video }}">Link del video</a>
                                            @else
                                                <h4>Aun no se subio ningun video</h4>
                                                @if(auth()->user()->id == $user->id)
                                                    <label for="" class="text-info">Se habilitara subir video cuando llegue por lo menos al 25% de las donaciones.
                                                        Se habilitara en el perfil del reto, de click <a href="{{ route('showProfileServiceRetos',$retoActivo->id) }}" >AQUI</a>
                                                    </label>
                                                @endif
                                            @endif


                                        </div>
                                    </div>

                                    <br>
                                    <div class="row col-sm-12">
                                        <div class="col-md-6">
                                            <label>Sobre el reto</label>
                                        </div>


                                        <div class="col-md-12">
                                            <p class="small">{{ $retoActivo->descripcion }}</p>
                                        </div>
                                    </div>



                                    <script>
                                        var reproductor = videojs('fm-video', {
                                            fluid: true
                                        });
                                    </script>

                                @endif




                            </div>



                            <div class="tab-pane fade" id="historia" role="tabpanel" aria-labelledby="historia-tab">

                                <div class="row">
                                    <div class="col-4">
                                      <div class="list-group" id="list-tab" role="tablist">

                                        @foreach($user->UseOccIntermediate->where('use_occ_group_payment',true) as $serviceUsers)
                                            @if($serviceUsers->IntermediateChange->cha_active)
                                                <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="{{ '#list-change-'.$serviceUsers->id}}"  role="tab" aria-controls="home">{{ $serviceUsers->IntermediateChange->cha_name }}</a>
                                            @else
                                                <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list" href="{{ '#list-change-'.$serviceUsers->id}}"  role="tab" aria-controls="home">{{ $serviceUsers->IntermediateChange->cha_name }}</a>
                                            @endif
                                        @endforeach
                                      </div>
                                    </div>
                                    <div class="col-8">
                                      <div class="tab-content rounded rounded-lg " id="nav-tabContent">


                                        @foreach($user->UseOccIntermediate->where('use_occ_group_payment',true) as $serviceUsers)
                                        @if($serviceUsers->IntermediateChange->cha_active)

                                        <div class="tab-pane fade show active bg-white rounded" id="{{ 'list-change-'.$serviceUsers->id}}" role="tabpanel" aria-labelledby="list-home-list">
                                            <div class="row col-sm-12">
                                                <div class="col-md-6">
                                                    <label>{{ $serviceUsers->IntermediateChange->cha_name }}</label>
                                                </div>
                                                <div class="col-md-6">
                                                    <a href="{{ route('showProfileServiceRetos',$serviceUsers->id) }}" class="badge badge-light text-dark"><p>Ir al perfil del reto <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-up-right" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5z"/>
                                                        <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0v-5z"/>
                                                      </svg> </p></a>

                                                </div>
                                            </div>
                                            <div class="container col-md-6">
                                                <img src="{{ $serviceUsers->imagen }}" alt="No existe miniatura">
                                            </div>

                                            <div class="row col-sm-12">

                                                <div class="col-md-6">
                                                    <br>
                                                    <label class="small">El reto está en curso.</label>


                                                </div>
                                            </div>


                                        </div>
                                        @else

                                        <div class="tab-pane fade bg-white rounded" id="{{ 'list-change-'.$serviceUsers->id}}" role="tabpanel" aria-labelledby="list-profile-list">
                                            <div class="row col-sm-12">
                                                <div class="col-md-6">
                                                    <label>Nombre del reto</label>
                                                </div>
                                                <div class="col-md-6">
                                                    <a href="{{ route('showProfileServiceRetos',$serviceUsers->id) }}" class="badge badge-light text-dark"><p>{{ $serviceUsers->IntermediateChange->cha_name }} <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-up-right" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5z"/>
                                                        <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0v-5z"/>
                                                      </svg> </p></a>

                                                </div>
                                            </div>


                                            <div class="row col-sm-12">
                                                <div class="col-md-6">
                                                    <label>Meta</label>
                                                </div>
                                                <div class="col-md-6">
                                                    <p class="small">$ {{ $serviceUsers->precio }}</p>
                                                </div>
                                            </div>


                                            <br>
                                            <div class="row col-sm-12">
                                                <div class="col-sm-12 contenedor">

                                                    @php
                                                        $ytarray=explode("/", $serviceUsers->IntermediateChange->cha_video);
                                                        $ytendstring=end($ytarray);
                                                        $ytendarray=explode("?v=", $ytendstring);
                                                        $ytendstring=end($ytendarray);
                                                        $ytendarray=explode("&", $ytendstring);
                                                        $ytcode=$ytendarray[0];
                                                        echo "<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/$ytcode\" title='VideoYoutube' frameborder=\"0\" allowfullscreen></iframe>";
                                                    @endphp
                                                    <br>
                                                    <a href="{{ $serviceUsers->IntermediateChange->cha_video }}">Link del video</a>
                                                </div>
                                            </div>

                                            <br>
                                            <div class="row col-sm-12">
                                                <div class="col-md-6">
                                                    <label>Sobre el reto</label>
                                                </div>


                                                <div class="col-md-12">
                                                    <p class="small">{{ $serviceUsers->descripcion }}</p>
                                                </div>
                                            </div>
                                        </div>

                                        @endif

                                        @endforeach

                                      </div>
                                    </div>
                                  </div>

                            </div>





                      
                                <div class="tab-pane fade" id="solicitudes" role="tabpanel" aria-labelledby="solicitudes-tab">
                                    @foreach ($user->UseContractOffer as $Contract)
                                        @if ($Contract->con_status == 1)
                                            @if ($Contract->use_tal_id !== null)
                                                <form action=" {{route('eject.contract')}} " method="POST">
                                                    @csrf
                                                    {{$Contract->IntermediateUseTal->ser_tal_name}}
                                                    <input type="hidden" name="contractId" value="{{ $Contract->id }}" required>
                                                    <button type="submit" class="btn btn-secondary p-3">Ejecutar Servicio</button>
                                                </form>
                                            @elseif($Contract->use_occ_id !== null)
                                                <form action=" {{route('eject.contract')}} " method="POST">
                                                    @csrf
                                                    {{$Contract->IntermediateUseOcc->ser_occ_name}}
                                                    <input type="hidden" name="contractId" value="{{ $Contract->id }}" required>
                                                    <button type="submit" class="btn btn-secondary p-3">Ejecutar Servicio</button>
                                                </form>

                           
                                    @if ($user->UseContractOffer->where('con_status',1)->count()== 0)
                                        No hay contratos pendientes disponibles
                   
                                </div>
                      


                        </div>
                    </div>
                </div>
        </div>

        <!--Footer-->
    <%@include file="footer.jsp" %>
    </body>
</html>
