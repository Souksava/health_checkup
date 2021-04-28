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
                        $_SESSION['user_id'] = $user['user_id'];
                        $_SESSION['email'] = $user['email'];
                        $_SESSION['user_name'] = $user['user_name'];
                        $_SESSION['health_ses_status_id'] = 1;
                        echo"<meta http-equiv='refresh' content='1;URL=User/Main'>";
                    }
                    else if($user['stt_id'] == 2)
                    {
                        $_SESSION['health_ses_id'] = session_id();
                        $_SESSION['user_id'] = $user['user_id'];
                        $_SESSION['email'] = $user['email'];
                        $_SESSION['user_name'] = $user['user_name'];
                        $_SESSION['health_ses_status_id'] = 2;
                        echo"<meta http-equiv='refresh' content='1;URL=Admin/Main'>";
                    }
                    else
                    {
                        $_SESSION['health_ses_id'] = session_id();
                        session_start();
                        unset($_SESSION['health_ses_id']);
                        unset($_SESSION['user_id']);
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
    public static function machine(){
        global $machine;
        $machine = "";
        $ipAddress=$_SERVER['REMOTE_ADDR'];
        $arp= "arp -a $ipAddress";
        $ip = shell_exec($arp);
        if($ipAddress == "::1"){
            $ipall = "ipconfig /all";
            $ipserver = shell_exec($ipall);
            $ipserver = strstr($ipserver,'Wi-Fi',false);
            $ipserver = strstr($ipserver,'Physical Address',false);
            $ipserver = strstr($ipserver,' DHCP',true);
            $ipserver = strstr($ipserver,': ',false);
            $machine = strtoupper(substr($ipserver,2,-3));
        }
        else{
            $machine = strtoupper(substr($ip,109,-16));
        }
    }
    public static function get_machine(){
        global $conn;
        global $machine_id;
        $machine_id = mysqli_query($conn,"select * from machine;");
        
    }
    public static function generate($machine_id){
        global $machine_no;
        $group1 = substr($machine_id,2,2);
        $group2 = substr($machine_id,4,2);
        $group3 = substr($machine_id,10,2);
        $group4 = substr($machine_id,12,2);
        $group5 = substr($machine_id,18,2);
        $group6 = substr($machine_id,20,2);
        $machine_no = $group1."-".$group2."-".$group3."-".$group4."-".$group5."-".$group6;
        
    }
    
 }
 $obj_log = new obj_log();
?>