<?php 

    require_once 'config.php';

    if (isset($_POST['submit'])) {
        $nameplace = $_POST['search'];
        $sql = "SELECT * FROM place_info WHERE nameplace = :nameplace";
        $stmt = $conn->prepare($sql);
        $stmt->execute(['nameplace' => $nameplace]);
        $row = $stmt->fetch();
    } else {
        header("location: index.php");
        exit();
    }
    if(empty($row)){
        header("location: Error.php");
        exit();
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <div class="row mt-5">
            <div class="col-5 mx-auto">
                <div class="card shadow text-center">
                    <div class="card-header">
                        <h1><?= $row['nameplace'] ?></h1>
                    </div>
                    <div class="card-body">

                        <h5>country ID : <?= $row['id'] ?></h5>
                        <h5>nameplace : <?= $row['nameplace'] ?></h5>
                        <h5>detail : <?= $row['detail'] ?></h5>
                        <h5>latitude : <?= $row['latitude'] ?></h5>
                        <h5>longitude : <?= $row['longitude'] ?></h5>

                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>