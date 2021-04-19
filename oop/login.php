<?php
 include ('connect.php');
 class obj_log{
    public static function login($email,$pass){
        global $conn;
        // $password = "') or '1'='1';");//";
        session_start();
        $pass = md5($pass);
        $resultck = mysqli_query($conn, "call login('$email','$pass')");
        if($email == "")
        {
            echo"<script>";
            echo"window.location.href='index?email=null';";
            echo"</script>";
        }
        else if($pass == "")
        {
            echo"<script>";
            echo"window.location.href='index?pass=null';";
            echo"</script>";
        }
        else if(!mysqli_num_rows($resultck))
        {
            echo"<script>";
            echo"window.location.href='index?login=false';";
            echo"</script>";
        }
        else 
        {
            if(mysqli_num_rows($resultck) <= 0){
                echo"<meta http-equiv-'refress' content='1;URL=/'>";
            }
            else{
               
                while($user = mysqli_fetch_array($resultck))
                {
                    if($user['stt_id'] == 1)
                    {
                        $_SESSION['health_ses_id'] = session_id();
                        $_SESSION['email'] = $user['email'];
                        $_SESSION['user_name'] = $user['user_name'];
                        $_SESSION['health_ses_status_id'] = 1;
                        echo"<meta http-equiv='refresh' content='1;URL=User/Main'>";
                    }
                    else
                    {
                        $_SESSION['health_ses_id'] = session_id();
                        session_start();
                        unset($_SESSION['health_ses_id']);
                        unset($_SESSION['email']);
                        unset($_SESSION['user_name']);
                        unset($_SESSION['emp_id']);
                        unset($_SESSION['health_ses_status_id']);
                        session_destroy();
                        echo"<script>";
                        echo"window.location.href='/?permission=found';";
                        echo"</script>";
                    }

                }
            }
        }  
    }
    public static function logout(){
        session_start();
        unset($_SESSION['health_ses_id']);
        unset($_SESSION['email']);
        unset($_SESSION['user_name']);
        unset($_SESSION['emp_id']);
        unset($_SESSION['health_ses_status_id']);
        session_destroy();
        global $session_path;
        echo"<script>";
        echo"window.location.href='$session_path';";
        echo"</script>";
    }
 }
 $obj_log = new obj_log();
?>