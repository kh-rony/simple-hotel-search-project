@extends('layouts.app')

@section('title')
	Details
@endsection

@section('content')

	<br>

	<!-- Page Content -->
	<div class="container">

		<h2 class="alert alert-success">{{$data['hotel']->name}}</h2>

		<div class="row">
			<div class="col-md-12">
				<div class="card flex-md-row mb-4 box-shadow h-md-250 alert alert-secondary">
					<div class="card-body d-flex flex-column align-items-start">
						<p class="card-text"><strong>Details:</strong>{{' '}}{{$data['hotel']->details}}</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="card flex-md-row mb-4 box-shadow h-md-250 alert alert-primary">
					<div class="card-body d-flex flex-column align-items-start">
						<p class="card-text"><strong>Amenities:{{' '}}{{$data['hotel']->amenities}}</strong></p>
					</div>
				</div>
			</div>
		</div>


		@foreach ($data['hotel_images']->chunk(3) as $chunk)
			<div class="row">
				@foreach($chunk as $hotel_image)
					<div class="col-md-4">
						<img src="{{url('/')}}/public/images/{{$hotel_image->image}}" style="width:100%">
					</div>
				@endforeach
			</div>
			<br>
		@endforeach
		<br>


		<div class="row mb-3">
			<div class="col-md-12">
				<div class="card flex-md-row mb-4 box-shadow h-md-250 border border-success">
					<!-- Contact Details Column -->
					<div class="col-lg-4 mb-4">
						<br>
						<h3>Contact Details</h3>
						<br>
						<p class="card-text text-dark"><strong>Phone:</strong>{{' '}}{{$data['hotel']->phone}}</p>
						<p class="card-text text-dark">
							<strong>Address:</strong>{{' '}}{{$data['hotel']->address}}{{' - '}}{{$data['hotel']->zip_code}}
						</p>
					</div>

					<!-- Map Column -->
					<div class="col-lg-8 mb-4">
						<br>
						<!-- Embedded Google Map -->
						<iframe
							width="100%"
							height="400px"
							frameborder="0"
							scrolling="no"
							marginheight="0"
							marginwidth="0"
							src="http://maps.google.com/maps?q={{$data['query']}}
								&t=m
								&z=16
								&output=embed
								&maptype=satellite">
						</iframe>
					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->


		<h2 class="alert alert-success">Room Types</h2>

		@foreach($data['hotel_rooms']->chunk(3) as $chunk)
			<div class="row mb-3">
				@foreach($chunk as $hotel_room)
					<div class="col-lg-4">
						<div class="card-deck mb-3 text-center">
							<div class="card mb-4 box-shadow border border-success">
								<div class="card-header alert alert-success">
									<h4 class="my-0 font-weight-normal">{{$hotel_room->room_type}}</h4>
								</div>
								<div class="card-body">
									<h1 class="card-title pricing-card-title">Tk. {{$hotel_room->price}}
										<small class="text-muted">/ day</small>
									</h1>

									<?php $amenities = explode(", ", $hotel_room->amenities); ?>
									<ul class="list-unstyled mt-3 mb-4">
										@foreach($amenities as $amenity)
											<li>{{$amenity}}</li>
										@endforeach
									</ul>

									<a role="button" class="btn btn-lg btn-block btn-success" href="{{url('/')}}/{{$data['hotel']->id}}/apply-for-booking/{{$hotel_room->id}}">Booking Option</a>
								</div>
							</div>
						</div>
					</div>
				@endforeach
			</div>
		@endforeach


	</div>
	<!-- /.container -->

@endsection