<div class="p-16 flex justify-center flex-col gap-6 items-center">
    <div class="container mx-auto py-16 px-8">
        <div class="mb-4">
            <input type="text" placeholder="Search" wire:model.live="search" >

        </div>
        <table class="table-auto w-full">
            <thead>
            <tr>
                <th class="py-2 px-3 bg-gray-100 border-b-2 text-left">ID</th>
                <th class="py-2 px-3 text-left  bg-gray-100 border-b-2">Task</th>
                <th class="py-2 px-3 bg-gray-100 border-b-2 text-right">Status</th>
            </tr>
            </thead>
            <tbody>
            @foreach($tasks as $task)
                <tr>
                    <td class="py-2 px-3 border-b">{{$task->id}}</td>
                    <td class="py-2 px-3 border-b">{{$task->task}}</td>
                    <td class="py-2 px-3 border-b text-right">{{$task->completed? 'Completed' : 'Pending'}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
        {{$tasks->links()}}
    </div>

</div>
