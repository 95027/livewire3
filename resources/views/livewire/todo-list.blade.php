<div class="p-16 flex justify-center flex-col gap-6 items-center">
    <div class="flex gap-4">
        <input type="text" style="width: 450px" wire:model="task" wire:keydown.enter="create"  placeholder="Type and hit enter" class="flex-1">
        <button
            class="py-2 px-4 bg-indigo-500 hover:bg-indigo-600 rounded text-white" wire:click="create"
        >Add
        </button>
    </div>
    <div>
        @if(session('success'))
            <div class="bg-green-600 mt-3 text-white w-50 p-2 rounded">Task added successfully..!</div>
        @endif
        @if(session('completed'))
            <div class="bg-green-600 mt-3 text-white w-50 p-2 rounded">Task marked as completed..!</div>
        @endif
        @if(session('error'))
            <div class="bg-red-600 mt-3 text-white w-50 p-2 rounded">Please type something...</div>
        @endif
    </div>

    <div class="py-6">
        @if (count($todos) > 0)
         @foreach($todos as $todo)
            <div class="flex gap-4 justify-between items-center py-1">
                <input type="checkbox" {{$todo->completed ? ' checked' : ''}} wire:click="checked({{$todo->id}})">
                <label class="flex-1 {{$todo->completed ? 'line-through' : ''}}">{{$todo->task}}</label>
                <button wire:click="deleted({{$todo->id}})">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                    stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round"
                    d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"/>
                    </svg>
                </button>
        </div>
        @endforeach
        @else
            <p class="text-gray-500 text-center">There are no todos</p>
        @endif
    </div>
</div>
