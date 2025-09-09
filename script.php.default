<?php
if(isset($_GET['value'])) {

    $constant_part = "https://api.telegram.org/botTOKEN/sendMessage?chat_id=CHAT_ID&text=";


    $value = $_GET['value'];

    $full_url = $constant_part . $value ;


    $response = file_get_contents($full_url);


    echo $response;
} else {

    echo "Error: No value provided.";
}
?>
