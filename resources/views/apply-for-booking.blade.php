@extends('layouts.app')

@section('title')
	Booking Options
@endsection

@section('content')

	<br>

	<!-- Page Content -->
	<div class="container">

		<div class="col-md-6 order-md-1">

			<h4 class="mb-3">Room Booking</h4>

			<form class="needs-validation" novalidate>
				<div class="row">
					<div class="col-md-12 mb-3">
						<label for="name">Name</label>
						<input type="text" class="form-control" id="name" placeholder="" value="{{$data['user']->name}}" required>
						<div class="invalid-feedback">
							Valid name is required.
						</div>
					</div>
				</div>

				<div class="mb-3">
					<label for="email">Email</label>
					<input type="email" class="form-control" id="email" placeholder="" value="{{$data['user']->email}}">
					<div class="invalid-feedback">
						Please enter a valid email address for shipping updates.
					</div>
				</div>


				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="in-date">In Date</label>
						<input type="date" class="form-control" id="in-date" placeholder="" required>
						<div class="invalid-feedback">
							Name on card is required
						</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="in-date">Out Date</label>
						<input type="date" class="form-control" id="out-date" placeholder="" required>
						<div class="invalid-feedback">
							Name on card is required
						</div>
					</div>
				</div>


				<div class="mb-3">
					<label for="address">Address</label>
					<input type="text" class="form-control" id="address" placeholder="" required>
					<div class="invalid-feedback">
						Please enter your shipping address.
					</div>
				</div>

				<div class="row">
					<div class="col-md-5 mb-3">
						<label for="country">Country</label>
						<select class="custom-select d-block w-100" id="country" required>
							<option value="">Choose...</option>
							<option value="Bangladesh" selected>Bangladesh</option>
						</select>
						<div class="invalid-feedback">
							Please select a valid country.
						</div>
					</div>
					<div class="col-md-4 mb-3">
						<label for="state">State</label>
						<select class="custom-select d-block w-100" id="state" required>
							<option value="">Choose...</option>
							<option value="Dhaka">Dhaka</option>
							<option value="Sylhet">Sylhet</option>
							<option value="Chittagong">Chittagong</option>
							<option value="Khulna">Khulna</option>
							<option value="Rajshahi">Rajshahi</option>
							<option value="Rangpur">Rangpur</option>
						</select>
						<div class="invalid-feedback">
							Please provide a valid state.
						</div>
					</div>
					<div class="col-md-3 mb-3">
						<label for="zip">Zip</label>
						<input type="text" class="form-control" id="zip" placeholder="" required>
						<div class="invalid-feedback">
							Zip code required.
						</div>
					</div>
				</div>
				{{--<hr class="mb-4">--}}
				{{--<div class="custom-control custom-checkbox">--}}
				{{--<input type="checkbox" class="custom-control-input" id="same-address">--}}
				{{--<label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>--}}
				{{--</div>--}}
				{{--<div class="custom-control custom-checkbox">--}}
				{{--<input type="checkbox" class="custom-control-input" id="save-info">--}}
				{{--<label class="custom-control-label" for="save-info">Save this information for next time</label>--}}
				{{--</div>--}}
				{{--<hr class="mb-4">--}}

				<h4 class="mb-3">Payment</h4>

				<div class="d-block my-3">
					<div class="custom-control custom-radio">
						<input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
						<label class="custom-control-label" for="credit">Credit card</label>
					</div>
					<div class="custom-control custom-radio">
						<input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
						<label class="custom-control-label" for="debit">Debit card</label>
					</div>
					<div class="custom-control custom-radio">
						<input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
						<label class="custom-control-label" for="paypal">PayPal</label>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="cc-name">Name on card</label>
						<input type="text" class="form-control" id="cc-name" placeholder="" required>
						<small class="text-muted">Full name as displayed on card</small>
						<div class="invalid-feedback">
							Name on card is required
						</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="cc-number">Credit card number</label>
						<input type="text" class="form-control" id="cc-number" placeholder="" required>
						<div class="invalid-feedback">
							Credit card number is required
						</div>
					</div>
				</div>

				<hr class="mb-4">
				<a role="button" type="submit" class="btn btn-primary" href="{{url('/')}}">Submit</a>
			</form>
		</div>


	</div>
	<!-- /.container -->

@endsection