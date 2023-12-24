<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\WeddingBookingModel;


class WeddingBoookingController extends BaseController
{
    private $tblweddingbook;
    public function __construct()
    {
        $this->tblweddingbook = new WeddingBookingModel();
    }

    public function index()
    {
        $weddingBookingModel = new WeddingBookingModel();
        $data['items'] = $weddingBookingModel->findAll();
        return view('weddingbooking/index', $data);
    }
    public function delete($w_id)
    {
        $this->tblweddingbook->where('booking_id', $w_id);
        $this->tblweddingbook->delete();
        $session = session();
        $session->setFlashdata("msg", "Deleted Successfully");
        $this->response->redirect('/weddingbooking');
    }
}
