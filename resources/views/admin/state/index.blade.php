@extends('layouts.admin')

@section('title','Imazine | Dashboard')

@section('main-content')
<div class="page-content">
        <div class="page-title-box">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-5 col-xl-6">
                        <div class="page-title">
                            <h2 class="mb-1 font-weight-bold text-white">State</h2>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="page-content-warpper mt--45">
            <div class="container-fluid">
                <div class="card ">
                    <div class="card-header row">

                        <div class="col-lg-9">
                        <h4>State</h4> 
                        </div>

                        <div class="col-lg-3">
                            <a href="{{url('admin/state/create')}}" class="btn btn-primary me-5" style="float:right;"> Add <i class="bx bx-plus"></i></a> 
                        </div>
                    </div>                
                 
                    <div class="card-body">

                         @include('layouts.partials.messages')
                        <table class="table text-center mb-0" id="datatable">
                            <thead>
                                <tr>
                                    <th> Id </th>
                                    <th> Country </th>
                                    <th> State </th>
                                    <th> Status</th>
                                    <th> Action </th>
                                </tr>
                            </thead>
                        
                            <tbody>
                                @foreach ($results as $key => $data)
                                <tr>
                                    <td> {{ $loop->index + 1 }}  </td>
                                    <td> {{$data->country_name}} </td>
                                    <td> {{$data->state_name}} </td>
                                    <td> <div class="form-check form-switch">
                                            <input data-id="{{$data->id}}" class="toggle-class" type="checkbox" data-onstyle="success" data-offstyle="danger" data-toggle="toggle" 
                                            data-on="Active" data-off="InActive" {{ $data->status ? 'checked' : '' }}>
                                        </div>
                                    </td>
                                    <td class="row justify-content-center"> 
                                        <a href="{{ url('admin/state/'.$data->id.'/edit') }}" class=" btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a>
                                         <form action="{{ url('admin/state/'.$data->id) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="mx-3 btn btn-danger" onclick="return confirm('Are you sure to delete ?')"  ><i class="fa-solid fa-trash"></i></button> 
                                        </form> 
                                    </td> 
                                </tr>
                                @endforeach
                            </tbody>
                        
                        </table>                  
                    </div>
                </div>
            </div>
        </div>
</div>
 @endsection

 @push('scripts')
    <script type="text/javascript">

        $(document).on("change",".toggle-class",function() {

            if($(this).is(":checked")) { var status = 1;}
            else{   var status = 0;  }  
            var id= $(this).attr("data-id")
            //alert(id);
            $.ajax({
                url: "{{URL('/')}}/admin/state/status/" + id + "/" +status ,
                    success: function(e) {
                }
            });
        });
    </script>
@endpush