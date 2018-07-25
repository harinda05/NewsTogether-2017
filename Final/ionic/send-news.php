<?php

   require "db-header.php";

// getting reporter id from HTTP Request
   $username      = filter_var($_REQUEST['username'], FILTER_SANITIZE_STRING, FILTER_FLAG_ENCODE_LOW);
   $newsid      = filter_var($_REQUEST['news_id'], FILTER_SANITIZE_STRING, FILTER_FLAG_ENCODE_LOW);
   
   $description      = filter_var($_REQUEST['description'], FILTER_SANITIZE_STRING, FILTER_FLAG_ENCODE_LOW);
   $ftp      = filter_var($_REQUEST['ftp'], FILTER_SANITIZE_STRING, FILTER_FLAG_ENCODE_LOW);

    $repoid=0;
   $getid = $pdo->query("SELECT repo_id from reporter_login where username='$username'");
      while($row  = $getid->fetch(PDO::FETCH_ASSOC)){


         $id=$row;
         $repoid=implode($id);
        
      }


   ;


   $data= array();
    

   try {
// update status to completed in news_status table
            $status = 'completed';

            $sql  = 'UPDATE news_status SET status = :status WHERE news_id = :newsid';
            $stmt =  $pdo->prepare($sql);
            $stmt->bindParam(':status', $status);
            $stmt->bindParam(':newsid', $newsid);
            $res1=  $stmt->execute();
            

// insert in to completed table
            $sql  = 'INSERT INTO news_completed(news_id,repo_description, ftp_file) VALUES(:newsid, :description, :ftp)';
            $stmt    = $pdo->prepare($sql);
            $stmt->bindParam(':newsid', $newsid);
            $stmt->bindParam(':description', $description);
            $stmt->bindParam(':ftp', $ftp);
            $res2=$stmt->execute();

            if($res1 AND $res2){
               $data = 1;
             }

            else{
               $data=0;
            }


      // Return data as JSON
      echo json_encode($data);
   }
   catch(PDOException $e)
   {
      echo $e->getMessage();
   }


?>