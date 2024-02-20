<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Donate;

class DonateController extends Controller
{

    public function store (Request $request) 
    {
        $this -> validate($request, [
            'name'           => 'required',
            'bank'           => 'required',
            'account_number' => 'required',
            'ifsc_code'      => 'required',
            'email'          => 'required',
            'phone'          => 'required',
            'upi_number'     => 'required',
        ]);

        $data = $request->all();


        $donate = new Donate;
        $donate = Donate::create($data);

        return redirect ('admin/donate')->with('success',"Added Successfully");
    }

    public function edit ($id)
    {
        $donate = Donate::find(1);
        return view ('admin.donate.edit',compact('donate'));
    }

    public function update(Request $request,$id)
    {
        $this -> validate($request, [
            'name'           => 'required',
            'bank'           => 'required',
            'account_number' => 'required',
            'ifsc_code'      => 'required',
            'email'          => 'required',
            'phone'          => 'required',
            'upi_number'     => 'required',
        ]);

        $data = $request->all();

        $donate = Donate::find(1);
        $donate -> update($data);

        return redirect ('admin/donate/'.$id."/edit")->with('success','Save Changes Successfully..');
    }

} 
