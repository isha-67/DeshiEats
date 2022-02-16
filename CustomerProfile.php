<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <!-- Bootstrap CSS -->
    

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

        <link type="text/css" rel="stylesheet" href="css/DeStylesheet2.css"/>
    
    
        <title>Desh-eats_CustomerProfile_Page</title>

    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
              <a class="navbar-brand disabled navlogo">
                  <img src="images/Login/deshi.png">
                </a>

                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                  <li class="nav-item">
                    <a class="nav-link navwrite" aria-current="page" href="#">Home</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link navwrite" href="#">Menu</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link navwrite" href="#">Order</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link navwrite" href="#">Register</a>
                  </li>
                  
                  <li class="nav-item">
                    <a class="nav-link navwrite" href="#">Login</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link navwrite" href="#">About</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link navwrite" href="#">Contact Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link navwrite" href="#">Devs Corner</a>
                  </li>
                </ul>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fas fa-shopping-cart icons ico"></i></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fas fa-user ico"></i></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fas fa-sign-out-alt ico"></i></a>
                      </li>
               </ul>
              </div>
            </div>
          </nav>

          <!--<div class="contents">-->
          <div class="container userprofileform">
            
              <div class="row userprofileformrow">
                  <!--image container div-->
                  <div class="col-5 upload">
                    <img src = "IMAGES/musta.jpg" width = 150 height= 150 alt="">
                    <div class="round">
                      <input type="file">
                      <i class = "fa fa-camera" style="color:aliceblue"></i>
                    </div> 
                  </div>

                  <div class="col-7 userprofiledit ">
                      <div class="userprofileheading mt-4">
                          <p class="userprofileheadinguser">Customer's Profile</p>
                      </div>
                      <form action="" method="POST" enctype="multipart/form-data">
                        <div class="mb-4 mt-2 userprofilecontents">
                          <p class="userprofilelabels">Full Name:</p>
                          <input type="text" placeholder="#Backend <?php //echo $fullName ?>" name="userprofilename" value="" class="form-control userformholders" />
                        </div>

                        <!-- **********available Name er ekta variable thakbe... edit button click korle edit kora jabe.*********** -->

                        <div class="mb-4 mt-2 userprofilecontents">
                          <p class="userprofilelabels">Email:</p>
                          <input type="email" placeholder="#Backend<?php //echo $email ?>" name="userprofileemail" value="" class="form-control userformholders"/>
                        </div>
                        <div class="mb-4 mt-2 userprofilecontents">
                          <p class="userprofilelabels">Contact No:</p>
                          <input type="text" placeholder="#Backend<?php //echo $contact ?>" name="userprofilecontactno" value="" class="form-control userformholders"/>
                        </div>
                        <div class="mb-4 mt-2 userprofilecontents">
                          <p class="userprofilelabels">Password:</p>
                          <input type="password" placeholder="#Backende<?php //echo $password ?>" name="userPassword" value="" class="form-control userformholders"/>
                        </div>
                        <div class="mb-4 mt-2 userprofilecontents">
                          <p class="userprofilelabels">User Name:</p>
                          <input type="text" placeholder="#Backend<?php //echo $userName ?>" name="username" value="" class="form-control userformholders" disabled/>
                        </div>                      
                        <div class="userprofileallbuttons">
                          <button type="submit" name="UserProfileconfirm" value="Save changes" class="btn-submit" onclick=" " > Submit</button>
                          <!--<input type="submit" name="UserProfilePasswordChange" value="Change Password" class="passwordchangebutton" onclick=" "/>-->
                        </div>
                      </form>
                  </div>
              </div>
            
          </div>

          <!--</div>-->

          
          <div class="footer_wrapper bg-dark fit-content">
            <div class="container">
              <div class="row pt-3">
              <div class="col-md-4 text-center footerimg">
                    <img src="images/Login/deshi.png">
                </div>
                <div class="col-md-4 text-center">
                    <p>
                        <a class="footwrite" href="Index.html">Home</a>
                    </p>
                    <p>
                        <a class="footwrite" href="Menu.html">Menu</a>
                    </p>
                    <p>
                        <a class="footwrite" href="Register.html">Register</a>
                    </p>
                  <p>
                    <a class="footwrite" href="#">Order</a>
                  </p>
                  <p>
                    <a class="footwrite" href="#">About</a>
                  </p>
                  <p>
                    <a class="footwrite" href="#">Devs Corner</a>
                  </p>
                  <p>
                    <a class="footwrite" href="#">Contact Us</a>
                  </p>
                </div>
                <div class="col-md-4 text-center">
                  <p>
                    <a href="#"><i class="fab fa-facebook footicons"></i></a>
                  </p>
                  <p>
                    <a href="#"><i class="fab fa-instagram-square footicons"></i></a>
                  </p>
                  <p>
                    <a href="#"><i class="fab fa-linkedin-in footicons"></i></a>
                  </p>
                  <p>
                    <a href="#"><i class="fab fa-twitter footicons"></i></a>
                  </p>
                </div>
              </div>
              <div class="row">
                <p class="text-center last">@ALL RIGHTS RESERVED BY TEAM OPTIMIST...</p>
              </div>
            </div>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>









</html>