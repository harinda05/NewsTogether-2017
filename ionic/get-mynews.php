<?php

   require "db-header.php";

// getting reporter id from HTTP Request
   $username      = filter_var($_REQUEST['username'], FILTER_SANITIZE_STRING, FILTER_FLAG_ENCODE_LOW);

    $repoid=0;
   $getid = $pdo->query("SELECT repo_id from reporter_login where username='$username'");
      while($row  = $getid->fetch(PDO::FETCH_ASSOC)){


         $id=$row;
         $repoid=implode($id);
        
      }

   $data= array();
    

   // Attempt to query database table and retrieve data
   try {


      // get reporter's asigned news

    $query = $pdo->query('SELECT news_id FROM news_reporter WHERE repo_id='.$repoid.'');

      while($outer_row = $query->fetch(PDO::FETCH_ASSOC)){
         $id= implode($outer_row);
      
         $stmt = $pdo->query('SELECT *
                        FROM news_info JOIN news_status
                                             ON  news_info.news_id = news_status.news_id
                                  WHERE  news_info.news_id="'.$id.'"  AND status="asigned"
                                  ');
                                       while($row = $stmt->fetch(PDO::FETCH_OBJ))

                                       {
                                             $data[]=$row;

                                       }
      }

      





      // Return data as JSON
      echo json_encode($data);
   }
   catch(PDOException $e)
   {
      echo $e->getMessage();
   }


?>