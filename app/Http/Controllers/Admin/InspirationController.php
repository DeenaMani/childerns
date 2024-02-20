<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Inspiration;

class InspirationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $results = Inspiration::all();
        
        return view ('admin.inspiration.index',compact('results'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view ('admin.inspiration.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this -> validate ($request,[
            'name' => 'required',
            'image' => 'required',
        ]);

        $data = $request ->all();

        if ($request->hasfile('image'))
        {  //check file present or not
            $images = $request->file('image'); //get the file
            $image = time().'.'.$images->getClientOriginalExtension();
            $destinationPath = public_path('/image/inspiration'); //public path folder dir
            $images->move($destinationPath, $image);  //mve to destination you mentioned 
            $data['image']=$image;
        } 

        $inspiration = new Inspiration;
        $inspiration = Inspiration::create($data);

        return redirect('admin/inspiration')->with('success',"Added Successfully");
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
        $inspiration = Inspiration::find($id);
        return view ('admin.inspiration.edit',compact('inspiration','id'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $this -> validate ($request, [
            'name' => 'required',
         ]);
 
         $data = $request ->all();

         if ($request->hasfile('image'))
         {  //check file present or not
             $images = $request->file('image'); //get the file
             $image = time().'.'.$images->getClientOriginalExtension();
             $destinationPath = public_path('/image/inspiration'); //public path folder dir
             $images->move($destinationPath, $image);  //mve to destination you mentioned 
             $data['image']=$image;
         } 

         
         $inspiration =inspiration::find($id);
         $inspiration -> update($data);
 
         return redirect ('admin/inspiration')->with('success',"updated Successfully");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $inspiration=inspiration::find($id);
        $inspiration -> delete();

        return redirect ('admin/inspiration')->with('error',"Deleted Successfully");
    }

    public function status($id,$status)
    {
        //echo $id." ".$status;
        $inspiration = Inspiration::find($id);
        $inspiration->status =   $status ? $status : 0;
        $inspiration->save();
        echo json_encode(array("status" => 1));
    }
}
