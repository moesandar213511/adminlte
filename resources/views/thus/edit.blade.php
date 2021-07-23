@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Thu
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($thu, ['route' => ['thus.update', $thu->id], 'method' => 'patch']) !!}

                        @include('thus.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection