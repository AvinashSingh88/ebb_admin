@extends('backend.layouts.app')

@section('content')

<div class="container-xxl flex-grow-1 container-p-y">
   <h4 class="fw-bold py-3 mb-4">
      {{translate('Color Information')}}
   </h4>
   <div class="row">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header">
               <h5 class="mb-0 h6">{{translate('Color Information')}}</h5>
               <a href="{{ url()->previous() }}" style="border-radius:5px;position: absolute;z-index: 999;right: 30px;top:30px;border: 1px solid #696cff;padding:5px 20px;   background: #696cff;color: #fff;">Back</a>
            </div>
            <div class="card-body">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
               <form class="p-4 ng-pristine ng-valid" action="{{ route('colors.update', $color->id) }}" method="POST">
                  <input name="_method" type="hidden" value="POST">
                  @csrf
                  <div class="form-group row">
                     <label class="form-label" for="name">
                     {{ translate('Name')}}
                     </label>
                     <div class="col-sm-91">
                        <input type="text" placeholder="{{ translate('Name')}}" id="name" name="name" class="form-control" required value="{{ $color->name }}">
                     </div>
                  </div>
                  <br>		
                  <div class="form-group row">
                     <label class="form-label" for="code">
                     {{ translate('Color Code')}} 
                     </label>
                     <div class="col-sm-91">
                        <input type="text"  placeholder="{{ translate('Color Code')}}" id="code" name="code" class="form-control" required value="{{ $color->code }}">
                     </div>
                  </div>
                  <br>
                  <div class="form-group mb-0 text-right">
                     <button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="content-backdrop fade"></div>
</div>
@endsection
