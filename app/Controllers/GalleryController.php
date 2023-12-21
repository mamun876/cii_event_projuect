<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\GalleryModel;

class GalleryController extends BaseController
{
    private $gallery;
    public function __construct(){
        $gallerymodel= new GalleryModel();
    }
    public function index()
    {
        $gallerymodel = new GalleryModel();
        $data['items']= $gallerymodel->findAll();
        return view('Galleries/index', $data);
       
    }
}
