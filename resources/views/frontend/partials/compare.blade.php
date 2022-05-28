<a href="{{ route('compare') }}" class="d-flex align-items-center text-reset" title="Compare">
    <i class="fas fa-sync custom-fa-icon"></i>
    <span class="flex-grow-1 ml-1" title="compare">
        @if(Session::has('compare'))
            <span class="badge badge-primary badge-inline badge-pill">{{ count(Session::get('compare'))}}</span>
        @else
            <span class="badge badge-primary badge-inline badge-pill">0</span>
        @endif
        <!-- <span class="nav-box-text d-none d-xl-block opacity-70 " title="compare">{{translate('Compare')}}</span> -->
    </span>
</a>