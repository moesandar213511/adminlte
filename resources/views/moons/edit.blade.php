@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Moon
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($moon, ['route' => ['moons.update', $moon->id], 'method' => 'patch']) !!}

                        @include('moons.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection