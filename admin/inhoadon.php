<?php

require('../tfpdf/tfpdf.php');
//require('connection.php');

$pdf = new tFPDF();
$pdf->AddPage("0");
$pdf->AddFont('DejaVu','','DejaVuSansCondensed.ttf',true);
$pdf->SetFont('DejaVu','',15);
$pdf->SetFillColor(193,229,252);
    
$conn = mysqli_connect("localhost","root","") or die("can not connect database");
mysqli_select_db($conn,"jewelry_db") or die ("no database");   
mysqli_set_charset($conn,'UTF8');
//$id = $_GET['id'];
$sql = "SELECT * FROM cart";
$res = mysqli_query($conn, $sql);
$pdf->Write(10,'Thông tin khách hàng: ');
$pdf->Ln(10);

while ($row = mysqli_fetch_array($res)) 
{
    $pdf->Write(10,'Mã Khách Hàng: ');
    $pdf->Write(10,$row['user_id']);
    $pdf->Ln(10);
    $pdf->Write(10,'Địa Chỉ: ');
    $pdf->Write(10,$row['delivery_address']);
    $pdf->Ln(10);
    $pdf->Write(10,'Tình Trạng Đơn Hàng: ');
    $pdf->Write(10,$row['status']);
    $pdf->Ln(10);
    $pdf->Write(10,'Ngày đặt hàng: ');
    $pdf->Write(10,$row['date_created']);
    $pdf->Ln(10);
}

$pdf->Write(10,'Đơn hàng của bạn gồm có:');
$pdf->Ln(10);

$width_cell = array(7,35,45,45,40,40,40,40,45,40,30,35,40,40);

$pdf->Cell($width_cell[0],10,'ID',1,0,'C',true);
$pdf->Cell($width_cell[1],10,'Mã đơn hàng',1,0,'C',true);
$pdf->Cell($width_cell[2],10,'Mã sản phẩm',1,0,'C',true);
$pdf->Cell($width_cell[4],10,'Mã người dùng',1,0,'C',true); 
$pdf->Cell($width_cell[9],10,'Tên sản phẩm',1,0,'C',true);
$pdf->Cell($width_cell[11],10,'Số lượng',1,0,'C',true);
$pdf->Cell($width_cell[12],10,'Giá cả',1,0,'C',true);
$pdf->Cell($width_cell[13],10,'Thành tiền',1,1,'C',true); 

$pdf->SetFillColor(235,236,236); 

$fill = false;
$i = 0;
$tongtien = 0;

$res = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_array($res)) 
{
    $i++;
    $tongtien = $row['qty'] * $row['price'] + $tongtien;
    $pdf->Cell($width_cell[0],10,$i,1,0,'C',$fill);
    $pdf->Cell($width_cell[1],10,$row['id'],1,0,'C',$fill);
    $pdf->Cell($width_cell[2],10,$row['ref_id'],1,0,'C',$fill);
    $pdf->Cell($width_cell[4],10,$row['user_id'],1,0,'C',$fill);
    $pdf->Cell($width_cell[9],10,$row['name'],1,0,'C',$fill);
    $pdf->Cell($width_cell[11],10,$row['qty'],1,0,'C',$fill);
    $pdf->Cell($width_cell[12],10,number_format($row['price']),1,0,'C',$fill);
    $pdf->Cell($width_cell[13],10,number_format($row['qty']*$row['price']),1,1,'C',$fill);
    $fill = !$fill;
    }

    $pdf->Write(10,'Tổng tiền: ');
    $pdf->Write(10,number_format($tongtien,0,',','.').' VNĐ');
    $pdf->Ln(10);
    $pdf->Write(10,'Cảm ơn bạn đã đặt hàng tại website của chúng tôi.');
    $pdf->Ln(10);
    ob_clean();
    $pdf->Output();
?>