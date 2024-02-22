<?php

namespace App\Livewire;

use App\Models\TodoItem;
use Livewire\Component;
use Livewire\WithPagination;

class Search extends Component
{
    use WithPagination;
    
    public $search;

    public function render()
    {
        $tasks = TodoItem::where('task', 'like', "%{$this->search}%");

        return view('livewire.search', [
            'tasks' => $tasks->paginate(3)
        ]);
    }
}
