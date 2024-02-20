<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ContactForm;

class ContactFormController extends Controller
{
    public function index()
    {
        $result = ContactForm::latest()->paginate(10);
        
        return view ('admin.contactform.index',compact('result'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'first_name'      => 'required',
            'user_email'      => 'required',
            'user_phone'      => 'required',
            'message'         => 'required', 
        ]);
       
        $data = $request ->all();       
        
        $contactform = new ContactForm;
        $contactform = ContactForm::create($data);

        return redirect ('/contact')->with('success','Your message has been sent successfully');
    }

    public function show(string $id)
    {
        $contactform = ContactForm::find($id);

        return view('admin.contactform.show',compact('contactform','id'));
        
    }

    public function destroy(string $id)
    {
        $contactForm = ContactForm::find($id);
        $contactForm -> delete();
 
        return redirect ('admin/contactform')->with('error',"Deleted Successfully");
    }

    public function status($id,$status)
    {
        //echo $id." ".$status;
        $contactform = ContactForm::find($id);
        $contactform->status =   $status ? $status : 0;
        $contactform->save();
        echo json_encode(array("status" => 1));
    }
}
