<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <title>Create New</title>
</head>

<body>

<div class="container mt-3">
    <div class="row">
        <div class="col-12 text-center">
            <h1>{{$news->title}} edit</h1>
        </div>
        <div class="col-12 text-end">
            <a href="{{ route('news.index') }}" class="btn btn-warning btn-sm"><i class="bi bi-arrow-left"></i></a>
        </div>
        <div class="col-12 mt-3">
            <form class="row" action="{{ route('news.update', $news->id) }}" method="post" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <div class="col-6 mb-3">
                    <label for="title" class="form-label">Title</label>
                    <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" id="title" value="{{$news->title}}" placeholder="Enter title">
                    @error('title')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>

                <div class="col-6 mb-3">
                    <label for="file" class="form-label">Image</label>
                    <input type="file" class="form-control @error('image') is-invalid @enderror" name="image" value="{{$news->image}}" id="file">
                    @error('image')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>

                <div class="col-12 mb-3">
                    <label for="text" class="form-label">Text</label>
                    <textarea name="text" class="form-control @error('text') is-invalid @enderror" id="text" rows="3" placeholder="Enter text">{{$news->text}}</textarea>
                    @error('text')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
</script>
</body>

</html>
