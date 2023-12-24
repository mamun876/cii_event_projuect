<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\GalleryModel;

class GalleryController extends BaseController
{
    private $gallery;
    public function __construct()
    {
        $this->gallery = new GalleryModel();
    }
    public function index()
    {
        $gallerymodel = new GalleryModel();
        $data['items'] = $gallerymodel->findAll();
        return view('Galleries/index', $data);
    }
    public function create()
    {
        return view('/Galleries/create');
        // return "hello";
    }
    public function store()
    {
        $data = [
            'gallery' => $this->request->getVar('gallery'),
        ];
        $this->gallery->insert($data);
        $this->response->redirect('/Galleries');
    }
    public function delete($g_id)
    {
        $this->gallery->where('id', $g_id);
        // $this->products->delete($id);
        $this->gallery->delete();
        // $this->response->redirect('/products');
        // return redirect('products');
        $session = session();
        $session->setFlashdata("msg", "Deleted Successfully");
        $this->response->redirect('/Galleries');
    }
}
