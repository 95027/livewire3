<?php

namespace App\Livewire;

use App\Models\City;
use App\Models\Country;
use Livewire\Component;

class Dropdown extends Component
{
    public $selectedCountry;
    public $cities = [];
    public $countries;

    public function render()
    {
        $this->countries = Country::all();
        return view('livewire.dropdown');
    }

    public function selectedCities(){
        $this->cities = City::where('country_id', $this->selectedCountry)->get();
    }
}
