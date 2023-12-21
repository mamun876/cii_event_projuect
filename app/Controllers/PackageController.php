<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\PackageModule;

class PackageController extends BaseController
{
    private $package;
    private $price;

    public function __construct(){
     $this->package= new PackageModule();
    }
    public function index()
    {
        $data['items']=$this->package->findAll();
        $data['title']="Display all products";
        return view('package/index', $data);
    }
    public function create(){
        // $data['p_price']=$this->price->findAll();
        return view('package/create');
    }
    public function store(){
       $data=[
        'title'=>$this->request->getVar('title'),
        'subtitle'=>$this->request->getVar('subtitle'),
        'price'=>$this->request->getVar('price'),
        'service_include'=>$this->request->getVar('service_include')

       ];
       $rules=[
        'title'     => 'required|max_length[30]|min_length[4]',
       ];
       if(! $this->validate($rules)){
        return view('package/create');
       }else{
        $this->package->insert($data);
        $session=session();
        $session->setFlashdata('msg', "inserted successfully");
        $this->response->redirect('/package');
       }


    }
    public function edit($id){
        $data = $this->package->find($id);
        return view ('package/edit', $data);
    }
    public function update($id){
        $data=[
            'title'=>$this->request->getVar('title'),
            'subtitle'=>$this->request->getVar('subtitle'),
            'price'=>$this->request->getVar('price'),
            'service_include'=>$this->request->getVar('service_include'),
        
        ];
        $this->package->update($id, $data);
        $session=session();
        $session->setFlashdata('msg', "updated successfully");
        $this->response->redirect('/package');
    }
    public function delete($p_id){
         $this->package->where('id',$p_id);
        $this->package->delete();
        $session = session();
        $session->setFlashdata("msg", "Deleted Successfully");
         $this->response->redirect('/package');
    }
}
