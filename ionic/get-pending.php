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

   $data = array();
    

   // Attempt to query database table and retrieve data
   try {


      // getting pending news for a particular district

      $district= $pdo->query('SELECT district FROM reporter_district WHERE repo_id='.$repoid.'');
      $get_district = $district->fetch(PDO::FETCH_ASSOC);
      $district = implode($get_district);
      
      $stmt    = $pdo->query('SELECT *
                        FROM news_info JOIN news_status
                                             ON  news_info.news_id = news_status.news_id
                                                where district="'.$district.'" AND status="pending"');

                                                      while($row  = $stmt->fetch(PDO::FETCH_OBJ))
      {
         // Assign each row of data to associative array
         $data[] = $row;
      }



      // Return data as JSON
      echo json_encode($data);
   }
   catch(PDOException $e)
   {
      echo $e->getMessage();
   }


?>