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

