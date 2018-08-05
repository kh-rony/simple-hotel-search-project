@extends('layouts.app')

@section('title')
	Booking Options
@endsection

@section('content')

	<br>

	<!-- Page Content -->
	<div class="container">

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

									<a role="button" class="btn btn-lg btn-block btn-success" href="{{url('/')}}/{{$data['hotel']->id}}/apply-for-booking/{{$hotel_room->id}}">Apply for Booking</a>
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