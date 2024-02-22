@extends('layouts.admin')

@push('css')
<style>
    .modal-dialog {
        max-width: 600px!important;
        margin: 100px auto!important;
        padding: 20px!important;
    }
</style>
@endpush

@section('title','Imazine | Dashboard')

@section('main-content')
<div class="page-content">
        <div class="page-title-box">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-5 col-xl-6">
                        <div class="page-title">
                            <h3 class="mb-1 font-weight-bold">Add Topic</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         
        <div class="page-content-warpper mt--45">
            <div class="container-fluid">
                <div class="card mt--45">
                    <div class="card-header">
                    <h1>Add Topic</h1>
                    </div>
                    <div class="card-body text-dark">
                        @include('layouts.partials.messages')
                        
                            <form action="{{ url('admin/resource_store') }}" method="post"  class="border-bottom mb-4" enctype="multipart/form-data">
                                @csrf
                                <input type="text" class="form-control mb-3" name="topic_id" value="{{$topic->id}}" hidden>
                                <div class="row">
                        <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <label for="topic"> Topic </label>
                                        <input type="text" class="form-control mb-3" name="" value="{{$topic->topic}}" disabled readonly>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="title"> Title </label>
                                        <input type="text" class="form-control mb-3" value="{{old('title')}}" name="title" required>
                                    </div>  
                                   
                                    @if($topic->type == 1)
                                    <div class="col-lg-12">
                                        <label for="video_link"> Video Link</label>
                                        <input type="text" class="form-control mb-3" name="video_link" value="{{old('video_link')}}" required>
                                    </div>  
                                    @endif
                                    @if($topic->type == 2)
                                    <div class="col-lg-12">
                                        <label for="pdf"> Topic Pdf </label>
                                        <input type="file" class="form-control mb-3" name="pdf" required>
                                    </div> 
                                    @endif

                                   <div class="col-lg-12 mt-5">
                                        <div class="row">
                                            <label for="is_free"> Free </label>
                                          <div class="form-check form-switch">
                                                <input class="toggle-class" type="checkbox" name="is_free" value="1" data-onstyle="success" data-offstyle="danger" data-toggle="toggle" 
                                                data-on="Active" data-off="InActive" >
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="col-lg-12 p-3 ">
                                        <input type="submit" class="btn btn-primary text-white" style="float:right; " value="Save">
                                    </div>
                                </div> 
                                 </div>
                                </div>                                  
                            </form>
                       

                        <table id="datatable" class="table border-top">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Title</th>
                                     @if($topic->type == 1)
                                    <th>Video Link</th>
                                    @endif
                                     @if($topic->type == 2)
                                    <th>PDF</th>
                                    
                                    @endif
                                    <th>Free Status</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($results as $key => $data)

                                <tr>
                                    <td>{{ $loop->index + 1 }}</td>
                                    <td> {{$data->title}} </td>
                                     @if($topic->type == 1)
                                    <td> <a href="{{$data->video_link}}" target="_blank">{{$data->video_link}}</td>
                                         @endif
                                     @if($topic->type == 2)
                                    <td> <a href="{{ url('/') }}/public/pdf/topic/{{$data->pdf}}" target="_blank">{{$data->pdf}}</td>
                                        @endif
                                    <td>
                                        <input value="{{$data->id}}" class="toggle-class is_free" type="checkbox" name="is_free" value="1" data-onstyle="success" data-offstyle="danger" data-toggle="toggle"  data-on="Active" data-off="InActive" {{$data->is_free ?  "checked" : ""}} >

                                    </td>
                                    <td class="row justify-content-center"> 
                                        <a href="javascript:void(0)" class="btn btn-primary" id="model" data-toggle="modal" data-target="#edit" data-id="{{$data->id}}"><i class="fa-solid fa-pen-to-square"></i></a>
                                        <form action="{{ url('admin/delete-resource/'.$data->id) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="mx-1 btn btn-danger" onclick="return confirm('Are you sure to delete ?')" ><i class="fa fa-trash"></i></button> 
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

<div class="modal" id="edit">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="card-header">
            <h1>Edit</h1>
        </div>

        <form action="{{ url('admin/resource-update/id') }}" method="post" id="updateForm" class="p-4" enctype="multipart/form-data">
            @csrf
            <input type="text" class="form-control mb-3" name="topic_id" value="{{$topic->id}}" hidden="">
            <div class="row">
                <div class="col-lg-12">
                    <label for="topic"> Topic </label>
                    <input type="text" class="form-control mb-3" name="" value="{{$topic->topic}}" disabled="" readonly="" fdprocessedid="7klxhr">
                </div>

                <div class="col-lg-12">
                    <label for="title"> Title </label>
                    <input type="text" class="form-control mb-3" id="title" value="" name="title" required="" fdprocessedid="cblynl">
                </div>  
                @if($topic->type == 1)
                <div class="col-lg-12">
                    <label for="video_link"> Video Link </label>
                    <input type="text" class="form-control mb-3" id="video" value="" name="video_link" required="" fdprocessedid="cblynl">
                    <div id="video_link"></div>
                </div>  
                @endif
                @if($topic->type == 2)
                <div class="col-lg-12">
                    <label for="pdf"> Topic Pdf </label>
                    <input type="file" class="form-control mb-3" id="pdf" name="pdf" value="">
                    <div id="pdf_link"></div>
                </div> 
                @endif

                <div class="col-lg-12">
                    <input type="submit" class="btn btn-primary text-white mx-1" style="float:right; " value="Update" fdprocessedid="r4246u">
                    <button type="button" class="btn btn-danger" style="float:right; " data-dismiss="modal">Cancel</button>
                </div>
            </div> 
             </div>
            </div>                                  
        </form>
    </div>
  </div>
</div>
@endsection

@push('scripts')

<script>
    $('.resource_type').change(function() {
        var type = $(this).val();

        if(type == 1){
            $(".duration_div").show();
        }
        else if(type == 2){
            $(".duration_div").hide();
        }
        
    });

      $(document).on("change",".is_free",function() {
   
         if($(this).is(":checked")) { var status = 1;}
         else{   var status = 0;  }  
         var id= $(this).val()
         //alert(id);
         $.ajax({
             url: "{{URL('/')}}/admin/topic/resource-status/" + id + "/" +status ,
                 success: function(e) {
             }
         });
     });

   $(document).ready(function() {
    $('#model').click(function(e) {
        e.preventDefault();
        var id = $(this).data('id');
        $.ajax({
            url: "{{ url('/admin/resource-edit/') }}/" + id,
            type: 'GET',
            success: function(response) {
                $('#id').val(response.id);
                $('#title').val(response.title);
                $('#video_link').html('<a href="' + response.video_link + '" target="_blank">' + response.video_link + '</a>');
                var pdfLink = '{{ url('/') }}/public/pdf/topic/' + response.pdf;
                $('#pdf_link').html('<a href="' + pdfLink + '" target="_blank">' + response.pdf + '</a>');
                $('#pdf').val(response.pdf);
                $('#video').val(response.video_link);
                $('#updateForm').attr('action', "{{ url('admin/resource-update/') }}" + '/' + response.id);
                
            }
        });
    });
});
</script>

@endpush
        