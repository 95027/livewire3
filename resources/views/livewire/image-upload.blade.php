<div class="p-16 flex justify-center flex-col gap-6 items-center">

    <form wire:submit="save">
        @if ($photo)
            Preview:
            <div>
                <img width="100px" src="{{$photo->temporaryUrl()}}" alt="" />
            </div>
        @endif
        <input type="file" wire:model="photo" id="fileInput"><br/><br/>
        @if(!$photo)
            @error('photo')
                <span class="text-red-600">{{$message}}</span><br/><br/>
            @enderror
        @endif
        <button class="rounded" style="border:2px solid; padding:0 12px" type="submit">Update</button>
    </form>

    <div class="flex flex-wrap gap-7">

        @foreach($photos  as $image)
            <img src="{{asset('storage/' . $image)}}" class="w-[128x] h-[120px] object-cover">
        @endforeach
    </div>

</div>