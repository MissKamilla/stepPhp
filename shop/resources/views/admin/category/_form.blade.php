@csrf
<div class="form-group">
    <label for="name">Category name</label>
    <input type="text" name="name" id="name" 
        class="form-control @error('name') is-invalid @enderror"
        value="{{old('name', $category->name??'')}}">
    @error('name')
        <div class="invalide-feedback">{{ $message }}</div>
    @enderror
</div>
<div class="form-group">
    <label for="slug">Category slug</label>
    <input type="text" name="slug" id="slug" 
        class="form-control @error('slug') is-invalid @enderror" 
        value="{{old('slug',$category->slug??'')}}">
    @error('slug')
        <div class="invalide-feedback">{{$message}}</div>
    @enderror
</div>
<div class="form-group">
    @if (isset($category))
        <img src="{{$category->img}}" alt="">
    @endif
    
    <label for="file">Category file</label>
    <input type="file" name="img" id="file" 
        class="form-control @error('img') is-invalid @enderror">
    @error('img')
        <div class="invalide-feedback">{{$message}}</div>
        @enderror
</div>

<div class="form-group">
    <label for="description">Description</label>
    <textarea name="description" id="description" class="form-control"></textarea>
</div>


<div class="input-group">
    <span class="input-group-btn">
      <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
        <i class="fa fa-picture-o"></i> Choose
      </a>
    </span>
    <input id="thumbnail" class="form-control" type="text" name="filepath">
  </div>
  <div id="holder" style="margin-top:15px;max-height:100px;"></div>
<br>
<button class="btn btn-info">Save categoty</button>
