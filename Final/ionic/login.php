<?php
   header('Access-Control-Allow-Origin: *');

   // Define database connection parameters
   $hn      = 'localhost';
   $un      = 'root';
   $pwd     = '';
   $db      = 'news_last';
   $cs      = 'utf8';

   // Set up the PDO parameters
   $dsn  = "mysql:host=" . $hn . ";port=3306;dbname=" . $db . ";charset=" . $cs;
   $opt  = array(
                        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
                        PDO::ATTR_EMULATE_PREPARES   => false,
                       );
   // Create a PDO instance (connect to the database)
   $pdo  = new PDO($dsn, $un, $pwd, $opt);

// getting reporter id from HTTP Request
   $username  = ($_REQUEST['username']);
   $password =  ($_REQUEST['password']);
  


   // Attempt to query database table and retrieve data
   try {
      $data=0;
      $stmt    = $pdo->query("SELECT repo_id from reporter_login where username='$username' and password='$password'");
      while($row  = $stmt->fetch()){


         $data=$username;
        
      }

               
      // Return data as JSON
      echo json_encode($data);
   }
   catch(PDOException $e)
   {
      echo $e->getMessage();
   }


?>