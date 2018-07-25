<?php

   require "db-header.php";

// getting to variables from HTTP Request
  $username      = filter_var($_REQUEST['username'], FILTER_SANITIZE_STRING, FILTER_FLAG_ENCODE_LOW);

    $repoid=0;
   $getid = $pdo->query("SELECT repo_id from reporter_login where username='$username'");
      while($row  = $getid->fetch(PDO::FETCH_ASSOC)){


         $id=$row;
         $repoid=implode($id);
       
      }
   $data= array();



try {

//getting server date

    date_default_timezone_set('Asia/Colombo'); // CDT

    $info = getdate();
    $month = $info['mon'];
   
   

    $status = 'completed';
     $stmt= $pdo->query('SELECT * from 

      news_info join news_reporter on news_info.news_id = news_reporter.news_id
                join news_status on news_info.news_id = news_status.news_id
    where news_reporter.repo_id='.$repoid.' and news_status.status="'.$status.'" and Month(news_info.date) ='.$month.' ');

      $payment=0;
       while($row  = $stmt->fetch(PDO::FETCH_ASSOC)){
        $data[]=$row;
        
      

       }

      echo json_encode($data);
    }




   
   catch(PDOException $e)
   {
      echo $e->getMessage();
   }


?>