<div class="p-16 flex justify-center flex-col gap-6 items-center">
    <select wire:model="selectedCountry" wire:change="selectedCities">
        <option value="">Please select country</option>
         @foreach($countries as $country)
                <option value="{{$country->id}}">{{$country->name}}</option>
            @endforeach
    </select>
    <div class="flex relative">
        <p wire:loading  class="absolute left-0 top-0 right-0 bottom-0 z-10 bg-white bg-opacity-90 py-2 px-3">
            Loading...
        </p>
        <p>
        </p>
        <select wire:loading.remove class="flex-1"  @if(empty($selectedCountry)) disabled @endif>
            <option value="">Please select country</option>
            @foreach($cities as $city)
                <option value="{{$city->id}}">{{$city->name}}</option>
            @endforeach
        </select>
    </div>

</div>
