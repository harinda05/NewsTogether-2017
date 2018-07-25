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
   
   


     $stmt= $pdo->query('SELECT payment from news_telecasted join news_reporter on news_telecasted.news_id = news_reporter.news_id
    where news_reporter.repo_id='.$repoid.' and Month(news_telecasted.telecast_date) ='.$month.' ');

      $payment=0;
       while($row  = $stmt->fetch(PDO::FETCH_ASSOC)){
        $payment=$payment+($row['payment']);
        
      

       }

      echo json_encode($payment);
    }




   
   catch(PDOException $e)
   {
      echo $e->getMessage();
   }


?>