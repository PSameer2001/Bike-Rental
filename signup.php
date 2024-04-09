
<script type="text/javascript">
 function Validate() {
        var password = document.getElementById("pwd").value;
        var confirmPassword = document.getElementById("cpwd").value;
        if (password != confirmPassword) {
            alert("Password and Confirm Password do not match.");
            return false;
        }
        return true;
    }
</script>
<script>
        function validatePanNumber(pan) {
            let pannumber = $(pan).val();
            var regex = /[a-zA-z]{5}\d{4}[a-zA-Z]{1}/;
            if (pannumber.match(regex)) {
               
            }
            else {
                alert(" Invalid PAN number");
                $(pan).val("");
            }
        }
    </script>
<?php
if(isset($_POST['signup']))
{
    include 'dbconnect.php';
    $user_name = $_POST['username'];
    $user_email = $_POST['email'];
    $user_phone = $_POST['phone'];
    $pan = $_POST['pan'];
    $license = $_POST['license'];
    $aad = $_POST['aad'];
    $password = $_POST['pass'];
    $cpassword = $_POST['cpass'];

    // Check whether this email exists
    $existSql = "select * from `tbluser` where email = '$user_email'";
    $result = mysqli_query($conn, $existSql);
    $numRows = mysqli_num_rows($result);
    if($numRows<1)
    {
        if($password == $cpassword) 
        {
            $hash = password_hash($password, PASSWORD_DEFAULT);
            $sql = "INSERT INTO `tbluser` (`name`, `email`, `phone`, `aadhar`,`pancard`,`license`, `password`, `datetime`) 
            VALUES ('$user_name', '$user_email', '$user_phone','$aad', '$pan','$license','$hash', current_timestamp())";
            $result1 = mysqli_query($conn, $sql);
            
            if($result1)
            {             
                echo '<script>alert("You can now login")</script>';
                header("location:index.php");
            }
            else{
                // echo '<script>alert("Password and Confirm Password Field do not match  !!")</script>';
               
            }

        }

    }
    else
    {
        echo '<script>alert("email id exists  !!")</script>';
               
    }
}
?>
<script>
function myFunction1() {
  var y = document.getElementById("cpwd");
  if (y.type === "password") {
    y.type = "text";
  } else {
    y.type = "password";
  }
}
</script>


<script>
function myFunction() {
  var x = document.getElementById("pwd");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
  
}
</script>

<head>
    <div class="container mt-3">
        <!-- The Modal -->
        <div class="modal fade" id="signupform">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title" style="color:black">Sign Up To Bike Rental Website</h4>
                        <button type="button" class="close" data-dismiss="modal">×</button>
                    </div>
                    <div class="container">
                        <form method="post">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" placeholder="Enter Name"
                                    name="username" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter Your Email"
                                    name="email" required>
                            </div>
                            <div class="form-group">
                                <label >Phone</label>
                                <input type="int" maxlength="10"  class="form-control" id="phone"
                                    placeholder="Enter Phone Number" name="phone" required>
                            </div>
                            <div class="form-group">
                            <label>Enter Aadhaar No</label>
                            <input type="int" style="color:black" id="aad" maxlength="12" placeholder="111122223333"  name="aad" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Enter Pancard No</label>
                            <input type="text" style="color:black" id="pan" maxlength="10"  name="pan" onchange="validatePanNumber(this)" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Enter Driving License no</label>
                            <input type="text" style="color:black" maxlength="15" id="license" name="license"  class="form-control"placeholder="DL-1234567890123" required>
                        </div>
                            <div class="form-group">
                                <label for="pwd">Password</label>
                                <input type="password" class="form-control" id="pwd" name="pass" required>
                                <input type="checkbox" onclick="myFunction()"><label style="color:black">Show Password</label>
                            </div><br>
                            <div class="form-group">
                                <label for="cpwd">Confirm Password</label>
                                <input type="password" class="form-control" id="cpwd" name="cpass" required>
                                <input type="checkbox" onclick="myFunction1()"><label style="color:black">Show Password</label>
                            </div><br>
                            <div class="form-group checkbox">
                                <input type="checkbox" id="terms_agree" required="required" checked="">
                                <label for="terms_agree">I Agree with <a href="#">Terms and Conditions</a></label>
                            </div>
                            <div class="form-group">
                                <button type="submit" onclick="return Validate()" class="btn btn-success" name="signup">Sign Up</button><br><br>

                                <p>Already got an account? <a href="#loginform" data-toggle="modal"
                                        data-dismiss="modal">Login Here</a></p>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</head>

