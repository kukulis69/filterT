<?php
    session_start();
    unset($_SESSION['user']);
    header('Location: ../index.php');
    
    $_SESSION['logoutmsg'] = '<span class="success">See you later have nice day!</span>';
?>