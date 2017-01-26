<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo CHtml::encode($this->pageTitle); ?></title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Theme CSS -->
    <link href="css/agency.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top"><?php echo CHtml::encode(Yii::app()->name); ?></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <?php $this->widget('zii.widgets.CMenu',array(
                      'activeCssClass'=>'active',
                      'activateParents'=>true,
                      'htmlOptions' => array('class'=>'nav navbar-nav navbar-right'),
                      'submenuHtmlOptions' => array(
                            'class' => 'dropdown-menu',
                            ),
                      'items'=>array(
                        array(
                          'label'=>'Inicio',
                          'url'=>array('/site/index')
                          //'linkOptions'=>array('id'=>'menuBlog')
                        ),
                        array(
                          'label'=>'Menu',
                          'url'=>array('#'),
                          'linkOptions'=>array('class'=>'dropdown-toggle','data-toggle' => 'dropdown'),
                          'itemOptions'=>array('class'=>'dropdown'),
                          'items'=>array(
                            array('label'=>'Usuarios', 'url'=>array('/users/admin')),
                            array('label'=>'Retos', 'url'=>array('/retos/admin')),
                            array('label'=>'Desafios', 'url'=>array('/desafios/admin')),
                            array('label'=>'Globales', 'url'=>array('/globales/admin')),
                          ),
                        ),
                        array(
                          'label'=>'Logout ('.Yii::app()->user->name.')',
                          'url'=>array('/site/logout'),
                          'visible'=> !Yii::app()->user->isGuest
                        ),
                      ),
                    )); ?>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
            
                <?php echo $content; ?>
    
    </header>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-9" style="background:red;">
            @(Session["CurrentUserDisplay"] != null ? "Welcome, " + @Session["CurrentUserDisplay"] : "Not logged in")
        </div>
        <div class="col-lg-3 text-right" style="background:blue;">Active Portfolio: @(Session["ActivePortfolioName"].ToString()) 
        </div>
    </div>
</div>

<!-- Team Section -->
    <section id="team" class="bg-light-gray">
        <div class="container">
            <div class="row">
            
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/1.jpg" class="img-responsive img-circle" alt="">
                        <h4>Artist</h4>
                        <p class="text-muted">Pais</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
                </div>
            </div>

    </section>


<footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2016</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    

<!-- jQuery -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jqBootstrapValidation.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/js/agency.min.js"></script>

</body>
</html>
