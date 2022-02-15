<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\userController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
header('Access-Control-Allow-Origin:  *');
header('Access-Control-Allow-Methods:  POST, GET, OPTIONS, PUT, DELETE');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Origin, Authorization');
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});



//------------------------craated by RR---------------start (MEY-FINTECH)
//User App
Route::post('/user_register', 'App\Http\Controllers\Api\userController@userRegister');  //API Register User //RR
Route::post('/login', 'App\Http\Controllers\Api\userController@logincheck');   //API login //RR
Route::post('/forgot_password', 'App\Http\Controllers\Api\userController@forgotPassword');  //API Forgot Password //RR
Route::post('/resendotp', 'App\Http\Controllers\Api\userController@resendotp');  //API Resend OTP //RR
Route::post('/password_verification', 'App\Http\Controllers\Api\userController@passwordVerification');  //API Password Verification //RR
Route::post('/password_update', 'App\Http\Controllers\Api\userController@passwordUpdate');   //API Reset Password //RR
Route::post('/edit_profile', 'App\Http\Controllers\Api\userController@editProfile');   //API Edit Profile //RR
Route::post('/profile_update', 'App\Http\Controllers\Api\userController@profile_update');   //API Update profile //RR
Route::post('/all_services', 'App\Http\Controllers\Api\userController@allServices');  //API for All Services //RR
Route::post('/get_allAgent', 'App\Http\Controllers\Api\userController@get_allAgent');  //API for All active and a/c to provide service Agent //RR
Route::post('/agent-profile', 'App\Http\Controllers\Api\userController@singleAgentProfile');
Route::post('/book-agent', 'App\Http\Controllers\Api\userController@bookAgent');  //API for book Agent by user //RR
Route::post('/reject-cancel', 'App\Http\Controllers\Api\userController@rejectCancel');  //API for Reject or Cancel booking by user //RR
Route::post('/report', 'App\Http\Controllers\Api\userController@report');  //API for Report(Agent) by user //RR
Route::post('/reviews-ratings', 'App\Http\Controllers\Api\userController@reviewsAndRatings');  //API for Reviews and ratings for both //RR
Route::post('/upcoming-bookings', 'App\Http\Controllers\Api\userController@upcomingBookings');  //API for user upcoming booking //RR
Route::post('/past-bookings', 'App\Http\Controllers\Api\userController@pastBooking');  //API for user past booking //RR
Route::post('/past-bookings', 'App\Http\Controllers\Api\userController@pastBooking');  //API for user past booking //RR 
Route::post('/user-total-ratings', 'App\Http\Controllers\Api\userController@userTotalRatings');  //API for user past userTotalRatings //RR 
Route::post('/contact-us', 'App\Http\Controllers\Api\userController@contactUs');  //API for contact-us for both User and Admin //RR
// Route::post('/user-notification', 'App\Http\Controllers\Api\userController@userNotification');  //API for contact-us for both User and Admin //RR
Route::post('/fcm-token', 'App\Http\Controllers\Api\userController@fcmToken');  //API for Notifications //RR 
Route::post('/filter', 'App\Http\Controllers\Api\userController@filter');  //API for user Filter //RR 
Route::post('/all-booked-agent', 'App\Http\Controllers\Api\userController@allBookedAgentDetails');  //API for all agent details //RR 

//Both App
Route::post('/login-with-other', [App\Http\Controllers\Api\userController::class, 'loginWithFBGoogleApple']);

//Agent App (Not in Use) //RR
Route::post('/agent_register', 'App\Http\Controllers\Api\agentController@agentRegister');  //API Register Agent //RR
Route::post('/agent_login', 'App\Http\Controllers\Api\agentController@agentLoginCheck');   //API login Agent //RR
Route::post('/agent_forgot_password', 'App\Http\Controllers\Api\agentController@agentForgotPassword');  //API Forgot Password Agent //RR
Route::post('/agent_resendotp', 'App\Http\Controllers\Api\agentController@agentResendOtp');  //API Resend OTP Agent //RR
Route::post('/agent_password_verification', 'App\Http\Controllers\Api\agentController@agentPasswordVerification');  //API Password Verification Agent //RR
Route::post('/agent_password_update', 'App\Http\Controllers\Api\agentController@agentPasswordUpdate');   //API Reset Password Agent //RR
Route::post('/agent_edit_profile', 'App\Http\Controllers\Api\agentController@agentEditProfile');   //API Edit Profile //RR
Route::post('/agent_profile_update', 'App\Http\Controllers\Api\agentController@agentProfile_update');   //API Update profile //RR
Route::post('/add_update_services', 'App\Http\Controllers\Api\agentController@updateServices');   //Service Provided by Agent -Add/Update //RR
Route::post('/online_offline', 'App\Http\Controllers\Api\agentController@onlineOfflineStatus');   //Toggle status - Online/Offline //RR
Route::post('/upcoming_bookings', 'App\Http\Controllers\Api\agentController@upcomingBookings');  //Upcomming bookings - Agent //RR
Route::post('/past_bookings', 'App\Http\Controllers\Api\agentController@pastBooking');  //Past bookings - Agent //RR
Route::post('/accept_decline', 'App\Http\Controllers\Api\agentController@acceptDeclineWork');  //Accept-Decline work by Agent //RR
Route::post('/agent-total-ratings', 'App\Http\Controllers\Api\agentController@agentTotalRatings');  //agentTotalRatings by Agent //RR
Route::post('/all-booked-user', 'App\Http\Controllers\Api\agentController@allBookedUserDetails');  //API for all agent details //RR 

//-------------------------------------------------------End (MEY-FINTECH)

 

//-----------------------------------end-------------------------------------------------------------------

Route::post('/email_verification', 'App\Http\Controllers\Api\userController@emailVerification');
Route::post('/email_sent_otp', 'App\Http\Controllers\Api\userController@emailSentOtp');
// Route::post('/verify_otp','App\Http\Controllers\LoginController@verifyOtp')->name('verify_otp');

