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
    <label for="description">description</label>
    <textarea name="description" id="description" class="form-control"></textarea>
</div>
<button class="btn btn-info">Save categoty</button>
