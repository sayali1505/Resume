<?php
        
         $id=$_GET['id'];
    ?>

<?php
//include connection file 
include_once("connection.php");
include_once('fpdf.php');

//personal info

$sql="select * FROM `personal_info` where p_id=$id ";

$record=mysqli_query($conn,$sql);


$pdf=new FPDF('p','mm' , 'A4');


$pdf->AddPage();

$pdf->SetFont('Arial','B',14);

//$pdf->cell(0,10,"Name", 0,1,'L');

$pdf->SetFillColor(156,137,137);

$pdf->SetFont('Arial','',14);

while ($row=mysqli_fetch_array($record)) {

    $pdf->cell(180,10,$row['Name'],0,1,'R');
   // 
    $pdf->cell(178,10,$row['Email'],0,1,'R');
    $pdf->cell(166,10,$row['Mobile_no'],0,1,'R');
     $pdf->cell(160,10,$row['Location'],0,1,'R');
     // $pdf->cell(180,10,$row['Address'],0,1,'R');
     $pdf->cell(0,6,"Career Objective", 1,1,'L');
     $pdf->ln();
     $pdf->cell(176, 5,$row['Tag_line'],0,1,'L');
     $pdf->ln();
     

}

//Education

$pdf->SetFont('Arial','B',14);

$pdf->cell(0,6,"Education", 1,1,'L');

$pdf->SetFont('Arial','',14);

$sql="select * FROM `education`  where p_id=$id ";

$record=mysqli_query($conn,$sql);


while ($row=mysqli_fetch_array($record)) {

    $pdf->cell(0,10,$row['education'],0,1,'L');
    $pdf->SetFont('Arial','',11);

      $pdf->cell(100,10,$row['college'],0,0,'L');
      $pdf->cell(0,10,$row['year'],0,1,'R');
     
}


//profile summary

$pdf->SetFont('Arial','B',14);

$pdf->cell(0,6,"Profile Summary", 1,1,'L');

$pdf->SetFont('Arial','',14);

$sql="select * FROM `profile_summary`  where p_id=$id ";

$record=mysqli_query($conn,$sql);


while ($row=mysqli_fetch_array($record)) {

    $pdf->cell(0,10,$row['current_role'],0,1,'L');
    $pdf->SetFont('Arial','',11);

    $pdf->cell(100,10,$row['summary'],0,1,'L');
      
}

//Skills

$pdf->SetFont('Arial','B',14);

$pdf->cell(0,6,"Skills", 1,1,'L');

$pdf->SetFont('Arial','',14);

$sql="select * FROM `skills`  where p_id=$id ";

$record=mysqli_query($conn,$sql);


while ($row=mysqli_fetch_array($record)) {

    $pdf->cell(0,10,$row['skill_name'],0,1,'L');
      
}

//Project project
//Skills

$pdf->SetFont('Arial','B',14);

$pdf->cell(0,6,"Projects", 1,1,'L');

$pdf->SetFont('Arial','',14);

$sql="select * FROM `project`  where p_id=$id ";

$record=mysqli_query($conn,$sql);


while ($row=mysqli_fetch_array($record)) {

    $pdf->cell(0,10,$row['project_name'],0,0,'L');
    // $pdf->cell(0,10,$row['start_date'],1,0,'L');
    $pdf->cell(0,10,$row['end_date'],0,1,'R');
   
    $pdf->cell(0,10,$row['achivement'],0,1,'L');

         
}

//publication

$pdf->SetFont('Arial','B',14);

$pdf->cell(0,6,"Publications", 1,1,'L');

$pdf->SetFont('Arial','',14);

$sql="select * FROM `publication`  where p_id=$id ";

$record=mysqli_query($conn,$sql);


while ($row=mysqli_fetch_array($record)) {

    $pdf->cell(0,10,$row['title'],0,1,'L');
     $pdf->cell(0,10,$row['url'],0,1,'L');
      
}

//Interests

$pdf->SetFont('Arial','B',14);

$pdf->cell(0,6,"Interests", 1,1,'L');

$pdf->SetFont('Arial','',14);

$sql="select * FROM `interest`  where p_id=$id ";

$record=mysqli_query($conn,$sql);


while ($row=mysqli_fetch_array($record)) {

    $pdf->cell(0,10,$row['interest_name'],0,1,'L');
      
}

//Interests

$pdf->SetFont('Arial','B',14);

$pdf->cell(0,6,"Languages", 1,1,'L');

$pdf->SetFont('Arial','',14);

$sql="select * FROM `languages`  where p_id=$id ";

$record=mysqli_query($conn,$sql);


while ($row=mysqli_fetch_array($record)) {

    $pdf->cell(0,10,$row['language'],0,1,'L');
      
}


$pdf->cell(100,10,'',0,1,'C');  



$pdf->output();




?>