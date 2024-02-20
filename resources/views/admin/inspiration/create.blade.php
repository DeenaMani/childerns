@extends('layouts.admin')

@section('title','Imazine | Dashboard')

@section('main-content')
<div class="page-content">
        <div class="page-title-box">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-5 col-xl-6">
                        <div class="page-title">
                            <h3 class="mb-1 font-weight-bold">Add Inspirational People</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         
        <div class="page-content-warpper mt--45">
            <div class="container-fluid">
                <div class="card mt--45">
                    <div class="card-header">

                    <h1>Add Inspirational People</h1>
                    </div>
                    <div class="card-body text-dark">
                         @include('layouts.partials.messages')
                        <form action="{{ url('admin/inspiration') }}" method="post" enctype="multipart/form-data" class="row">
                            @csrf

                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label for="image">Image </label>
                                        <input type="file" class="form-control mb-4" name="image" value="">
                                    </div>

                                    <div class="col-lg-6">
                                        <label for="name">Title </label>
                                        <input type="text" class="form-control mb-4" name="name" value="">
                                    </div>

                                    <div class="col-lg-12 pt-4">
                                        <input type="submit" class="btn btn-primary text-white " value="Add inspiration People">
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
        