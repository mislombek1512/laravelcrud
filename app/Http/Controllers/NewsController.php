<?php

namespace App\Http\Controllers;

use App\Models\News;
use Carbon\Carbon;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $news = News::all();
        return view('News.index', compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('News.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'image' => 'required',
            'text' => 'required',
            'images' => 'required',
        ]);

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store("uploads", 'public');
        }

        $data = [];
        if ($request->hasFile('images')) {
            foreach ($request->file('images') as $image) {
                $name = time() . $image->getClientOriginalName() . '.' . $image->getClientOriginalExtension();
                $destinationPath = public_path("storage/uploads");
                $image->move($destinationPath, $name);
                $data[] = $name;
            }
        }

        $requestData = $request->all();
        $requestData['image'] = $path;
        $requestData['images'] = json_encode($data);
        News::create($requestData);

        return redirect()->route('news.index')->with('success', 'News added successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(News $news)
    {
        $news->update([
            'viewers' =>  $news->viewers + 1
        ]);
        $multipleImages = json_decode($news->images);
        return view('News.show', compact('news','multipleImages'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(News $news)
    {
        return view('News.edit', compact('news'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, News $news)
    {
        $this->validate($request, [
            'title' => 'required',
            'text' => 'required',
        ]);

        $requestData = $request->all();

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store("uploads", 'public');
            $requestData['image'] = $path;
        }

        $news->update($requestData);

        return redirect()->route('news.index')->with('warning', 'News updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(News $news)
    {
        $news->delete();
        return redirect()->route('news.index')->with('danger', 'News deleted successfully');
    }
}
