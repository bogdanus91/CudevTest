@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    You are logged in!
                </div>
            </div>
        </div>
    </div>

	<div id="DateList">
	<p>Recently you came to us at:
	<ul  class="list-unstyled" >
	
	@foreach($dates as $date)
	<li>{{$date->logins}}</li>
	
	@endforeach
	</<ul>
	</div>
</div>
@endsection
