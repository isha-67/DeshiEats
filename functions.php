<?php 
    //ekhane necessary functiongula likhis

    //ei function user exist kore kina check kore sudhu chef table er jonno kora apatoto
    function uidExists($con,$username,$email){
        $sql="SELECT * FROM chef WHERE ChefName = ? OR ChefEmail = ?";
        $stmt=mysqli_stmt_init($con);
        if(!mysqli_stmt_prepare($stmt,$sql)){
          header("location:../Login.php?error=stmtfailed");
          exit();
        }
        
        mysqli_stmt_bind_param($stmt,"ss",$username,$email);
        mysqli_stmt_execute($stmt);
    
        $resultData=mysqli_stmt_get_result($stmt);
    
        if($row=mysqli_fetch_assoc($resultData)){
          return $row;
        }
        else{
           $result=false;
           return $result;
        }
    
        mysqli_stmt_close($stmt);
     }

     //ei function login koray aar session e info rakhe. apatoto chef er jonno kora hoise
     function loginUser($con,$user,$pass){
        $userExists=uidExists($con,$user,$user);
     
        if($userExists==false){
           echo "<script>window.location.href='Login.php?user-dont-exists';</script>";
           exit();
        }
        $pwd=$userExists["ChefPassword"];
        $Check_pwd=md5($pass);
     
        if($Check_pwd==$pwd){
           session_start();
           $_SESSION["ChefID"]=$userExists["ChefID"];
           echo "<script>window.location.href='index.php';</script>";
        }
        else{
           echo "<script>window.location.href='Login.php?Pass-word-mismatch';</script>";
        }
     
      }

?>