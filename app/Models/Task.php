<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Task extends Model
{
    use HasFactory, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['title', 'descripation','users_id'];

    /**
     * Main tasks.
     *
     * @return \App\Models\Task
     */
  

    /**
     * Subtasks associated with task.
     *
     * @return \App\Models\Task
     */
    
}