<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\MessageModel;

class MessageController extends BaseController
{
    private $contact;
    public function __construct(){
        $this->contact= new MessageModel();
    }
    public function index()
    {
        $messageModel = new MessageModel();
        $data['items']= $messageModel->findAll();
        return view('Message/index', $data);
    }
    public function delete($m_id){
        $this->contact->where('id',$m_id);
       $this->contact->delete();
       $session = session();
       $session->setFlashdata("msg", "Deleted Successfully");
        $this->response->redirect('/Message');
   }
}
