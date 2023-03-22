<?php

    include "projectconfig.php";
    $projectname=$_POST['projectname'];
    $projectdescription=$_POST['projectdescription'];
    $studentemail=$_POST['studentemail'];
    $submissionDate=$_POST['submissionDate'];
    $subject=$_POST['subject'];

    $mysql="INSERT INTO projectdetail (projectname,projectdescription,studentemail,submissionDate,subject) VALUES ('$projectname','$projectdescription','$studentemail','$submissionDate','$subject')";
    
    if($conn->query($mysql)){
       
            header("location:projectdetail.php");
    }
    else{
        echo"some error occured";
    }



    
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    
    // Check if image file is a actual image or fake image
    if(isset($_POST["submit"])) {
      $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
      if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
      } else {
        echo "File is not an image.";
        $uploadOk = 0;
      }
    }
    
    // Check if file already exists
    if (file_exists($target_file)) {
      echo "Sorry, file already exists.";
      $uploadOk = 0;
    }
    
    // Check file size
    if ($_FILES["fileToUpload"]["size"] > 500000) {
      echo "Sorry, your file is too large.";
      $uploadOk = 0;
    }
    
    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" && $imageFileType != "txt" && $imageFileType != "pdf"  && $imageFileType != "doc" && $imageFileType != "docx"   ) {
      echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
      $uploadOk = 0;
    }
    
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
      echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
      if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
      } else {
        echo "Sorry, there was an error uploading your file.";
      }
    }
    







    
// for server sql
    // CREATE TABLE users( id int PRIMARY key AUTO_INCREMENT,
    //  fname varchar(50), lname varchar(50), email varchar(50), 
    // pasword varchar(50
    
    ?>