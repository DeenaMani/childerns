<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Addgallery;
use App\Models\Gallery;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $results = Gallery::all();

        $statusMapping = [
            1 => 'photos',
            2 => 'Videos'
        ];
    
        $results->transform(function ($result) use ($statusMapping) {
            $result->type = $statusMapping[$result->type] ?? 'Unknown';
            return $result;
        });
        
        return view ('admin.gallery.index',compact('results'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view ('admin.gallery.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this -> validate ($request,[
            'type'       => 'required',
            'year'       => 'required',
            'title'      => 'required',
            'image'      => 'required',
        ]);

        $data = $request ->all();

        if ($request->hasfile('image'))
        {  //check file present or not
            $images = $request->file('image'); //get the file
            $image = time().'.'.$images->getClientOriginalExtension();
            $destinationPath = public_path('/image/gallery'); //public path folder dir
            $images->move($destinationPath, $image);  //mve to destination you mentioned 
            $data['image']=$image;
        } 

        $gallery = new Gallery;
        $gallery = Gallery::create($data);

        return redirect('admin/gallery')->with('success',"Added Successfully");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $gallery = Gallery::find($id);
        return view ('admin.gallery.edit',compact('gallery','id'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $this -> validate ($request, [
            'type'    => 'required',
            'year'    => 'required',
            'title'   => 'required',
         ]);
 
         $data = $request ->all();

         if ($request->hasfile('image'))
         {  //check file present or not
             $images = $request->file('image'); //get the file
             $image = time().'.'.$images->getClientOriginalExtension();
             $destinationPath = public_path('/image/gallery'); //public path folder dir
             $images->move($destinationPath, $image);  //mve to destination you mentioned 
             $data['image']=$image;
         } 

         if ($request->type != 2) {
            
            $data['video_link'] = null; 
        } else {
            
            $data['video_link'] = $request->video_link;
        }

         
         $gallery = Gallery::find($id);
         $gallery -> update($data);
 
         return redirect ('admin/gallery')->with('success',"updated Successfully");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $gallery = Gallery::find($id);
        $gallery -> delete();

        return redirect ('admin/gallery')->with('error',"Deleted Successfully");
    }

    public function status($id,$status)
    {
        //echo $id." ".$status;
        $gallery = Gallery::find($id);
        $gallery->status =   $status ? $status : 0;
        $gallery->save();
        echo json_encode(array("status" => 1));
    }

    public function getgallery($id) {

        $data = Gallery::find($id);

        $galleries = $data->map(function ($gallery) {
            return [
                'id' => $gallery->id,
                'gallery_type' => $gallery->type,
            ];
        });
      
        return response()->json($galleries);

    }

    public function add_gallery($id) {

        $results = Addgallery::where('addgalleries.gallery_id',$id)->get();

        $gallery = Gallery::where('galleries.id',$id)->first();

        return view ('admin.gallery.addgallery',compact('results','id','gallery'));
    }


    public function gallery_store(Request $request)
    {
        // Validate request data
        $request->validate([
            'title'      => 'required',
            'image'      => 'required',
            'video_link' => 'nullable|url'
        ]);

        $data = $request->all();

        if ($request->hasfile('image'))
        {  //check file present or not
            $images = $request->file('image'); //get the file
            $image = time().'.'.$images->getClientOriginalExtension();
            $destinationPath = public_path('/image/gallery'); //public path folder dir
            $images->move($destinationPath, $image);  //move to destination you mentioned 
            $data['image']=$image;
        } 

        $gallery = new Addgallery;
        $gallery = Addgallery::create($data);

        return back()->with('success','Added Successfully');
    }

    public function delete($id)
    {
        $gallery = Addgallery::find($id);
        if (!$gallery) {
            return  back()->with('error',"Gallery Error delete");
        }

        $gallery->delete();

        return  back()->with('error', 'Gallery deleted successfully');
    }
}
