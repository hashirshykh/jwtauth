<?php

namespace App\Helpers;

trait SetsJsonResponse
{
   
    public function setSuccessResponse($data = [], $statusCode = 200)
    {
        return $this->setJsonResponse(array_merge($data, ['success' => true]), $statusCode, auth()->user());
    }

    public function setUpdateResponse($data = [], $statusCode = 200)
    {
        return $this->setJsonResponse(array_merge($data, ['success' => true]), $statusCode, auth()->user());
    }

 
    public function setJsonResponse($data, $statusCode = 200)
    {
        return response($data, $statusCode, ['Content-Type', 'application/json']);
    }

    public function setErrorResponse($data, $statusCode = 200)
    {
        $data= "Alreaday Name Exits";
        return response($data, $statusCode, ['Content-Type', 'application/json']);
    }

    public function setNotFoundResponse($data, $statusCode = 200)
    {
        $data= "No Record Found By this ID";
        return response($data, $statusCode, ['Content-Type', 'application/json']);
    }

}