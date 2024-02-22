<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>{{ $title ?? 'Page Title' }}</title>
        @vite(['resources/css/app.css', 'resources/js/app.js'])
        
    </head>
    <body>
            <nav class="flex justify-center bg-slate-700 text-white">
                <a wire:navigate href="/" class="py-4 px-6 hover:bg-slate-800 {{ (request()->routeIs('counter')) ? 'bg-slate-800' : '' }}">Counter</a>
                <a wire:navigate href="/calculator" class="py-4 px-6 hover:bg-slate-800 {{ (request()->routeIs('calculator')) ? 'bg-slate-800' : '' }}">Calculator</a>
                <a wire:navigate href="/todo-list" class="py-4 px-6 hover:bg-slate-800 {{ (request()->routeIs('todo')) ? 'bg-slate-800' : '' }}">TodoList</a>
                <a wire:navigate href="/cascading-dropdown" class="py-4 px-6 hover:bg-slate-800 {{ (request()->routeIs('dropdown')) ? 'bg-slate-800' : '' }}">Cascading Dropdown</a>
                <a wire:navigate href="/search" class="py-4 px-6 hover:bg-slate-800 {{ (request()->routeIs('search')) ? 'bg-slate-800' : '' }}">Search</a>
                <a wire:navigate href="/image-upload" class="py-4 px-6 hover:bg-slate-800 {{ (request()->routeIs('image-upload')) ? 'bg-slate-800' : '' }}">Image Upload</a>
            </nav>

        {{ $slot }}
        

    </body>
</html>
