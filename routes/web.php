<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();
Route::get('/', 'PageController@index');
Route::get('/home', 'PageController@index');

Route::get('/search-hotels/{search_tag}', 'PageController@searchHotelsGET');
Route::post('/search-hotels', 'PageController@searchHotelsPOST');

Route::get('/hotel-details/{hotel_id}', 'PageController@hotelDetails');
Route::get('/{hotel_id}/booking-options', 'PageController@bookingOptions');
Route::get('/{hotel_id}/apply-for-booking/{hotel_room_id}', 'PageController@applyForBooking');