@csrf
<div class="form-group">
    <label for="name">Product name</label>
    <input type="text" name="name" id="name" 
        class="form-control @error('name') is-invalid @enderror"
        value="{{old('name', $product->name??'')}}">
    @error('name')
        <div class="invalide-feedback">{{ $message }}</div>
    @enderror
</div>
<div class="form-group">
    <label for="slug">Product slug</label>
    <input type="text" name="slug" id="slug" 
        class="form-control @error('slug') is-invalid @enderror" 
        value="{{old('slug',$product->slug??'')}}">
    @error('slug')
        <div class="invalide-feedback">{{$message}}</div>
    @enderror
</div>
<div class="form-group">
    @if (isset($product))
        <img src="{{$product->img}}" alt="" style="width:200px">
    @endif
    
    <label for="file">Product file</label>
    <input type="file" name="img" id="file" 
        class="form-control @error('img') is-invalid @enderror">
    @error('img')
        <div class="invalide-feedback">{{$message}}</div>
        @enderror
</div>

<div class="form-group">
    <label for="price">Product price</label>
    <input type="text" name="price" id="price" 
        class="form-control @error('price') is-invalid @enderror" 
        value="{{old('price',$product->price??'')}}">
    @error('price')
        <div class="invalide-feedback">{{$message}}</div>
    @enderror
</div>

<div class="form-group">
    <label for="description">Description</label>
    <textarea name="description" id="description" class="form-control"></textarea>
</div>

<div class="form-group">
    <label for="components">Components</label>
    <textarea name="components" id="components" class="form-control"></textarea>
</div>


  <div id="holder" style="margin-top:15px;max-height:100px;"></div>
<br>
<button class="btn btn-info">Save product</button>
