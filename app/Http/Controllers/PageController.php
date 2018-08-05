<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{
	public function __construct()
	{
		//
	}

	public function index()
	{
		$data['hotels'] = DB::table('hotels')->get();
		$data['hotel_images'] = DB::table('hotel_images')->get();


		return view('index', ['data' => $data]);
	}

	public function searchHotelsGET($search_tag)
	{
		$data['hotels'] = DB::table('hotels')->where('search_tag', '=', $search_tag)->get();

		return view('search-hotels', ['data' => $data]);
	}

	public function searchHotelsPOST(Request $request)
	{
		$data['hotels'] = DB::table('hotels')->where('search_tag', '=', $request->input("searchbox"))->get();

		return view('search-hotels', ['data' => $data]);
	}

	public function hotelDetails($hotel_id)
	{
		$data['hotel'] = DB::table('hotels')->where('id', '=', $hotel_id)->first();
		$data['hotel_images'] = DB::table('hotel_images')->where('hotel_id', '=', $hotel_id)->get();

		$data['query'] = str_replace(' ', '+', $data['hotel']->name);

		$data['hotel_rooms'] = DB::table('hotel_rooms')->where('hotel_id', '=', $hotel_id)->get();

		return view('hotel-details', ['data' => $data]);
	}

	public function bookingOptions($hotel_id)
	{
		$data['hotel'] = DB::table('hotels')->where('id', '=', $hotel_id)->first();
		$data['hotel_rooms'] = DB::table('hotel_rooms')->where('hotel_id', '=', $hotel_id)->get();

		return view('booking-options', ['data' => $data]);
	}

	public function applyForBooking($hotel_id, $hotel_room_id)
	{
		$data['hotel'] = DB::table('hotels')->where('id', '=', $hotel_id)->first();
		$data['hotel_rooms'] = DB::table('hotel_rooms')->where('hotel_id', '=', $hotel_id)->get();
		$data['user'] = DB::table('users')->where('id', '=', Auth::user()->id)->first();

		return view('apply-for-booking', ['data' => $data]);
	}
}