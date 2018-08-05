<!-- Navigation -->
<header>
	<nav class="navbar navbar-expand-md navbar-light fixed-top" style="background-color: #e3f2fd;">
		<a class="navbar-brand" href="{{url('/')}}">Hotel Management</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button"
					   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Search Hotels For</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="{{url('/search-hotels/dhaka')}}">Dhaka</a>
						<a class="dropdown-item" href="{{url('/search-hotels/sylhet')}}">Sylhet</a>
						<a class="dropdown-item" href="{{url('/search-hotels/chittagong')}}">Chittagong</a>
						<a class="dropdown-item" href="{{url('/search-hotels/khulna')}}">Khulna</a>
						<a class="dropdown-item" href="{{url('/search-hotels/rajshahi')}}">Rajshahi</a>
						<a class="dropdown-item" href="{{url('/search-hotels/rangpur')}}">Rangpur</a>
						{{--<div class="dropdown-divider"></div>--}}
					</div>
				</li>
				@if (Route::has('login'))
					@auth
						{{--<li class="nav-item">--}}
							{{--<a class="nav-link" href="{{url('/home')}}">Home<span class="sr-only"></span></a>--}}
						{{--</li>--}}

					@else
					@endauth
				@endif

				<li class="nav-item">
					<form class="form-inline mt-2 mt-md-0 ml-2" method="post" action="{{url('/search-hotels')}}">
						@csrf
						<input class="form-control mr-sm-2" type="text" name="searchbox" placeholder="Place Name" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>
				</li>
			</ul>

			<ul class="justify-content-end navbar-nav ml-auto">
				<!-- Authentication Links -->
				@if (Route::has('login'))
					@auth
						<li class="nav-item dropdown">
							<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
								{{ Auth::user()->name }} <span class="caret"></span>
							</a>

							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">

								{{--<a class="dropdown-item" href="{{url('/my-friends')}}">My Friends</a>--}}
								{{--<a class="dropdown-item" href="{{url('/my-interests')}}">My Interests</a>--}}
								{{--<div class="dropdown-divider"></div>--}}
								<a class="dropdown-item" href="{{ route('logout') }}"
								   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
									{{ __('Logout') }}
								</a>

								<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
									@csrf
								</form>
							</div>
						</li>
					@else
						<li class="nav-item">
							<a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
						</li>
					@endauth
				@endif


				@guest
				@else
				@endguest

			</ul>


		</div>
	</nav>
</header>