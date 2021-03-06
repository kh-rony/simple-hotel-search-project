<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- CSRF Token -->
	<meta name="csrf-token" content="{{ csrf_token() }}">

	<title>@yield('title') - Hotel Management</title>

	<!-- Scripts -->
	<script src="{{ asset('js/app.js') }}" defer></script>

	<!-- Fonts -->
	<link rel="dns-prefetch" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

	<!-- Styles -->
	<link href="{{ asset('css/app.css') }}" rel="stylesheet">

	<link href="{{url('/')}}/public/bootstrap-4.1.1/bootstrap.min.css" rel="stylesheet">

	<link href="{{url('/')}}/public/my-custom-css/carousel.css" rel="stylesheet">
	<link href="{{url('/')}}/public/my-custom-css/contents-below-navbar-fixed-top.css" rel="stylesheet">
</head>


<body>

@include('common.navbar')

<main role="main">

	<div>
		@yield('content')
	</div>

</main>

@include('common.footer')


<!-- Scripts -->
<script src="{{ asset('js/app.js') }}"></script>

<script src="{{url('/')}}/public/bootstrap-4.1.1/jquery-3.3.1.slim.min.js"></script>
<script src="{{url('/')}}/public/bootstrap-4.1.1/popper.min.js"></script>
<script src="{{url('/')}}/public/bootstrap-4.1.1/bootstrap.min.js"></script>


</body>
</html>