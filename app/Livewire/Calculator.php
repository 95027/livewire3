<?php

namespace App\Livewire;
use Livewire\Component;

class Calculator extends Component
{
    public $num1 = null;
    public $num2 = null;
    public $action = '+';
    public $result = 0;
    public $disabled = true;


    public function render()
    {
        return view('livewire.calculator');
    }

    public function calculate()
    {
        $num1 = $this->num1;
        $num2 = $this->num2;

        if ($this->action === '-') {
            $this->result = $num1 - $num2;
        } else if ($this->action === '+') {
            $this->result = $num1 + $num2;
        } else if ($this->action === '*') {
            $this->result = $num1 * $num2;
        } else if ($this->action === '/') {
            if($num2 === 0){
                $this->result = $num1 / $num2;
            }else{
                request()->session()->flash('error');
            }
        } else if ($this->action === '%') {
            $this->result = $num1 / 100 * $num2;
        }

    }

    public function keydown()
    {
        if ($this->num1 == null || $this->num2 == null) {
            $this->disabled = true;
        } else {
            $this->disabled = false;
        }
    }
}
