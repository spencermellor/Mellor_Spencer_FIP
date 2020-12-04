
<?php
    include("connect.php");
    include("functions.php");

    if(isset($_GET["id"])) {
        $targetID = $_GET["id"];
        $result = getSingleItem($pdo, $targetID);
        
        return $result;
    } elseif (isset($_GET["category"])) {
        $targetCat = $_GET["category"];
        $result = getItemFromCategory($pdo, $targetCat);
        
        return $result;
    } else {
        $result = getAllItems($pdo);

        return $result;
    }