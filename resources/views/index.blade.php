@extends('layouts.app')

@section('title')
	Smart Tourism
@endsection

@section('content')

	{{--<div class="container">--}}
	{{--<div class="row justify-content-center">--}}
	{{--<div class="col-md-8">--}}
	{{--<div class="card">--}}
	{{--<div class="card-header">Dashboard</div>--}}

	{{--<div class="card-body">--}}
	{{--@if (session('status'))--}}
	{{--<div class="alert alert-success" role="alert">--}}
	{{--{{ session('status') }}--}}
	{{--</div>--}}
	{{--@endif--}}

	{{--You are logged in!--}}
	{{--</div>--}}
	{{--</div>--}}
	{{--</div>--}}
	{{--</div>--}}
	{{--</div>--}}


	<!-- Carousel -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="first-slide"
					 src="{{url('/')}}/public/images/banner_1.jpg"
					 alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="second-slide"
					 src="{{url('/')}}/public/images/banner_2.jpg"
					 alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="third-slide"
					 src="{{url('/')}}/public/images/banner_3.jpg"
					 alt="Third slide">
			</div>
		</div>

		<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->



	<div class="container">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">{{$data['hotels'][1]->name}}</h2>
				<p class="lead">{{$data['hotels'][1]->details}}</p>
			</div>
			<div class="col-md-5">
				<br>
				<br>
				<br>
				<br>
				<br>
				<img class="featurette-image img-fluid mx-auto" src="{{url('/')}}/public/images/the_westin_dhaka_6.jpg" alt="">
			</div>
		</div>

		<div class="row featurette">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">{{$data['hotels'][2]->name}}</h2>
				<p class="lead">{{$data['hotels'][2]->details}}</p>
			</div>
			<div class="col-md-5 order-md-1">
				<br>
				<br>
				<br>
				<br>
				<br>
				<img class="featurette-image img-fluid mx-auto" src="{{url('/')}}/public/images/lakeshore_banani_1.jpg" alt="">
				<br>
				<br>
				<img class="featurette-image img-fluid mx-auto" src="{{url('/')}}/public/images/lakeshore_banani_2.jpg" alt="">
			</div>
		</div>

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">{{$data['hotels'][5]->name}}</h2>
				<p class="lead">{{$data['hotels'][5]->details}}</p>
			</div>
			<div class="col-md-5">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<img class="featurette-image img-fluid mx-auto" src="{{url('/')}}/public/images/rose_view_hotel_2.jpg" alt="">
			</div>
		</div>

	</div>

@endsection
