<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Aplikasi USBN SMKN 1 Kotabaru</title>
	<link rel="stylesheet" href="<?=base_url('./assets/css/bootstrap.min.css')?>">
	<!--link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous" -->
	<link rel="stylesheet" href="<?=base_url('./assets/css/style.css')?>">
</head>
<body>
		<div id="app" v-cloak>
		<nav class="navbar fixed-top navbar-dark">
		<div class="navbar-brand judulapp">Aplikasi USBN SMKN 1 Kotabaru</div>
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