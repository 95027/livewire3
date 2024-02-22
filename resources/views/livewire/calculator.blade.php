<div class="flex flex-col items-center">

    <div class="flex p-16 mx-auto justify-center items-center gap-4">
        <input type="number" wire:model="num1"  placeholder="Number 1" wire:keydown="keydown">
        <select class="w-24" wire:model="action">
            <option>+</option>
            <option>-</option>
            <option>*</option>
            <option>/</option>
            <option>%</option>
        </select>
        <input type="number" wire:model="num2"  placeholder="Number 2" wire:keydown="keydown">
        <button wire:click="calculate"
                class="py-2 px-4 bg-indigo-500 hover:bg-indigo-600 disabled:bg-slate-600 disabled:cursor-not-allowed disabled:bg-opacity-20 rounded text-white"
            {{ $disabled ? 'disabled' : ''}}>calculate
        </button>
        
    </div>
    <p class="text-3xl">{{$result}}</p>
    @if(session('error'))
            <div class="bg-red-600 mt-3 text-white w-50 p-2 rounded">cannot divide by zero!</div>
        @endif
</div>
