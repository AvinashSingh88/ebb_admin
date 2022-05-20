@extends('backend.layouts.app')
@section('styles')
<style>
  table.dataTable thead .sorting:before,
  table.dataTable thead .sorting:after {
    display: none;
  }

  tfoot img,
  tr img,
  td img,
  th img {
    width: 50px;
  }
</style>
@endsection
@section('content')

<div class="container-xxl flex-grow-1 container-p-y">
  <h4 class="fw-bold py-3 mb-4">
    {{translate('Attribute Information')}}
  </h4>


  <div class="row">

    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <ul class="nav nav-tabs nav-fill border-light">
            @foreach (\App\Models\Language::all() as $key => $language)
            <li class="nav-item">
              <a class="nav-link text-reset @if ($language->code == $lang) active @else bg-soft-dark border-light border-left-0 @endif py-3" href="{{ route('attributes.edit', ['id'=>$attribute->id, 'lang'=> $language->code] ) }}">
                <img src="{{ static_asset('assets/img/flags/'.$language->code.'.png') }}" height="11" class="mr-1">
                <span>{{ $language->name }}</span>
              </a>
            </li>
            @endforeach
          </ul>
          <a href="{{ url()->previous() }}" style="border-radius:5px;position: absolute;z-index: 999;right: 30px;top:30px;border: 1px solid #696cff;padding:5px 20px;   background: #696cff;color: #fff;">Back</a>

        </div>
        <div class="card-body">
          <form class="p-4 ng-pristine ng-valid" action="{{ route('attributes.update', $attribute->id) }}" method="POST">
            <input name="_method" type="hidden" value="PATCH">
            <input type="hidden" name="lang" value="{{ $lang }}">
            @csrf
            <div class="form-group row">
              <label class="col-sm-3 col-from-label" for="name">{{ translate('Name')}} <i class="las la-language text-danger" title="{{translate('Translatable')}}"></i></label>
              <div class="col-sm-91">
                <input type="text" placeholder="{{ translate('Name')}}" id="name" name="name" class="form-control" required="" value="{{ $attribute->getTranslation('name', $lang) }}">
              </div>
            </div><br>
            <div class="form-group mb-0 text-right">
              <button type="submit" class="btn btn-primary">Save</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

</div>

@endsection