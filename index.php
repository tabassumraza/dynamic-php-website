<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Management System</title>
    <?php include "shared/headlinks.php"; ?>
    <style>
        .headimg{
            width: 100%;}
        </style>
</head>
<body>
<?php include "shared/navbar.php"; ?>

<div id="slider" class="slider-1 slider-2">
        <div class="flexslider slider-wrapper">
            
        <img class="headimg" src="uploads/slider-4.png" alt="">
        </div>
    </div><!-- End Slider Section -->
    <!-- Start Service Section -->
    <div id="hm-service" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="layer-ttl">
                <h3>FUTURE OF IT TECHNOLOGY</h3>
            </div>
            <div class="layer-container row">
                <div class="hm-service-left col-md-5">
                    <img src="uploads/sys.jpg">
                </div>
                <div class="hm-service-right col-md-7">
                    <p class="paragraph-medium paragraph-black"><b> </b></p>
                    <div class="hm-service">
                        <div class="layer-ttl">
                            
                        <h2><b >  </h2><p class="paragraph-medium paragraph-black">Having a single, well-managed database streamlines the learning experience for all the students. </p>
                        <h2><b> </h2><p class="paragraph-medium paragraph-black"> Teachers for the administration, tracking student records, presentation of documents, reporting and delivery of course materials to the students. Students can upload assignments and take assessments, all from one platform.</p>
                        <h2></h2> <p class="paragraph-medium paragraph-black"><b>It also makes it convenient for the instructors to be able to distribute resources to all members</b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Service Section -->




    <div id="hm-service" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="layer-ttl">
                <h3>Who We Are</h3>
            </div>
            <div class="layer-container row">
                <div class="hm-service-left col-md-5">
                    <img src="uploads/logo2.png">
                </div>
                <div class="hm-service-right col-md-7">
                    <p class="paragraph-medium paragraph-black"><b> </b></p>
                    <div class="hm-service">
                        <div class="layer-ttl">
                            
                        <h2>PURPOSE<b >  </h2><p class="paragraph-medium paragraph-black">The purpose of project management is to help you foresee the risks and challenges that could derail the completion of a project. </p>
                        <h2>FACILITIES<b> </h2><p class="paragraph-medium paragraph-black"> Project Managers within Facilities Management develops facility projects, both renovation and new. construction, to support the University's Capital Improvement Program, from initiation stage through. planning, design and construction.</p>
                        <h2>MISSION</h2> <p class="paragraph-medium paragraph-black"><b>A mission statement defines the organization's business, its objectives, and how it will reach these objectives. A vision statement details where the organization aspires to go.</b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Service Section -->






    
 
    
    <!-- Start Make an login Modal -->
    <div id="appointment" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title">start</h5>
                    <a href="projectmanagement/accountspages/hms/projectdetail.php"> 
                    <button  type="button"  class="close" data-dismiss="modal">&times;</button>
                    </a>
                  
                </div>
                <div class="modal-body">
                    <div class="appointment-error"></div>
                    <form action="submitmyproject.php" method="POST">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-user-o"></i>
                                <input class="mdl-textfield__input"  name="name" type="text" pattern="[A-Z,a-z, ]*" id="appointment-name">
                                <label class="mdl-textfield__label" for="appointment-name">Name</label>
                                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-envelope-o"></i>
                                <input class="mdl-textfield__input" name="email" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="appointment-email">
                                <label class="mdl-textfield__label" for="appointment-email">Email</label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                            </div>
                        </div>
                       
              
                       
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-calendar-o"></i>
                                <input class="mdl-textfield__input" type="text" id="appointment-date" onfocus="(this.type='date')" onblur="(this.type='text')">
                                 </div>
                        </div>
                    </div>
                            </form>
                   
                    <div class="text-center pt-4">
                        <button name="submit" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary button-lg make-appointment">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Make an login Modal -->

    <?php
        if(isset($_POST['submit'])){
            $name = $_POST['name'];
            $email = $_POST['email'];
            $date = $_POST['date'];
            $insert = "INSERT INTO `users`(`fullname`, `email`,`userip` ,`Status` ) 
            VALUES ('$fname',$email','$date')";
            mysqli_query($conn,$insert);
            header("location:index.php");

        }
?>
    <?php include "shared/footer.php"; ?>
     <?php include "shared/scripts.php"; ?>
</body>
</html>
