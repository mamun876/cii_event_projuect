<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\EventsModel;



class EventsController extends BaseController
{
    private $events;
    public function __construct(){
        $this->events= new EventsModel();
    }
    public function index()
    {
        $eventsModel = new EventsModel();
        $data['items']= $eventsModel->findAll();
        return view('Events/index', $data);
    }
}
