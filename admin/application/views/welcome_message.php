<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Admin - Aplikasi USBN SMKN 1 Kotabaru</title>
    <link rel="stylesheet" href="<?php echo base_url('../assets/css/bootstrap.min.css'); ?>">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="<?php echo base_url('./assets/css/style.css'); ?>">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
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
                        <a href="<?php echo base_url('welcome/soal')?>"><i class="fa fa-users"></i> Menu soal</a>
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
            <div class="top-right">
                <div class="header-menu">
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control " type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                        <a href="#sign-out"><i class="fa fa-sign-out"></i></a>
                    </div>


                </div>
            </div>
        </header>
        <div class="content">
                <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="">
                                        <div class="text-left dib col-lg-12 col-md-12">
											<?php echo $content; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
        </div>
        <!-- /.content -->
        <!-- /#right-panel -->
        <div class="clearfix"></div>
        <!-- Footer -->
		<footer class="site-footer">
            <div class="footer-inner bg-white">
                <div class="row">
					<div class="col-xs-6">
                        Copyright &copy; 2019 Computer Media Utama 
					</div>
                </div>
            </div>
        </footer>
    </div>
    <transition name="formEdit">
        <div v-if="editKelas.form" class="modalSelesai">
        	<div class="modal-dialog modal-dialog-centered">
        		<div class="modal-content modal-c">
        		    <div class="modal-body">
                    <button type="button" class="close" aria-label="Close" @click="editKelas.form=false,editKelas.nama='',editKelas.id_kelas='',editKelas.key=''">
                        <span aria-hidden="true">&times;</span>
                    </button>
                        <input class="form-control" type="text" placeholder="Nama Kelas" v-model="editKelas.nama">
                    </div>
                    <div class="model-footer">
                        <button class="btn btn-danger" @click="editKelas.form=false,editKelas.nama='',editKelas.id_kelas='',editKelas.key=''">Batal</button>
                        <button class="btn btn-warning" @click="editClass()">Edit</button>
                    </div>
        		</div>
        	</div>
        </div>
    </transition>
</div>
    <script src="<?php echo base_url('../assets/js/vue.js'); ?>"></script>
    <script src="<?php echo base_url('../assets/js/axios.min.js'); ?>"></script>
    <script src="<?php echo base_url('./assets/js/main.js'); ?>"></script>
    <script src="http://js.nicedit.com/nicEdit-latest.js"></script> 
    <script type="text/javascript">
    bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
    </script>
</body>
</html>