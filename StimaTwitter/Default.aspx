<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StimaTwitter._Default" %>

<script src="Scripts/bootstrap.js"></script>
<link href="Content/bootstrap.css" rel="stylesheet" />

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bandung PioPio - The Twitter Analyzer</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet"> 
    <link href="css/lightbox.css" rel="stylesheet"> 
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">

    <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

    <style>

    .spacevertical {
        margin-bottom: 4cm;
    }

    </style>

</head><!--/head-->

<body>
	<header id="header">      
        <div class="container">
            <div class="row">
                <div class="col-sm-12 overflow">
                   <div class="social-icons pull-right">
                        <ul class="nav nav-pills">
                            <li><a href="http://facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="http://twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="http://google.com"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div> 
                </div>
             </div>
        </div>

        <div class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="#header">
                    	<h1><img src="images/bpplogo1.png" alt="logo"></h1>
                    </a>
                    
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="#header">Beranda</a></li>
                        <li class="active"><a href="#instansi">Instansi</a></li>              
                        <li class="active"><a href="#searchsect">Pencarian</a></li>   
                        <li class="active"><a href="#footer">Tentang Kami</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!--/#header-->

    <div class="spacevertical">
    <section id="home-slider">
        <div class="container">
            <div class="row">
                <div class="main-slider">
                    <div class="slide-text">
                        <h1>Bandung, the Smart City</h1>
                        <p>Bandung sebagai sebuah kota besar di Indonesia telah mengimplementasikan sistem pintar dalam pelayanan masyarakat. Pengaduan masyarakat kini dapat dilakukan melalui media sosial, salah satunya yaitu Twitter. Melalui laman ini, Anda dapat melihat berbagai kicauan pengaduan dengan kata kunci yang Anda inginkan.</p>
                        <a href="#instansi" class="btn btn-common">LANJUT</a>
                    </div>
                    <img src="images/home/slider/hill.png" class="slider-hill" alt="slider image">
                    <img src="images/home/slider/gedungsate1.png" class="slider-house" alt="slider image">
                    <img src="images/home/slider/sun.png" class="slider-sun" alt="slider image">
                    <img src="images/home/slider/bandungbird1.png" class="slider-birds1" alt="slider image">
                    <img src="images/home/slider/birds2.png" class="slider-birds2" alt="slider image">
                </div>
            </div>
        </div>
        <div class="preloader"><i class="fa fa-sun-o fa-spin"></i></div>
    </section>
    </div>
    <!--/#home-slider-->

    <section id="services">
        <center> <h1 id="instansi"> Dinas dan Instansi Kota Bandung </h1> </center>
        <div class="container">
            <div class="row">
                <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <div class="single-service">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="300ms">
                            <a href="https://twitter.com/diskominfobdg" id="logo"> <img src="images/home/diskominfo1.jpg" alt=""> </a>
                        </div>
                        <h2>Dinas Komunikasi dan Informatika</h2>
                        <p>DISKOMINFO Kota Bandung merupakan Lembaga Teknis Daerah yang mengurus permasalahan yang berkaitan dengan informasi dan komunikasi penduduk kota Bandung</p>
                    </div>
                </div>
                <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <div class="single-service">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="600ms">
                            <a href="https://twitter.com/pdamtirtawening" id="logo"> <img src="images/home/PDAM1.jpg" alt=""> </a>
                        </div>
                        <h2>PDAM Kota Bandung</h2>
                        <p>PDAM Kota Bandung yang berpusat di PDAM Tirtawening ini mengurus permasalahan distribusi dan pengolahan air bersih untuk penduduk kota Bandung</p>
                    </div>
                </div>
                <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="900ms">
                    <div class="single-service">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="900ms">
                            <a href="https://twitter.com/dbmpkotabdg" id="logo"> <img src="images/home/DBMP1.jpg" alt=""> </a>
                        </div>
                        <h2>Dinas Bina Marga dan Pengairan</h2>
                        <p>DBMP Kota Bandung merupakan lembaga yang mengurus bina marga kota, seperti pengendalian drainase, struktur jalan kota, serta pemeliharaan infrastruktur kota</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#services1-->

    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <div class="single-service">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="300ms">
                            <a href="https://twitter.com/pdkebersihan" id="logo"> <img src="images/home/pdkebersihan1.jpg" alt=""> </a>
                        </div>
                        <h2>Perusahaan Daerah Kebersihan Bandung</h2>
                        <p>PD Kebersihan Kota Bandung merupakan lembaga yang utama dalam mengurus kebersihan dan pengolahan sampah di kota Bandung</p>
                    </div>
                </div>
                <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <div class="single-service">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="600ms">
                            <a href="https://twitter.com/distarcipBDG" id="logo"> <img src="images/home/distarcip.jpg" alt=""> </a>
                        </div>
                        <h2>Dinas Tata Ruang dan Cipta Karya</h2>
                        <p>DISTARCIP Bandung mengurus masalah kualitas dari tata ruang kota, bangunan serta pemukiman di kota Bandung </p>
                    </div>
                </div>
                <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="900ms">
                    <div class="single-service">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="900ms">
                            <a href="http://portal.bandung.go.id/" id="logo"> <img src="images/home/bandunglogo.png" alt=""> </a>
                        </div>
                        <h2>dan lain-lain...</h2>
                        <p>Temukan informasi mengenai kota Bandung pada Portal Resmi Kota Bandung!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#services2-->

    <center>
        <h1 id="searchsect"> Cari Tweet di sini! </h1>
    </center>
    <br />
    <div class="spacevertical">
        <form id="form1" method ="post" runat="server" action="Result.aspx">
        
        <div class="col-md-6">
            <div class="text-right">
                <p>Key Pencarian
            </div>
        </div>
        <div class="col-md-5">
            <asp:TextBox ID="searchkey" runat="server" ></asp:TextBox> </p>
        </div>  
        
        <div class="col-md-6">
            <div class="text-right">
                <p>Key PDAM Kota Bandung
            </div>
        </div>
        <div class="col-md-5">
            <asp:TextBox ID="keyword1" runat="server"></asp:TextBox> </p>
        </div>

        <div class="col-md-6">
            <div class="text-right">
                <p>Key Dinas Komunikasi dan Informatika BDG
            </div>
        </div>
        <div class="col-md-5">
            <asp:TextBox ID="keyword2" runat="server"></asp:TextBox> </p>
        </div>

        <div class="col-md-6">
            <div class="text-right">
                <p>Key Perusahaan Daerah Kebersihan BDG
            </div>
        </div>
        <div class="col-md-5">
            <asp:TextBox ID="keyword3" runat="server"></asp:TextBox> </p>
        </div>

        <div class="col-md-6">
            <div class="text-right">
                <p>Key Dinas Bina Marga dan Pengairan Bandung
            </div>
        </div>
        <div class="col-md-5">
            <asp:TextBox ID="keyword4" runat="server"></asp:TextBox> </p>
        </div>

        <div class="col-md-6">
            <div class="text-right">
                <p>Key Dinas Tata Ruang dan Cipta Karya
            </div>
        </div>
        <div class="col-md-5">
            <asp:TextBox ID="keyword5" runat="server"></asp:TextBox> </p>
        </div>

        <div class="col-md-7">
            <div class="text-right">
                <p> Algoritma Pencarian : 
                    <asp:RadioButton ID="RadioButtonKMP" GroupName="algo" value="KMP" checked="true" text="KMP" runat="server" />
                    <asp:RadioButton ID="RadioButtonBM" GroupName="algo" value="BM" text="Bayer Moore" runat="server" />
                </p>
            </div>
        </div>

        <div class="col-md-5">
            
        </div>

        <div class="col-md-6">
            <div class="text-right">
                <p>
                    <asp:Button type = "Submit" ID="ButtonSubmit" runat="server" Text="Cari!" />
                </p>
            </div>
        </div>

    </form>
    </div>
    <!--/#form-->

    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center bottom-separator">
                    <br />
                    <br />
                    <img src="images/home/under.png" class="img-responsive inline" alt="">
                    <center><h1>About Us</h1></center>
                </div>
                <div class="col-md-4 col-sm-6">
                <div class="text-center">
                    <div class="contact-info bottom">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="300ms">
                            <a href="#" id="logo"> <img src="images/devin.png" alt=""> </a> 
                        </div>
                        <br />
                        <h2>The Controller</h2>
                        <address>
                        Devin Lukianto <br />
                        E-mail: <a href="13514040@std.stei.itb.ac.id">13514040@std.stei.itb.ac.id</a> <br> 
                        </address>
                    </div>
                </div>
                </div>

                <div class="col-md-4 col-sm-6">
                <div class="text-center">
                    <div class="contact-info bottom">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="300ms">
                            <a href="#" id="logo"> <img src="images/micil1.png" alt=""> </a>
                        </div>
                        <br />
                        <h2>The Tracker</h2>
                        <address>
                        Michael Sylvienn <br />
                        E-mail: <a href="13514108@std.stei.itb.ac.id">13514108@std.stei.itb.ac.id</a> <br> 
                        </address>
                    </div>
                </div>
                </div>

                <div class="col-md-4 col-sm-6">
                <div class="text-center">
                    <div class="contact-info bottom">
                        <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="300ms">
                            <a href="#" id="logo"> <img src="images/niko.png" alt=""> </a>
                        </div>
                        <br />
                        <h2>The Terminator</h2>
                        <address>
                        Nikolas Wangsaputra <br />
                        E-mail: <a href="13514048@std.stei.itb.ac.id">13514048@std.stei.itb.ac.id</a> <br>  
                        </address>
                    </div>
                </div>
                </div>
              
                <div class="col-sm-12">
                    <div class="copyright-text text-center">
                        <p>&copy; BandungPioPio 2016. All Rights Reserved.</p>
                        <p>Designed by <a target="_blank" href="http://www.themeum.com">Themeum</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/#footer-->

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/lightbox.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>   
</body>