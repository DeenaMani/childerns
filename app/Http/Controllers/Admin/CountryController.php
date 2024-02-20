<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $results = Country::get();

        return view ('admin.country.index',compact('results'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view ('admin.country.create');
    }

    /**
     * country a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this -> validate ($request, [
            'country_name'   => 'required',
        ]);
        

        $data = $request->all();

        $country = new Country;
        $country = Country::create($data);


        return redirect ('admin/country')->with('success',"Added Successfully");
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
        $country = Country::find($id);

        return view ('admin.country.edit',compact('country','id'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $this -> validate ($request, [
            'country_name'   => 'required',
        ]);
        

        $data = $request->all();

        $country = Country::find($id);
        $country -> update($data);

        return redirect ('admin/country')->with('success',"Updated Successfully");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $country= Country::find($id);
        $country->delete();

        return redirect ('admin/country')->with('error',"Deleted Successfully");
    }

    public function status($id, $status)
    {
        //echo $id." ".$status;
        $country = Country::find($id);
        $country->status =   $status ? $status : 0;
        $country->save();
        echo json_encode(array("status" => 1));
    }


         
}