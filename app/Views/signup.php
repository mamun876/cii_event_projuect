<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Eventiz - Event Conference HTML Templates</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
    <!-- Bootstrap core CSS -->
    <link href="<?= site_url('assets/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css">
    <!--Custom CSS-->
    <link href="<?= site_url('assets/css/style.css') ?>" rel="stylesheet" type="text/css">
    <!--Plugin CSS-->
    <link href="<?= site_url('assets/css/plugin.css') ?>" rel="stylesheet" type="text/css">

    <!--Font Awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.5.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="fonts/line-icons.css" type="text/css">
</head>

<body>

    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <h2 class="text-center mb-4">Sign Up</h2>
                <form class="user" method="post" action="<?= base_url('/signup/store') ?>">
                    <div class="form-group">
                        <label for="inputFirstName">Name</label>
                        <input type="text" class="form-control" name="name" id="inputFirstName" placeholder="Enter name">
                        <?php
                        if (isset($validation)) {
                            echo $validation->getError('name');
                        }
                        ?>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail">Email address</label>
                        <input type="email" class="form-control" name="email" id="inputEmail" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">Password</label>
                        <input type="password" class="form-control" name="password" id="inputPassword" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="inputConfirmPassword">Confirm Password</label>
                        <input type="password" class="form-control" name="confirmpassword" id="inputConfirmPassword" placeholder="Confirm password">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
                </form>
                <div class="text-center mt-3">
                    Already have an account? <a href="#">Sign In</a>
                </div>
            </div>



            <!-- *Scripts* -->
            <script src="<?= site_url('assets/js/jquery-3.5.1.min.js') ?>"></script>
            <script src="<?= site_url('assets/js/bootstrap.min.js') ?>"></script>
            <script src="<?= site_url('assets/js/plugin.js') ?>"></script>
            <script src="<?= site_url('assets/js/main.js') ?>"></script>
            <script src="<?= site_url('assets/js/custom-nav.js') ?>"></script>
</body>

</html>