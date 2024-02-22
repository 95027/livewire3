<?php

namespace App\Livewire;

use App\Models\Photo;
use Livewire\Attributes\Validate;
use Livewire\Component;
use Livewire\WithFileUploads;

class ImageUpload extends Component
{
    use WithFileUploads;
    
    
/*     protected $rules = [
        'photo' => 'image|max:1024',
    ]; */

    #[Validate('image|max:1024')]
    public $photo;
    public $photos = [];

    public function render()
    {

        $this->loadPhotos(); 

        return view('livewire.image-upload');
    }

    public function loadPhotos()
    {
        $this->photos = Photo::latest()->pluck('photo')->toArray();
    }

    public function save(){

        $this->validate();

        $filePath = $this->photo->store('photos', 'public');

        Photo::create([
            'photo' =>  $filePath
        ]);

        $this->reset();
    }
}
