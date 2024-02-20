@extends('layouts.admin')

@section('title','Imazine | Dashboard')

@section('main-content')
<div class="page-content">
        <div class="page-title-box">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-5 col-xl-6">
                        <div class="page-title">
                            <h3 class="mb-1 font-weight-bold">Contact Form</h3>
                        </div>
                    </div>
                </div>
            </div>
       </div>
    
        <div class="page-content-warpper mt--45">
            <div class="container-fluid">
                <div class="card ">
                    <div class="card-header">
                        <h4>Contact Form show</h4>                   
                    </div>

                    <div class="card-body text-dark">

                        <div class="row m-0">
                            
                            <div class="col-lg-6">
                                <label for="first_name"> First Name </label>
                                <input type="text" class="form-control mb-3" name="first_name" value="{{$contactform->first_name}}" disabled>
                            </div>

                            <div class="col-lg-6">
                                <label for="middle_name"> Middle Name </label>
                                <input type="text" class="form-control mb-3" name="middle_name"value="{{$contactform->middle_name}}" disabled>
                            </div>

                            <div class="col-lg-6">
                                <label for="last_name"> Last Name </label>
                                <input type="text" class="form-control mb-3" name="last_name"  value="{{$contactform->last_name}}" disabled>
                            </div>

                            <div class="col-lg-6">
                                <label for="email"> Email Address </label>
                                <input type="text" class="form-control mb-3" name="email"  value="{{$contactform->user_email}}" disabled>
                            </div>

                            <div class="col-lg-6">
                                <label for="phone"> Phone Number </label>
                                <input type="text" class="form-control mb-3" name="phone"  value="{{$contactform->user_phone}}" disabled>
                            </div>
                            
                            <div class="col-lg-12">
                                <label for="message">Suggestions / Feedback</label>
                                <textarea  class="form-control" disabled>{{$contactform->message}}</textarea>
                            </div>

                            <div class="col-lg-12 p-3 justify-content-end">
                                <a href="{{ url('admin/contactform') }}" class="btn btn-primary text-white" style="float:right;"> Go Back</a>
                            </div>
                        </div>
                        
                    </div>
                </div> 
            </div> 
        </div>

</div> 
 @endsection