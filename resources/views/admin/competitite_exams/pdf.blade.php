@extends('layouts.admin')

@section('title','Imazine | Dashboard')

@section('main-content')
<div class="page-content">
        <div class="page-title-box">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-5 col-xl-6">
                        <div class="page-title">
                            <h3 class="mb-1 font-weight-bold">Add Competitive Exam Pdf</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         
        <div class="page-content-warpper mt--45">
            <div class="container-fluid">
                <div class="card mt--45">
                    <div class="card-header">
                    <h3>Add Competitive Exam Pdf</h3>
                    </div>
                    <div class="card-body text-dark">
                        @include('layouts.partials.messages')
                        
                            <form action="{{ url('admin/pdf_store') }}" method="post"  class="border-bottom mb-4" enctype="multipart/form-data">
                                @csrf
                                <input type="text" class="form-control mb-3" name="competitite_exams_id" value="{{$competitite_exam->id}}" hidden>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <label for="exam_name"> Exam Name </label>
                                        <input type="text" class="form-control mb-3" name="" value="{{$competitite_exam->exam_name}}" disabled readonly>
                                    </div>

                                    <div class="col-lg-6">
                                        <label for="pdf"> PDF </label>
                                        <input type="file" class="form-control mb-3" value="{{old('pdf_name')}}" name="pdf_name" required>
                                    </div>                                     
                                    
                                    <div class="col-lg-12 p-3 ">
                                        <input type="submit" class="btn btn-primary text-white" style="float:right; " value="Save Pdf"><a href="{{url('admin/competitite-exam')}}" class="btn btn-primary text-white mx-3" style="float:right;"><i class="fa fa-arrow-left"></i> Go Back</a>
                                    </div>
                                </div>                                 
                            </form>
                       

                        <table id="datatable" class="table border-top">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>PDF</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($result as $key => $data)

                                <tr>
                                    <td>{{ $loop->index + 1}}</td>
                                    <td> <a href="{{url('/public/pdf/competitite_exam/'.$data->pdf_name)}}" target="_blank">{{$data->pdf_name}}</td>
                                    <td class="row justify-content-center"> 
                                        <a href="javascript:void(0)" class="btn btn-primary" id="model" data-toggle="modal" data-target="#edit" data-id="{{$data->id}}"><i class="fa-solid fa-pen-to-square"></i></a>
                                        <form action="{{ url('admin/delete-pdf/'.$data->id) }}" method="POST">
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

        <form action="{{ url('admin/pdf-update/id') }}" method="post" id="updateForm" class="p-4" enctype="multipart/form-data">
            @csrf
            <input type="text" class="form-control mb-3" name="competitite_exams_id" value="{{$competitite_exam->id}}" hidden="">
            <div class="row">
                <div class="col-lg-12">
                    <label for="topic"> Topic </label>
                    <input type="text" class="form-control mb-3" name="" value="{{$competitite_exam->exam_name}}" disabled="" readonly="" >
                </div>

                <div class="col-lg-12">
                    <label for="pdf_name"> PDF</label>
                    <div class="pdf"><input type="file" class="form-control mb-3" id="pdf" name="pdf" value="">
                    <div id="pdf_link"></div>
                </div>
                <div class="col-lg-12">
                    <input type="submit" class="btn btn-primary text-white mx-1" style="float:right; " value="Update">
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
    $(document).ready(function() {
        $('#model').click(function(e) {
            e.preventDefault();
            var id = $(this).data('id');
            $.ajax({
                url: "{{ url('/admin/pdf-edit/') }}/" + id,
                type: 'GET',
                success: function(response) {
                    $('#id').val(response.id);
                    var pdfLink = '{{ url('/') }}/public/pdf/competitite_exam/' + response.pdf_name;
                    $('#pdf_link').html('<a href="' + pdfLink + '" target="_blank">' + response.pdf_name + '</a>');
                    $('#updateForm').attr('action', "{{ url('admin/pdf-update/') }}" + '/' + response.id);
                    $('#pdf').val('response.pdf_name');             
                }
            });
        });
    });
</script>

@endpush

        