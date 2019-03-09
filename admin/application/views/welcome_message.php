<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Admin - Aplikasi USBN SMKN 1 Kotabaru</title>
    <link rel="stylesheet" href="<?php echo base_url('../assets/css/bootstrap.min.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('../assets/css/dashboard.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('./assets/css/style.css'); ?>">
</head>
<body>
<div id="appAdmin" v-cloak>
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="menu-title">
                        <a href="<?php echo base_url('welcome/guru')?>"><i class="fa fa-user"></i> Menu guru</a>
                    </li>
                    <li class="menu-title">
                        <a href="<?php echo base_url('welcome/kelas')?>"><i class="fa fa-users"></i> Menu kelas</a>
                    </li>
                    <li class="menu-title">
                        <a href="<?php echo base_url('welcome/siswa')?>"><i class="fa fa-users"></i> Menu Siswa</a>
					</li>
                    <li class="menu-title">
                        <a href="<?php echo base_url('welcome/soal')?>"><i class="fa fa-users"></i> Menu soal</a>
					</li>
                    <li class="menu-title">
                        <a href="<?php echo base_url('welcome/ujian')?>"><i class="fa fa-users"></i> Menu ujian</a>
					</li>
                    <li class="menu-title">
                        <a href="<?php echo base_url('welcome/nilai')?>"><i class="fa fa-users"></i> Menu rekap nilai</a>
					</li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">
        <!-- Header-->
        <header id="header" class="header">
			<div class="top-left">
                <div class="navbar-header">
					<a href="">AppUBK</a>
					<a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
        </a>
		<input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap">
				<a class="nav-link" href="#">Sign out</a>
			</li>
		</ul>
	</nav>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item">
                            <a class="nav-link" href="<?php echo base_url('welcome/guru')?>">
                            <span data-feather="home"></span>
							Menu Guru
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url('welcome/kelas')?>">
							<span data-feather="file"></span>
							Menu Kelas
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url('welcome/siswa')?>">
							<span data-feather="shopping-cart"></span>
							Menu Siswa
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url('welcome/soal')?>">
					        <span data-feather="users"></span>
							Menu Soal
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url('welcome/ujian')?>">
					        <span data-feather="bar-chart-2"></span>
							Menu Ujian
							</a>
						</li>
                    </ul>
                </div>
            </nav>
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4" id="appAdmin" v-cloak>
                <?php echo $content; ?>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-6">
                            Powered By <strong>Hendri Arifin, S.Kom - 085746080544</strong>
                        </div>
                        <div class="col-6 text-right">
                            Page rendered in <strong>{elapsed_time}</strong> seconds
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <script src="<?php echo base_url('../assets/js/vue.js'); ?>"></script>
    <script src="<?php echo base_url('../assets/js/axios.min.js'); ?>"></script>
    <script src="<?php echo base_url('./assets/js/nicEdit.js'); ?>"></script> 
    <script src="<?php echo base_url('./assets/js/main.js'); ?>"></script>
    <script src="<?php echo base_url('../assets/js/jquery.min.js'); ?>"></script>
    <script src="<?php echo base_url('../assets/js/popper.min.js'); ?>"></script>
    <script src="<?php echo base_url('../assets/js/bootstrap.js'); ?>"></script>
    <script type="text/javascript"> 
        bkLib.onDomLoaded(function() { 
            nicEditors.allTextAreas({iconsPath:'<?php echo base_url(); ?>assets/js/nicEditorIcons.gif',uploadURI:'<?php echo site_url() ?>./welcome/upload'});
        });
    </script>
    
	<!-- icon -->
	<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
	<script>
		feather.replace()
	</script>
</body>
</html>