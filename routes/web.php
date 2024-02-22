<?php

use App\Livewire\Calculator;
use App\Livewire\Counter;
use App\Livewire\Dropdown;
use App\Livewire\ImageUpload;
use App\Livewire\Search;
use App\Livewire\TodoList;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', Counter::class)->name('counter');
Route::get('/calculator', Calculator::class)->name('calculator');
Route::get('/todo-list', TodoList::class)->name('todo');
Route::get('/cascading-dropdown', Dropdown::class)->name('dropdown');
Route::get('/search', Search::class)->name('search');
Route::get('/image-upload', ImageUpload::class)->name('image-upload');
