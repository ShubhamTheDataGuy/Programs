<?php
include "db_config.php"; 


if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['dno'])) {
    $dno = intval($_POST['dno']);
   
    $sql = "SELECT * FROM PERS WHERE dno = ?";
    $stmt = $conn->prepare($sql);           
    $stmt->bind_param("i", $dno);          

    $stmt->execute();                    
    $result = $stmt->get_result();         

    echo "<h2>Employees in Department $dno</h2>";  

    if ($result->num_rows > 0) {         
        echo "<table border='1'>            
                <tr><th>ID</th><th>Name</th><th>DNO</th><th>Job</th><th>Salary</th></tr>";
        while ($row = $result->fetch_assoc()) {  
            echo "<tr>
                    <td>{$row['id']}</td>          
                    <td>{$row['name']}</td>         
                    <td>{$row['dno']}</td>         
                    <td>{$row['job']}</td>          
                    <td>{$row['salary']}</td>      
                  </tr>";
        }
        echo "</table>"; 
    } else {
        echo "No records found for department $dno.";  
    }

    $stmt->close();  
} else {
    echo "Please select a department."; 
}

$conn->close();  
?>
