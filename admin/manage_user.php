<?php
session_start();
include 'dbconnect.php';
$message="";
if($_SESSION['ADMIN_USER']==""){	
header('location:adminlogin.php');
}
?>
<?php 
if(isset($_GET['action']) && $_GET['action']=='delete' &&  isset($_GET['id']) && !empty($_GET['id']))
{
    $query2 = "DELETE FROM tbluser WHERE sno= '".$_GET['id']."'";
    $conn->query($query2);
    header("location:manage_user.php");
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    table.table td .add {
        display: none;
    }
    </style>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/cjs/popper.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js">
    </script>

</head>

<body>
    <?php include('leftbar.php');?>
  
       

           
                <h1 style="text-align:center;color:red;background:grey">

                   User List</h1>
            
            <div >

                <table class="table text-center mt-1 table-bordered">
                    <thead>
                        <tr>
                            <th>Sno</th>
                            <th>Full Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>DOB</th>
                            <th>Address</th>
                            <th>Aadhaar card</th>
                        <th>Pancard</th>
                        <th>License no</th>
                            <th>Date</th>
                            <th class="text-center">Action</th>

                        </tr>
                    </thead>


                    <?php $query="SELECT * FROM tbluser";
                                    $result = $conn->query($query);
                                    if($result->num_rows > 0)
                                    {
                                        while($row=$result->fetch_assoc())
                                        {
                                            $id = $row['sno'];
                                            $name1 = $row['name'];
                                            $email1 = $row["email"];
                                            $phone = $row["phone"];
                                            $dob = $row["dateofbirth"];
                                            $add = $row["address"];
                                            $aadhar = $row['aadhar'];
                                            $pan = $row['pancard'];  
                                            $license = $row['license'];  
                                            $date = $row["datetime"];
                                    ?>
                    <tbody>
                        <tr>
                            <td><?php echo $id?></td>
                            <td><?php echo $name1?></td>
                            <td><?php echo $email1?></td>
                            <td><?php echo $phone?></td>
                            <td><?php echo $dob ?></td>
                            <td><?php echo $add ?></td>
                            <td><?php echo $aadhar?></td>
                        <td><?php echo $pan?></td>
                        <td><?php echo $license?></td>
                            <td><?php echo $date ?></td>
                            <td>
                                <div class="btn-group">

                                    <a href="?action=delete&id=<?php echo $id; ?>" class="delete" title="Delete"
                                        data-toggle="tooltip"
                                        onclick="return confirm('Are you sure to remove this query?')">
                                        <i class="btn material-icons text-danger">&#xE872;</i></a>
                                </div>

                            </td>

                            <?php }} ?>
                        </tr>
                    </tbody>
                    <table>

            </div>
       

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
        </script>
</body>

</html>