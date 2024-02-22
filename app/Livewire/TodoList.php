<?php

namespace App\Livewire;

use App\Models\TodoItem;
use Livewire\Component;

class TodoList extends Component
{
    public $task;

    public function render()
    {
        $todos = TodoItem::latest()->get();

        return view('livewire.todo-list', compact('todos'));
    }

    public function create(){

        if(!$this->task){
            request()->session()->flash('error');
            return;
        }
        $task = $this->task;

        TodoItem::create([
            'task' => $task,
        ]);

        request()->session()->flash('success');
    }

    public function checked($id){

        $todo = TodoItem::find($id);

        $todo->update([
            'completed' => $todo->completed ? 0 : 1,
        ]);
        
        request()->session()->flash('completed');
    }
    public function deleted($id){

        $todo = TodoItem::find($id);

        $todo->delete();

    }
}
