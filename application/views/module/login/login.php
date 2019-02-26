<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
<div class="container">
    <div class="login-form">
        <form action="<?php echo base_url('login/login'); ?>" method="post">
            <h2 class="text-center">Log in</h2>       
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="Username" required="required">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Password" required="required">
            </div>
            <div class="form-group">
                <button type="submit" name="submit" class="btn btn-primary btn-block">Log in</button>
            </div>
            <!-- <div class="clearfix"> -->
                <!-- <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label> -->
                <!-- <a href="#" class="pull-right">Forgot Password?</a> -->
            <!-- </div>         -->
        </form>
        <!-- <p class="text-center"><a href="#">Create an Account</a></p> -->
    </div>
</div>
