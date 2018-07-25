<?php

   require "db-header.php";

// getting to variables from HTTP Request
  $username      = filter_var($_REQUEST['username'], FILTER_SANITIZE_STRING, FILTER_FLAG_ENCODE_LOW);
   $newsid = filter_var($_REQUEST['news_id'], FILTER_SANITIZE_STRING, FILTER_FLAG_ENCODE_LOW);

    $repoid=0;
   $getid = $pdo->query("SELECT repo_id from reporter_login where username='$username'");
      while($row  = $getid->fetch(PDO::FETCH_ASSOC)){


         $id=$row;
         $repoid=implode($id);
         
        
      }

      //$repoid = implode($get_id);


   // Attempt to query database table and retrieve data
   try {



      $query  = 'INSERT INTO news_reporter(news_id, repo_id) VALUES(:newsid, :repoid)';
            $stmt    = $pdo->prepare($query);
            $stmt->bindParam(':newsid', $newsid);
            $stmt->bindParam(':repoid', $repoid);
       $res2=  $stmt->execute();

   

       if($res2){

         $status= 'asigned';

         $sql  = 'UPDATE news_status SET status = :status WHERE news_id = :newsid';
            $stmt =  $pdo->prepare($sql);
            $stmt->bindParam(':status', $status);
            $stmt->bindParam(':newsid', $newsid);
       $res1=  $stmt->execute();
       }

       if($res1 AND $res2){
         $data = 1;
       }

       else{
         $data=0;
       }

       echo json_encode($data);
      


      }





      // Return data as JSON
   
   catch(PDOException $e)
   {
      echo $e->getMessage();
   }


?>