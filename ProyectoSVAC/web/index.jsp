    <%@include file="resources/views/head.jspf" %>
    <style type="text/css">
    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }

    @media (max-width: 740px) {
      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {
      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }
    </style>
    <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body ng-app="myLogin" ng-controller="loginCtrl">
        <%@include file="resources/views/navBarPrinc.jsp"%>
        
        <!--Carousel Wrapper-->
        <div id="carousel-example-1z" class="carousel slide carousel-fade pt-4" data-ride="carousel">

          <!--Indicators-->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-1z" data-slide-to="1"></li>
            <li data-target="#carousel-example-1z" data-slide-to="2"></li>
          </ol>
          <!--/.Indicators-->

          <!--Slides-->
          <div class="carousel-inner" role="listbox">

            <!--First slide-->
            <div class="carousel-item active">
              <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%282%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                  <!-- Content -->
                  <div class="text-center white-text mx-5 wow fadeIn">
                        <h1 class="mb-4 titulogo">
                          <strong>Learn Bootstrap 4 with MDB</strong>
                        </h1>
                        <p>
                          <strong>Best & free guide of responsive web design</strong>
                        </p>
                        <p class="mb-4 d-none d-md-block">
                          <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and written versions
                            available. Create your own, stunning website.</strong>
                        </p>
                  </div>
                  <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

              </div>
            </div>
            <!--/First slide-->

            <!--Second slide-->
            <div class="carousel-item">
              <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                  <!-- Content -->
                  <div class="text-center white-text mx-5 wow fadeIn">
                    <h1 class="mb-4 titulogo">
                      <strong>Learn Bootstrap 4 with MDB</strong>
                    </h1>
                    <p>
                      <strong>Best & free guide of responsive web design</strong>
                    </p>
                    <p class="mb-4 d-none d-md-block">
                      <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and written versions
                        available. Create your own, stunning website.</strong>
                    </p>
                  </div>
                  <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

              </div>
            </div>
            <!--/Second slide-->

            <!--Third slide-->
            <div class="carousel-item">
              <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg'); background-repeat: no-repeat; background-size: cover;">

                <!-- Mask & flexbox options-->
                <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

                  <!-- Content -->
                  <div class="text-center white-text mx-5 wow fadeIn">
                    <h1 class="mb-4 titulogo">
                      <strong>Learn Bootstrap 4 with MDB</strong>
                    </h1>
                    <p>
                      <strong>Best & free guide of responsive web design</strong>
                    </p>
                    <p class="mb-4 d-none d-md-block">
                      <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and written versions
                        available. Create your own, stunning website.</strong>
                    </p>
                  </div>
                  <!-- Content -->

                </div>
                <!-- Mask & flexbox options-->

              </div>
            </div>
            <!--/Third slide-->

          </div>
          <!--/.Slides-->

          <!--Controls-->
          <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
          <!--/.Controls-->

        </div>
        <!--/.Carousel Wrapper-->

        <!--Main layout-->
        <main>
          <div class="container">

            <!--Navbar-->
            <nav class="navbar navbar-expand-lg navbar-dark mdb-color lighten-3 mt-3 mb-5">

              <!-- Navbar brand -->
              <span class="navbar-brand">Categories:</span>

              <!-- Collapse button -->
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <!-- Collapsible content -->
              <div class="collapse navbar-collapse" id="basicExampleNav">

                <!-- Links -->
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                    <a class="nav-link" href="#">All
                      <span class="sr-only">(current)</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Shirts</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Sport wears</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Outwears</a>
                  </li>

                </ul>
                <!-- Links -->

                <form class="form-inline">
                  <div class="md-form my-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                  </div>
                </form>
              </div>
              <!-- Collapsible content -->

            </nav>
            <!--/.Navbar-->

            <!--Section: Products v.3-->
            <section class="text-center mb-4">

              <!--Grid row-->
              <div class="row wow fadeIn">

                <!--Grid column-->
                <div class="col-lg-3 col-md-6 mb-4">

                  <!--Card-->
                  <div class="card">

                    <!--Card image-->
                    <div class="view overlay">
                      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg" class="card-img-top" alt="">
                      <a>
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>
                    <!--Card image-->

                    <!--Card content-->
                    <div class="card-body text-center">
                      <!--Category & Title-->
                      <a href="" class="grey-text">
                        <h5>Shirt</h5>
                      </a>
                      <h5>
                        <strong>
                          <a href="" class="dark-grey-text">Denim shirt
                            <span class="badge badge-pill danger-color">NEW</span>
                          </a>
                        </strong>
                      </h5>

                      <h4 class="font-weight-bold blue-text">
                        <strong>120$</strong>
                      </h4>

                    </div>
                    <!--Card content-->

                  </div>
                  <!--Card-->

                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-3 col-md-6 mb-4">

                  <!--Card-->
                  <div class="card">

                    <!--Card image-->
                    <div class="view overlay">
                      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg" class="card-img-top" alt="">
                      <a>
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>
                    <!--Card image-->

                    <!--Card content-->
                    <div class="card-body text-center">
                      <!--Category & Title-->
                      <a href="" class="grey-text">
                        <h5>Sport wear</h5>
                      </a>
                      <h5>
                        <strong>
                          <a href="" class="dark-grey-text">Sweatshirt</a>
                        </strong>
                      </h5>

                      <h4 class="font-weight-bold blue-text">
                        <strong>139$</strong>
                      </h4>

                    </div>
                    <!--Card content-->

                  </div>
                  <!--Card-->

                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-3 col-md-6 mb-4">

                  <!--Card-->
                  <div class="card">

                    <!--Card image-->
                    <div class="view overlay">
                      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg" class="card-img-top" alt="">
                      <a>
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>
                    <!--Card image-->

                    <!--Card content-->
                    <div class="card-body text-center">
                      <!--Category & Title-->
                      <a href="" class="grey-text">
                        <h5>Sport wear</h5>
                      </a>
                      <h5>
                        <strong>
                          <a href="" class="dark-grey-text">Grey blouse
                            <span class="badge badge-pill primary-color">bestseller</span>
                          </a>
                        </strong>
                      </h5>

                      <h4 class="font-weight-bold blue-text">
                        <strong>99$</strong>
                      </h4>

                    </div>
                    <!--Card content-->

                  </div>
                  <!--Card-->

                </div>
                <!--Grid column-->

                <!--Fourth column-->
                <div class="col-lg-3 col-md-6 mb-4">

                  <!--Card-->
                  <div class="card">

                    <!--Card image-->
                    <div class="view overlay">
                      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/15.jpg" class="card-img-top" alt="">
                      <a>
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>
                    <!--Card image-->

                    <!--Card content-->
                    <div class="card-body text-center">
                      <!--Category & Title-->
                      <a href="" class="grey-text">
                        <h5>Outwear</h5>
                      </a>
                      <h5>
                        <strong>
                          <a href="" class="dark-grey-text">Black jacket</a>
                        </strong>
                      </h5>

                      <h4 class="font-weight-bold blue-text">
                        <strong>219$</strong>
                      </h4>

                    </div>
                    <!--Card content-->

                  </div>
                  <!--Card-->

                </div>
                <!--Fourth column-->

              </div>
              <!--Grid row-->

              <!--Grid row-->
              <div class="row wow fadeIn">

                <!--Grid column-->
                <div class="col-lg-3 col-md-6 mb-4">

                  <!--Card-->
                  <div class="card">

                    <!--Card image-->
                    <div class="view overlay">
                      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg" class="card-img-top" alt="">
                      <a>
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>
                    <!--Card image-->

                    <!--Card content-->
                    <div class="card-body text-center">
                      <!--Category & Title-->
                      <a href="" class="grey-text">
                        <h5>Shirt</h5>
                      </a>
                      <h5>
                        <strong>
                          <a href="" class="dark-grey-text">Denim shirt
                            <span class="badge badge-pill danger-color">NEW</span>
                          </a>
                        </strong>
                      </h5>

                      <h4 class="font-weight-bold blue-text">
                        <strong>120$</strong>
                      </h4>

                    </div>
                    <!--Card content-->

                  </div>
                  <!--Card-->

                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-3 col-md-6 mb-4">

                  <!--Card-->
                  <div class="card">

                    <!--Card image-->
                    <div class="view overlay">
                      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg" class="card-img-top" alt="">
                      <a>
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>
                    <!--Card image-->

                    <!--Card content-->
                    <div class="card-body text-center">
                      <!--Category & Title-->
                      <a href="" class="grey-text">
                        <h5>Sport wear</h5>
                      </a>
                      <h5>
                        <strong>
                          <a href="" class="dark-grey-text">Sweatshirt</a>
                        </strong>
                      </h5>

                      <h4 class="font-weight-bold blue-text">
                        <strong>139$</strong>
                      </h4>

                    </div>
                    <!--Card content-->

                  </div>
                  <!--Card-->

                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-3 col-md-6 mb-4">

                  <!--Card-->
                  <div class="card">

                    <!--Card image-->
                    <div class="view overlay">
                      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/15.jpg" class="card-img-top" alt="">
                      <a>
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>
                    <!--Card image-->

                    <!--Card content-->
                    <div class="card-body text-center">
                      <!--Category & Title-->
                      <a href="" class="grey-text">
                        <h5>Sport wear</h5>
                      </a>
                      <h5>
                        <strong>
                          <a href="" class="dark-grey-text">Grey blouse
                            <span class="badge badge-pill primary-color">bestseller</span>
                          </a>
                        </strong>
                      </h5>

                      <h4 class="font-weight-bold blue-text">
                        <strong>99$</strong>
                      </h4>

                    </div>
                    <!--Card content-->

                  </div>
                  <!--Card-->

                </div>
                <!--Grid column-->

                <!--Fourth column-->
                <div class="col-lg-3 col-md-6 mb-4">

                  <!--Card-->
                  <div class="card">

                    <!--Card image-->
                    <div class="view overlay">
                      <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg" class="card-img-top" alt="">
                      <a>
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>
                    <!--Card image-->

                    <!--Card content-->
                    <div class="card-body text-center">
                      <!--Category & Title-->
                      <a href="" class="grey-text">
                        <h5>Outwear</h5>
                      </a>
                      <h5>
                        <strong>
                          <a href="" class="dark-grey-text">Black jacket</a>
                        </strong>
                      </h5>

                      <h4 class="font-weight-bold blue-text">
                        <strong>219$</strong>
                      </h4>

                    </div>
                    <!--Card content-->

                  </div>
                  <!--Card-->

                </div>
                <!--Fourth column-->

              </div>
              <!--Grid row-->

            </section>
            <!--Section: Products v.3-->

            <!--Pagination-->
            <nav class="d-flex justify-content-center wow fadeIn">
              <ul class="pagination pg-blue">

                <!--Arrow left-->
                <li class="page-item disabled">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                  </a>
                </li>

                <li class="page-item active">
                  <a class="page-link" href="#">1
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">4</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">5</a>
                </li>

                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              </ul>
            </nav>
            <!--Pagination-->

          </div>
        </main>
        <!--Main layout-->

        <!--Footer-->
        <footer class="page-footer text-center font-small mt-4 wow fadeIn">
          <!--Copyright-->
          <div class="footer-copyright py-3">
            © 2018 Copyright:
            <a href="https://mdbootstrap.com/bootstrap-tutorial/" target="_blank"> SVAC_CSC </a>
          </div>
          <!--/.Copyright-->
        </footer>
        <!--/.Footer-->
        
        
        <!--Modal: Login / Register Form-->
        <div class="modal fade modalSesion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog cascading-modal" role="document">
                <div class="modal-content">
                    <div style="background-color: #eeeeee;border-color: #4c4f53; border-style: solid;">
                        <!--Modal cascading tabs-->
                        <div class="modal-c-tabs">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs tabs-2 white" role="tablist" style="padding: 11px;">
                                <li class="nav-item">
                                    <a id="hyperlinkLogin" class="nav-link active" data-toggle="tab" href="#panel7" role="tab"
                                       style="color: #2E2E2E;">Iniciar Sesión</a>
                                </li>
                                <li class="nav-item">
                                    <a id="hyperlinkSignIn" class="nav-link" data-toggle="tab" href="#panel8" role="tab"
                                       style="color: #2E2E2E;">Crear una cuenta</a>
                                </li>
                            </ul>
                            <!-- Tab panels -->
                            <div class="tab-content">
                                <!--LOGIN   -->
                                <div class="tab-pane fade in show active" id="panel7" role="tabpanel">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-1">&nbsp;</div>
                                            <div class="col-lg-10">
                                                <!--Body-->
                                                <div class="modal-body mb-1">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <img src="resources/images/logoTaza.png" alt=""/>
                                                        </div>
                                                        <div class="col-lg-6" style="padding-top: 38px; text-align: center;">
                                                            <p class="titulogoSesion" style="font-size: 27px;">Bienvenido a</p>
                                                            <p class="titulogoSesion" style="font-size: 27px;">SVAC_CSC</p>
                                                        </div>
                                                    </div>
                                                    <div class="md-form form-sm mb-4">
                                                        <i class="fa fa-envelope prefix"></i>
                                                        <input type="text" id="modalLRInput10" class="form-control form-control-sm validate" ng-model="username">
                                                        <label for="modalLRInput10">Tu nombre de usuario</label>
                                                    </div>

                                                    <div class="md-form form-sm mb-5">
                                                        <i class="fa fa-lock prefix"></i>
                                                        <input type="password" id="modalLRInput11" class="form-control form-control-sm validate" ng-model="password">
                                                        <label for="modalLRInput11">Tu contraseña</label>
                                                    </div>
                                                    <div class="text-center mt-2" style="padding-bottom: 8px;">
                                                        <button class="btn btn-success" type="submit" ng-click="loginRegistro()"
                                                                style="height: 43px;">Iniciar Sesión</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-1">&nbsp;</div>
                                        </div>
                                    </div>
                                </div>
                                <!--/.Panel 7-->

                                <!--REGISTRO-->
                                <div class="tab-pane fade" id="panel8" role="tabpanel">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-1">&nbsp;</div>
                                            <div class="col-lg-10">
                                                <!--Body-->
                                                <div class="modal-body mb-1">
                                                    <div class="row">
                                                        <form name="registro" ng-submit="sumbitForm(registro.$valid)">
                                                            <div class="md-form form-sm lg-4" ng-class="{ 'has-error' : !registro.name.$pristine && registro.name.$invalid }">
                                                                <label for="modalLRInput15">Your name</label>
                                                                <input type="text" name="name" id="modalLRInput15" ng-model="name" class="form-control form-control-sm validate" required> 
                                                                <span ng-show="!registro.name.$pristine && registro.name.$invalid" class="active red-text">No debe dejar espacio en blanco</span>
                                                            </div>
                                                        </form>&nbsp;&nbsp;&nbsp;
                                                        <form name="registro1" ng-submit="sumbitForm(registro1.$valid)">
                                                            <div class="md-form form-sm lg-4" ng-class="{ 'has-error' : !registro1.name.$pristine && registro1.name.$invalid }">
                                                                <label for="modalLRInput16">Your lastname</label>
                                                                <input type="text" name="lastname" id="modalLRInput16" ng-model="lastname" class="form-control form-control-sm validate" required> 
                                                                <span ng-show="!registro1.lastname.$pristine && registro1.lastname.$invalid" class="active red-text">No debe dejar espacio en blanco</span>
                                                            </div>
                                                        </form>
                                                        </div>
                                                    <div class="row">
                                                        <form name="registro2" ng-submit="sumbitForm(registro2.$valid)">
                                                            <div class="md-form form-sm lg-4" ng-class="{ 'has-error' : !registro2.name.$pristine && registro2.name.$invalid }">
                                                                <label for="modalLRInput17">Your username</label>
                                                                <input type="text" name="username" id="modalLRInput17" ng-model="username" class="form-control form-control-sm validate" required> 
                                                                <span ng-show="!registro2.lastname.$pristine && registro2.lastname.$invalid" class="active red-text">No debe dejar espacio en blanco</span>
                                                            </div>
                                                        </form>&nbsp;&nbsp;&nbsp;
                                                        <form name="registro2" ng-submit="sumbitForm(registro2.$valid)">
                                                            <div class="md-form form-sm lg-4">
                                                                <label for="modalLRInput18">Type of Client</label><br><br>
                                                                <select id="list">
                                                                    <option value="client">Cliente</option>
                                                                    <option value="admin">Administrador</option>
                                                                    <option value="vend">Vendedor</option>
                                                                    <option value="art">Artesano</option>         
                                                                    <option value="alm">Almacen</option>
                                                                </select>
                                                            </div>
                                                        </form> 
                                                        </div>
                                                    <div class="row">
                                                        <div class="md-form form-sm lg-4">
                                                            <input type="email" id="modalLRInput12" class="form-control form-control-sm validate">
                                                            <label for="modalLRInput12">Your email</label>
                                                        </div>&nbsp;&nbsp;&nbsp;
                                                        <div class="md-form form-sm lg-4">
                                                            <input type="password" id="modalLRInput13" class="form-control form-control-sm validate">
                                                            <label data-error="wrong" data-success="right" for="modalLRInput13">Your password</label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="md-form form-sm mb-12">
                                                            <input type="password" id="modalLRInput14" class="form-control form-control-sm validate">
                                                            <label data-error="wrong" data-success="right" for="modalLRInput14">Repeat password</label>
                                                        </div>
                                                    </div>
                                                    <div class="text-center form-sm mt-2" style="padding-bottom: 8px;">
                                                        <button class="btn btn-info">Sign up <i class="fa fa-sign-in ml-1"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-1">&nbsp;</div>
                                        </div>
                                        <!--/.Panel 8-->
                                    </div>
                                </div>
                        </div>
                        
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--Modal: Login / Register Form-->
        <%@include file="resources/views/foot.jspf" %>
        <script src="http://localhost:8084/ProyectoSVAC/resources/js/loginController.js" type="text/javascript"></script>
        <script src="http://localhost:8084/ProyectoSVAC/resources/js/dirPagination.js" type="text/javascript"></script>     
    </body>
</html>
