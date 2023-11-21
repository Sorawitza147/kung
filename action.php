<?php

    require_once 'config.php';

    if (isset($_POST['query'])) {
        $inputText = $_POST['query'];
        $sql = "SELECT nameplace FROM place_info WHERE nameplace LIKE :country";
        $stmt = $conn->prepare($sql);
        $stmt->execute(['country' => '%' . $inputText . '%' ]);
        $result = $stmt->fetchAll();

        if ($result) {
            foreach($result as $row) {
                echo '<a class="list-group-item list-group-item-action border-1">' . $row['nameplace'] . '</a>';
            }
        } else {
            echo '<p class="list-group-item border-1">No record.</p>';
        }
    }

?>