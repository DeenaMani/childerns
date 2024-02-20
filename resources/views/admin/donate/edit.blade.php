@extends('layouts.admin')

@section('title','Imazine | Dashboard')

@section('main-content')
<div class="page-content">
        <div class="page-title-box">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-5 col-xl-6">
                        <div class="page-title">
                            <h3 class="mb-1 font-weight-bold">Donate</h3>
                        </div>
                    </div>
                </div>
            </div>
       </div>

        <div class="page-content-warpper mt--45">
            <div class="container-fluid">
                <div class="card ">
                    <div class="card-header">
                        <h4>Edit Donate</h4>               
                    </div>
                    <div class="card-body">
                         @include('layouts.partials.messages')
                        <form action="{{ url('admin/donate/'.$donate->id) }}" method="post" enctype="multipart/form-data" >
                            @csrf
                            @method('PUT')
                            <div class="col-lg-12">
                                <div class="row">

                                    <div class="col-lg-6">
                                        <label for="name"> Name </label>
                                        <input type="Text" class="form-control mb-4" name="name" value="{{$donate->name}}" required> 
                                    </div>

                                    <div class="col-lg-6">
                                        <label for="account_number"> Account Number </label>
                                        <input type="Text" class="form-control mb-4" name="account_number" value="{{$donate->account_number}}" required> 
                                    </div>

                                    <div class="col-lg-6">
                                        <label for="bank"> Bank Name </label>
                                        <input type="Text" class="form-control mb-4" name="bank" value="{{$donate->bank}}" required> 
                                    </div>

                                    <div class="col-lg-6">
                                        <label for="ifsc_code"> IFSC Code </label>
                                        <input type="Text" class="form-control mb-4" name="ifsc_code" value="{{$donate->ifsc_code}}" required> 
                                    </div>
                                
                                    <div class="col-lg-6">
                                        <label for="phone"> Mobile Number </label>
                                        <input type="tel" class="form-control mb-4" name="phone" value="{{$donate->phone}}" required>
                                    </div>

                                    <div class="col-lg-6">
                                        <label for="email"> E Mail </label>
                                        <input type="email" class="form-control mb-4" name="email" value="{{$donate->email}}" required>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="upi_number"> UPI Number </label>
                                        <input type="text" class="form-control mb-4" name="upi_number" value="{{$donate->upi_number}}" required>
                                    </div>

                                    <div class="col-lg-12">
                                        <input type="submit" class="btn btn-primary text-white" value="Save Donate">
                                    </div>
                                    
                                </div>
                            </div>                                                          
                        </form>
                    </div>
                </div> 
            </div> 
        </div>

</div> 
 @endsection