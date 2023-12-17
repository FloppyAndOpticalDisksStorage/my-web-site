<?php
function symbolGenerator() {
    $integerOrSymbol = rand(1, 2);
    if ($integerOrSymbol == 1) {
        return strval(rand(0, 9));
    } elseif ($integerOrSymbol == 2) {
        $Letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
        return $Letters[rand(0, count($Letters) - 1)];
    }
}

function keyGenerator() {
    $firstBox = symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator();
    $secondBox = symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator();
    $thirdBox = symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator();
    $fourthBox = symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator();
    $fifthBox = symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator() . symbolGenerator();
    $key = $firstBox . "-" . $secondBox . "-" . $thirdBox . "-" . $fourthBox . "-" . $fifthBox;
    return $key;
}
$to = $_GET("email");
$key = keyGenerator();
;

// Set the email subject
$subject = 'The key';

// Build the email body
$body = 'Hi there! Here is your key: ' . $key;

// Send the email
if (mail($to, $subject, $body)) {
    echo 'Email sent!';
} else {
    echo 'Unable to send email. Please check your email address and key.';
}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Key Giver
        </title>
    </head>
    <body>
        <form method="post">
            <p>
                Email: <input type="email" name="email">
            </p>
            <p>
                <input type="submit" value="Send key">
            </p>
        </form>
    </body>
</html>
