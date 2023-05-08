<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <title>News</title>
</head>

<body>

    <div class="container mt-3">
        <div class="row">
            <div class="col-12">
                {{-- success --}}
                @if (session('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif
                {{-- warning --}}
                @if (session('warning'))
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        {{ session('warning') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif
                {{-- danger --}}
                @if (session('danger'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        {{ session('danger') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif
            </div>
            <div class="col-12 text-center">
                <h1>News Table</h1>
            </div>
            <div class="col-12 text-end">
                <a href="{{ route('news.create') }}" class="btn btn-success btn-sm"><i
                        class="bi bi-plus-square"></i></a>
            </div>
            <div class="col-12 mt-3">
                <table class="table table-bordered text-center">
                    <thead>
                        <tr>
                            <th>№</th>
                            <th>Img</th>
                            <th>Title</th>
                            <th>Text</th>
                            <th>Viewers</th>
                            <th colspan="3">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($news as $new)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>
                                    <img width="50" height="30" src="{{ asset('/storage/' . $new->image) }}"
                                        alt="{{ $new->title }} img">
                                </td>
                                <td>{{ $new->title }}</td>
                                <td>{{ Str::limit($new->text, 10) }}</td>
                                <td>{{ $new->viewers }}</td>
                                <td><a href="{{ route('news.show', $new->id) }}" class="btn btn-info btn-sm"><i
                                            class="bi bi-eye"></i></a></td>
                                <td><a href="{{ route('news.edit', $new->id) }}" class="btn btn-warning btn-sm"><i
                                            class="bi bi-pencil"></i></a></td>
                                <td>
                                    <form action="{{ route('news.destroy', $new->id) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <label class="btn btn-danger btn-sm" for="del{{ $new->id }}"><i
                                                class="bi bi-trash"></i></label>
                                        <input type="submit" onclick="return confirm('O\'chirishni xoxlaysizmi?')"
                                            id="del{{ $new->id }}" hidden>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>
</body>

</html>
