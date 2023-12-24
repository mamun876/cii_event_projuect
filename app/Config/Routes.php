<?php

use App\Controllers\GalleryController;
use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'AdminHome::index', ['filter'=>'authguard']);
$routes->get('/package', 'PackageController::index');
$routes->get('/package/create', 'PackageController::create');
$routes->post('/package/store', 'PackageController::store');
$routes->get('/package/edit/(:num)', 'PackageController::edit/$1');
$routes->post('/package/update/(:num)', 'PackageController::update/$1');
$routes->get('/package/delete/(:num)', 'PackageController::delete/$1');

// signup controller
$routes->get('signup', 'SignupController::index');
$routes->match(['get','post'],'signup/store', 'SignupController::store');
$routes->get('signin', 'SigninController::index');
$routes->post('login', 'SigninController::login');
$routes->get('signout', 'SigninController::logout');

// Gallery routes
$routes->get('/Galleries', 'GalleryController::index');
$routes->get('/Galleries/create', 'GalleryController::create');
$routes->get('Galleries/delete/(:num)', 'GalleryController::delete/$1');


// Contact Routes
$routes->get('/Message', 'MessageController::index');
$routes->get('Message/delete/(:num)', 'MessageController::delete/$1');

// Events Routes
$routes->get('/Events', 'EventsController::index');
$routes->get('Events/delete/(:num)', 'EventsController::delete/$1');

// Guests Routes
$routes->get('/Guests', 'GuestsController::index');
$routes->get('Guests/delete/(:num)', 'GuestsController::delete/$1');

// weddingbooking Routes
$routes->get('/weddingbooking', 'WeddingBoookingController::index');
$routes->get('weddingbooking/delete/(:num)', 'WeddingBoookingController::delete/$1');



