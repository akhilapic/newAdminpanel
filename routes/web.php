<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
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
Route::get('/', [App\Http\Controllers\HomeController::class, 'homepage'])->name('home');




Route::get('signout', [App\Http\Controllers\backend\Admin::class, 'signOut'])->name('signout')->middleware('rememberme');



Route::post('/user_change_password', [App\Http\Controllers\backend\userController::class, 'user_change_password'])->name('user_change_password'); 
Route::post('/update_admin_profile', [App\Http\Controllers\backend\userController::class, 'update_admin_profile'])->name('update_admin_profile');  

//user manage//



 Route::get('/add_user', [App\Http\Controllers\backend\userController::class, 'create'])->name('add_user')->middleware('rememberme');
 Route::post('store-data', [App\Http\Controllers\backend\userController::class, 'store'])->name('store-data')->middleware('rememberme');
 Route::get('/user_view/{id}', [App\Http\Controllers\backend\userController::class, 'userView'])->middleware('rememberme');
 Route::get('/user_edit/{id}', [App\Http\Controllers\backend\userController::class, 'edit'])->name('user_edit')->middleware('rememberme');
 Route::post('/update_data/', [App\Http\Controllers\backend\userController::class, 'updateData'])->middleware('rememberme');
 
 Route::get('/user_delete/{id}', [App\Http\Controllers\backend\userController::class, 'delete'])->name('user_delete')->middleware('rememberme');


Route::post('/notification', [App\Http\Controllers\admin\Admin::class, 'notification'])->name('notification');


Route::get('/admin', [App\Http\Controllers\admin\Admin::class, 'index'])->name('login');
Route::get('/dashboard', [App\Http\Controllers\admin\Admin::class, 'dashboard'])->middleware('rememberme'); 
Route::get('/user_list', [App\Http\Controllers\admin\userController::class, 'index'])->name('user_list')->middleware('rememberme'); 

Route::get('/user-view/{id}', 'App\Http\Controllers\admin\userController@userview');

Route::get('/user_list', [App\Http\Controllers\admin\userController::class, 'index'])->name('user_list')->middleware('rememberme'); 
Route::get('/user-view/{id}', 'App\Http\Controllers\admin\userController@userview');
Route::post('/changeStatus/{id}', [App\Http\Controllers\admin\userController::class, 'changeStatus'])->name('changeStatus')->middleware('rememberme');
Route::post('/userchangestatus', [App\Http\Controllers\admin\userController::class, 'userchangeStatus'])->name('userchangeStatus')->middleware('rememberme');
Route::post('/userchangestatusactive', [App\Http\Controllers\admin\userController::class, 'userchangestatusactive'])->name('userchangestatusactive')->middleware('rememberme');
Route::get('/user_edit/{id}', [App\Http\Controllers\admin\userController::class, 'edit'])->name('user_edit')->middleware('rememberme');
Route::post('/update_data', [App\Http\Controllers\admin\userController::class, 'updateData'])->middleware('rememberme');
Route::get('/user_delete/{id}', [App\Http\Controllers\admin\userController::class, 'delete'])->name('user_delete')->middleware('rememberme');

Route::post('custom-login', [App\Http\Controllers\backend\Admin::class, 'customLogin'])->name('login.custom'); 

Route::get('/forget-password','App\Http\Controllers\backend\Admin@forget_password');

Route::post('/forgotadminpasswordformcheck', 'App\Http\Controllers\LoginController@forgotadminpasswordformcheck')->name('forgotadminpasswordformcheck');

Route::get('/adminotp-verifictionforget','App\Http\Controllers\LoginController@adminotpverifictionforget');

Route::post('/adminverify_otp', 'App\Http\Controllers\LoginController@adminverify_otp')->name('adminverify_otp');
Route::get('/resend_otp', 'App\Http\Controllers\LoginController@resend_otp');

Route::get('/adminforgetpasswordview/{id}','App\Http\Controllers\LoginController@adminforgetpasswordview');

Route::post('/verify_adminforgetpassword', 'App\Http\Controllers\LoginController@verify_adminforgetpassword')->name('verify_adminforgetpassword');


Route::get('/my_profile', function () {
   return view('Pages.my_profile');
});


