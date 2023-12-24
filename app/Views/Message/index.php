<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Quixlab</title>
    <!-- Favicon icon -->

    <!-- Pignose Calender -->
    <link href="<?= site_url('assets/plugins/pg-calendar/css/pignose.calendar.min.css') ?>" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="<?= site_url('assets/plugins/chartist/css/chartist.min.css') ?> ">
    <link rel="stylesheet" href="<?= site_url('assets/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css') ?>">
    <!-- Custom Stylesheet -->
    <link href="<?= site_url('assets/css/style.css') ?>" rel="stylesheet">

</head>

<body>

    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="index.html">
                    <b class="logo-abbr"><img src="<?=site_url('assets/images/logo.png')?>" alt=""> </b>
                    <span class="logo-compact"><img src="<?=site_url('assets/images/logo-compact.png')?>" alt=""></span>
                    <span class="brand-title">
                        <img src="<?=site_url('assets/images/logo-text.png')?>" alt="">
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <?= $this->include('includes/Topbar'); ?>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <?= $this->include('includes/Sidebar') ?>
        <!--**********************************
            Sidebar end
        ***********************************-->

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <?php if (session()->getFlashdata('msg')) : ?>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <?php echo session()->getFlashdata('msg'); ?>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
            <?php endif; ?>


            <div class="container-fluid mt-3">

                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Subject</th>
                            <th>Message</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php
                        $n = 0;
                        // print_r($items);
                        foreach ($items as $item) :
                            # code...
                        ?>
                            <tr>
                                <td><?= $n + 1 ?></td>
                                <td><?= $item['name'] ?></td>
                                <td><?= $item['email'] ?></td>
                                <td><?= $item['subject'] ?></td>
                                <td><?= $item['message'] ?></td>
                                <td><?= $item['status'] ?></td>
                                <td>
                                    <a class="btn btn-danger" href="<?php echo base_url('Message/delete/' . $item['id']) ?>">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                   
                                </td>
                            </tr>
                        <?php $n++;
                        endforeach ?>
                    </tbody>
                    <tfoot>
                        <tr>
                        <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Subject</th>
                            <th>Message</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table>



            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->


        <!--**********************************
            Footer start
        ***********************************-->
        <?= $this->include('includes/Footer') ?>
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="<?= site_url('assets/plugins/common/common.min.js') ?>"></script>
    <script src="<?= site_url('assets/js/custom.min.js') ?>"></script>
    <script src="<?= site_url('assets/js/settings.js') ?>"></script>
    <script src="<?= site_url('assets/js/gleek.js') ?>"></script>
    <script src="<?= site_url('assets/js/styleSwitcher.js') ?>"></script>

    <!-- Chartjs -->
    <script src="<?= site_url('assets/plugins/chart.js/Chart.bundle.min.js') ?>"></script>
    <!-- Circle progress -->
    <script src="<?= site_url('assets/plugins/circle-progress/circle-progress.min.js') ?>"></script>
    <!-- Datamap -->
    <script src="<?= site_url('assets/plugins/d3v3/index.js') ?>"></script>
    <script src="<?= site_url('assets/plugins/topojson/topojson.min.js') ?>"></script>
    <script src="<?= site_url('assets/plugins/datamaps/datamaps.world.min.js') ?>"></script>
    <!-- Morrisjs -->
    <script src="<?= site_url('assets/plugins/raphael/raphael.min.js') ?>"></script>
    <script src="<?= site_url('assets/plugins/morris/morris.min.js') ?>"></script>
    <!-- Pignose Calender -->
    <script src="<?= site_url('assets/plugins/moment/moment.min.js') ?>"></script>
    <script src="<?= site_url('assets/plugins/pg-calendar/js/pignose.calendar.min.js') ?>"></script>
    <!-- ChartistJS -->
    <script src="<?= site_url('assets/plugins/chartist/js/chartist.min.js') ?>"></script>
    <script src="<?= site_url('assets/plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js') ?>"></script>



    <script src="<?= site_url('assets/js/dashboard/dashboard-1.js') ?>"></script>

</body>

</html>