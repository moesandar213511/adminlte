@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Aung
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($aung, ['route' => ['aungs.update', $aung->id], 'method' => 'patch']) !!}

                        @include('aungs.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection