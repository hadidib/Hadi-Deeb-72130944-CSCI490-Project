 <script>
 	$('.datepicker').datepicker({
 		format:"yyyy-mm-dd"
 	})
 	 window.start_load = function(){
    $('body').prepend('<di id="preloader2"></di>')
  }
  window.end_load = function(){
    $('#preloader2').fadeOut('fast', function() {
        $(this).remove();
      })
  }

 	window.uni_modal = function($title = '' , $url=''){
    start_load()
    $.ajax({
        url:$url,
        error:err=>{
            console.log()
            alert("An error occured")
        },
        success:function(resp){
            if(resp){
                $('#uni_modal .modal-title').html($title)
                $('#uni_modal .modal-body').html(resp)
                $('#uni_modal').modal('show')
                end_load()
            }
        }
    })
}
window.alert_toast= function($msg = 'TEST',$bg = 'success'){
      $('#alert_toast').removeClass('bg-success')
      $('#alert_toast').removeClass('bg-danger')
      $('#alert_toast').removeClass('bg-info')
      $('#alert_toast').removeClass('bg-warning')

    if($bg == 'success')
      $('#alert_toast').addClass('bg-success')
    if($bg == 'danger')
      $('#alert_toast').addClass('bg-danger')
    if($bg == 'info')
      $('#alert_toast').addClass('bg-info')
    if($bg == 'warning')
      $('#alert_toast').addClass('bg-warning')
    $('#alert_toast .toast-body').html($msg)
    $('#alert_toast').toast({delay:3000}).toast('show');
  }
 </script>
 <!-- Bootstrap core JS-->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>


<?php
include('admin/db_connect.php');

// Query to get data from the system_settings table
$query = "SELECT hotel_name, email, contact FROM system_settings";
$result = mysqli_query($conn, $query);

// Fetch the data
$row = mysqli_fetch_assoc($result);

// Close the database connection
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website</title>
    <style>
        footer {
            background-color: silver;
            color: black;
            padding: 20px;
            display: flex; /* Use flexbox for layout */
            justify-content: space-around; /* Adjust spacing between sections */
            flex-wrap: wrap; /* Allow wrapping on smaller screens */
            align-items: flex-start; /* Align items at the top */
        }

        .contact-info,
        .about-hotel,
        .social-icons {
            flex: 1; /* Each section takes equal space */
            margin: 10px; /* Adjust margins between sections */
            text-align: center; /* Center text */
        }

        .social-icons a {
            display: inline-block;
            margin: 5px;
            color: blue;
            text-decoration: none;
        }

        .admin-link {
            flex: 1; /* Takes equal space */
            margin: 10px; /* Adjust margin */
            text-align: center; /* Center text */
        }

        .admin-link a {
            font-size: 10px;
            color: #999;
            text-decoration: none;
        }
    </style>
</head>
<body>

<footer>
    <div class="contact-info">
        <h3>Contact Information</h3>
        <p>For inquiries, contact us:</p>
        <p>Email: <?php echo $row['email']; ?></p>
        <p>Phone: <?php echo $row['contact']; ?></p>
    </div>

    <div class="about-hotel">
        <h3>About Our Hotel</h3>
        <p>Welcome to <?php echo $row['hotel_name']; ?>! We strive to provide exceptional hospitality and comfort to our guests.</p>
    </div>

    <div class="social-icons">
        <h3>Follow us</h3>
        <a href="#" target="_blank">Facebook</a>
        <a href="#" target="_blank">Twitter</a>
        <a href="#" target="_blank">Instagram</a>
        <a href="admin/login.php" style="margin-top: 40px;">Manager</a>
    </div>

    <div class="admin-link">
        
    </div>
</footer>

</body>
</html>
