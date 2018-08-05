@extends('layouts.app')

@section('title')
	Search Hotels
@endsection

@section('content')

	<br>

	<div class="container">

		<h2 class="alert alert-success">Search Results</h2>

		@foreach($data['hotels'] as $hotel)
		<div class="row mb-3">
			<div class="col-md-12">
				<div class="card flex-md-row mb-4 box-shadow h-md-250 border border-success">

					<div class="card-body d-flex flex-column align-items-start">
						<h3 class="d-inline-block mb-2 text-primary">{{$hotel->name}}</h3>
						<span class="card-text text-dark"><strong>Rating:</strong>{{' '}}{{$hotel->rating}}</span>
						<span class="card-text text-dark"><strong>Amenities:</strong>{{' '}}{{$hotel->amenities}}</span>
						<span class="card-text text-dark"><strong>Phone:</strong>{{' '}}{{$hotel->phone}}</span>
						<span class="card-text text-dark"><strong>Address:</strong>{{' '}}{{$hotel->address}}{{' - '}}{{$hotel->zip_code}}</span>
						<br>
						<br>
						<span>
							<a role="button" class="btn btn-primary" href="{{url('/')}}/hotel-details/{{$hotel->id}}">More Details</a>
							<a role="button" class="btn btn-success" href="{{url('/')}}/{{$hotel->id}}/booking-options">Booking Options</a>
						</span>
					</div>
					<img class="rounded card-img-right flex-auto d-none d-lg-block" src="{{url('/')}}/public/images/{{$hotel->image}}" height="280" width="400" alt="Card image cap">

				</div>
			</div>
		</div>
		@endforeach


	</div>

@endsection