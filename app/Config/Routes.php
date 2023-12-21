<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'AdminHome::index');
$routes->get('/package', 'PackageController::index');
$routes->get('/package/create', 'PackageController::create');
$routes->post('/package/store', 'PackageController::store');
$routes->get('/package/edit/(:num)', 'PackageController::edit/$1');
$routes->post('/package/update/(:num)', 'PackageController::update/$1');
$routes->get('/package/delete/(:num)', 'PackageController::delete/$1');

