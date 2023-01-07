<?php

namespace App\Http\Controllers;

use App\Helpers\SetsJsonResponse;
use App\Models\Task;
use Carbon\Carbon;
use DB;
use Auth;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    use SetsJsonResponse;

    //using auth
    public function __construct() {
        $this->middleware('auth:api');//auth:api middleware used to protect the middleware.
    }
    //store the task
    public function store(Request $request)
    {
        $userid= auth('api')->user()->id;
        $taskexit =DB::table('tasks')->where('title', $request->title)->get();   
        if(count($taskexit) > 0){
            return $this->setErrorResponse($taskexit->toArray(), 201);
        }else{
            $task = Task::create([
                'title' => $request->title,
                'descripation' => $request->descripation,
                'users_id' =>  $userid
            ]);

            return $this->setSuccessResponse($task->toArray(), 201);
        }
    }
   
    //get the task by user id 
    public function index()
    {
        $userid= auth('api')->user()->id;      
        $tasks = DB::table('tasks')->where('users_id', $userid)->paginate(10);
        return $this->setSuccessResponse($tasks->toArray());
    }

    //show task by specific id
    public function show(Request $request,$id){
        $userid= auth('api')->user()->id; 
        $result = DB::table('tasks')->where('id',$id)->where('status', '!=', 0)->get();
        if(count($result)){
         return Response()->json($result);
        }
        else
        {
        return response()->json(['Result' => 'No Data not found'], 404);
        }
    }
    //update the task
    public function update(Request $request,$id)
    {
      
            $task = DB::table('tasks')->where('id' , $id)->update([
                'title' => $request->title,
                'descripation' => $request->descripation,
                'status' => $request->status
            ]);
            return $this->setUpdateResponse(['message' => 'Task has been Updated.']);
        
    }
    //delete the task
    public function delete(Request $request, $id)
    {
        $gettask = DB::table('tasks')->where('id', $id)->get();
        if(count($gettask)){
        $task = DB::table('tasks')->delete($id);
        return $this->setSuccessResponse(['message' => 'Task has been Deleted Sucessfully.'], 200);
        }else{
            return $this->setNotFoundResponse([], 404);
        }
    }

    //search the task
    public function search($name){
     
        $result = DB::table('tasks')->where('title', 'LIKE', '%'. $name. '%')->paginate(10);
        if(count($result)){
         return Response()->json($result);
        }
        else
        {
        return response()->json(['Result' => 'No Data not found'], 404);
        }
    }
   
}