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

    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="index.html">
                    <b class="logo-abbr"><img src="assets/images/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="assets/images/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                        <img src="assets/images/logo-text.png" alt="">
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

                <form>
                    <div class="form-group">
                        <label for="id">ID</label>
                        <input type="text" class="form-control" id="id" placeholder="Enter ID">
                    </div>
                    <div class="form-group">
                        <label for="booking_id">Booking ID</label>
                        <input type="text" class="form-control" id="booking_id" placeholder="Enter Booking ID">
                    </div>
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" placeholder="Enter Title">
                    </div>
                    <div class="form-group">
                        <label for="caption">Caption</label>
                        <input type="text" class="form-control" id="caption" placeholder="Enter Caption">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" rows="3" placeholder="Enter Description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="filename">Filename</label>
                        <input type="text" class="form-control" id="filename" placeholder="Enter Filename">
                    </div>
                    <div class="form-group">
                        <label for="alternative_text">Alternative Text</label>
                        <input type="text" class="form-control" id="alternative_text" placeholder="Enter Alternative Text">
                    </div>
                    <div class="form-group">
                        <label for="type">Type</label>
                        <input type="text" class="form-control" id="type" placeholder="Enter Type">
                    </div>
                    <div class="form-group">
                        <label for="size">Size</label>
                        <input type="text" class="form-control" id="size" placeholder="Enter Size">
                    </div>
                    <div class="form-group">
                        <label for="related_id">Related ID</label>
                        <input type="text" class="form-control" id="related_id" placeholder="Enter Related ID">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form>



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