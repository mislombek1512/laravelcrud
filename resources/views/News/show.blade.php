<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="{{ asset('owl/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('owl/owl.theme.default.min.css') }}">
    <title>News</title>
</head>

<body>

    <div class="container mt-3">
        <div class="row justify-content-center">
            <div class="col-12 text-center">
                <h1>{{ $news->title }}</h1>
            </div>
            <div class="col-10 mt-3 mb-3">
                <img class="card-img-top" height="350" src="{{ asset('/storage/' . $news->image) }}"
                    alt="{{ $news->title }} img">
            </div>
            <div class="col-12 mb-4">
                <a href="{{ route('news.index') }}" class="btn btn-info btn-sm"><i class="bi bi-arrow-left"></i>
                    Back</a>
                <a href="{{ route('news.edit', $news->id) }}" class="btn btn-warning btn-sm"><i
                        class="bi bi-pencil"></i> Edit</a>
                <form class="d-inline" action="{{ route('news.destroy', $news->id) }}" method="post">
                    @csrf
                    @method('DELETE')
                    <label class="btn btn-danger btn-sm" for="del"><i class="bi bi-trash"></i> Delete</label>
                    <input type="submit" onclick="return confirm('O\'chirishni xoxlaysizmi?')" id="del" hidden>
                </form>
            </div>
            <div class="col-12 mb-3">
                <p style="text-align: justify">{{ $news->text }}</p>
            </div>

            <div class="col-12 mb-3">
                <div class="owl-carousel">
                    @foreach ($multipleImages as $item)
                        <img class="card-img-top" height="300" src="{{ asset('/storage/uploads/' . $item) }}"
                            alt="{{ $news->title }} img">
                    @endforeach
                </div>
            </div>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>

    <script src="{{ asset('owl/jquery.min.js') }}"></script>
    <script src="{{ asset('owl/owl.carousel.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(".owl-carousel").owlCarousel({
                margin: 20,
                loop: true,
                items: 4,
                autoplay: true,
                autoplayTimeout: 1000
            });
        });
    </script>
</body>

</html>
