@extends('layouts.admin')

@section('title','Imazine | Dashboard')

@section('main-content')
<div class="page-content">
        <div class="page-title-box">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-5 col-xl-6">
                        <div class="page-title">
                            <h3 class="mb-1 font-weight-bold">Edit Country</h3>
                        </div>
                    </div>
                </div>
            </div>
       </div>
        
        <div class="page-content-warpper mt--45">
            <div class="container-fluid">
                <div class="card ">
                    <div class="card-header">
                        <h4>Edit Country</h4>   
                        @include('layouts.partials.messages')                
                    </div>
                    
                    <div class="card-body">

                        <form action="{{ url('admin/country/'.$country->id) }}" method="post" enctype="multipart/form-data" >
                            @csrf
                            @method('PUT')
                            <div class="col-lg-6">
                                <div class="col-lg-12">
                                    <label for="country_name"> Country Name </label>
                                    <input type="Text" class="form-control mb-4"  name="country_name" value="{{$country->country_name}}">
                                </div>
        
                                <div class="col-lg-12 my-5 pt-3" >
                                    <input type="submit" class="btn btn-primary text-white" style="float:right;" value="Update country">
                                </div>  
                            </div>                                   
                        </form>
                    </div>
                </div> 
            </div> 
        </div>

</div> 
 @endsection