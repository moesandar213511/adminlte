<!-- Photo Field -->
<div class="form-group col-sm-6">
    {{-- {!! Form::label('photo', 'Photo:') !!}
    {!! Form::file('photo') !!} --}}
    <img src="{{asset('/upload/default.jpg')}}" style="width:150px;height:150px;" id="image" class="imagePreview img-thumbnail"><br>

    <label class="btn btn-primary upload_btn" style="width: 150px">
    Upload<input type="file" accept="image/png,image/jpeg,image/jpg" onchange="displaySelectedPhoto('upload_photo','image')" id="upload_photo" name="photo" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;" required>
    </label>
</div>
<div class="clearfix"></div>

<!-- Link Field -->
<div class="form-group col-sm-6">
    {!! Form::label('link', 'Link:') !!}
    {!! Form::text('link', null, ['class' => 'form-control']) !!}
</div>

<!-- Webpage Field -->
<div class="form-group col-sm-6">
    {!! Form::label('webpage', 'Webpage:') !!}<br>
    @foreach($webpages as $data)
    <label class="checkbox-inline">
        {{-- {!! Form::hidden('webpage',  $data) !!} --}}
        {!! Form::checkbox('webpage[]',$data->id,null) !!}
        {{ $data->name}}
    </label>
    @endforeach
</div>


<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{{ route('ads.index') }}" class="btn btn-default">Cancel</a>
</div>
