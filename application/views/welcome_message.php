<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Welcome to CodeIgniter</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	<link rel="stylesheet" href="<?=base_url('./assets/css/style.css')?>">
</head>
<body>
		<div id="app">
		<nav class="navbar fixed-top navbar-dark">
		<div class="navbar-brand judulapp">Aplikasi Latihan UNBK</div>
			<!-- <div class="navbar nav" style="background-color: #343434;;">
				<img src="<?=base_url('./assets/avatar.gif') ?>" alt="..">	
			</div> -->
		</nav>

				<div>
					<?php echo $content; ?>
				</div>
		</div>
	<script src="<?php echo base_url('assets/js/vue.js')?>"></script>
	<script src="<?php echo base_url('assets/js/axios.min.js')?>"></script>
	<script src="<?php echo base_url('assets/js/script.js')?>"></script>
</body>
</html>