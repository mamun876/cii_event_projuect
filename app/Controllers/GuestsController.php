<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\GuestsModel;

class GuestsController extends BaseController

{
    private $tblguest;
    public function __construct()
    {
        $this->tblguest = new GuestsModel();
    }
    public function index()
    {
        $guestsModel = new GuestsModel();
        $data['items'] = $guestsModel->findAll();
        return view('Guests/index', $data);
    }
}
