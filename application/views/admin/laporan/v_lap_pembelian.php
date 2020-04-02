<html lang="en" moznomarginboxes mozdisallowselectionprint>
<head>
    <title>Laporan data pembelian</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/laporan.css')?>"/>
</head>
<body onload="window.print()">
<div id="laporan">
<table align="center" style="width:900px; border-bottom:3px double;border-top:none;border-right:none;border-left:none;margin-top:5px;margin-bottom:20px;">
<!--<tr>
    <td><img src="<?php// echo base_url().'assets/img/kop_surat.png'?>"/></td>
</tr>-->
</table>

<table border="0" align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:0px;">
<tr>
    <td colspan="2" style="width:800px;paddin-left:20px;"><center><h4>LAPORAN PEMBELIAN BARANG</h4></center><br/></td>
</tr>
<tr>
    <td colspan="2" style="width:800px;paddin-left:20px;"><center><h4>ESCAPED</h4></center><br/></td>
</tr>
                       
</table>
 
<table border="0" align="center" style="width:900px;border:none;">
        <tr>
            <th style="text-align:left"></th>
        </tr>
</table>

<table border="1" align="center" style="width:900px;margin-bottom:20px;">
<thead>
    <tr>
        <th style="width:50px;">No</th>
        <th>No Faktur</th>
        <th>Tanggal</th>
        <th>Suplier ID</th>
        <th>Barang ID</th>
        <th>Harga Beli</th>
        <th>Qty</th>
        <th>Total</th>
    </tr>
</thead>
<tbody>
<?php 
$no=0;
    foreach ($data->result_array() as $i) {
        $no++;
        $nofak=$i['beli_nofak'];
        $tgl=$i['beli_tanggal'];
        $beli_suplier=$i['beli_suplier_id'];
        $beli_barang=$i['d_beli_barang_id'];
        $beli_harga=$i['d_beli_harga'];
        $beli_qty=$i['d_beli_jumlah'];
        $beli_total=$i['d_beli_total'];
?>
    <tr>
        <td style="text-align:center;"><?php echo $no;?></td>
        <td style="padding-left:5px;"><?php echo $nofak;?></td>
        <td style="text-align:center;"><?php echo $tgl;?></td>
        <td style="text-align:center;"><?php echo $beli_suplier;?></td>
        <td style="text-align:left;"><?php echo $beli_barang;?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($beli_harga);?></td>
        <td style="text-align:center;"><?php echo $beli_qty;?></td>
        <td style="text-align:right;"><?php echo 'Rp '.number_format($beli_total);?></td>
    </tr>
<?php }?>
</tbody>
<tfoot>
<?php 
    $b=$jml->row_array();
?>
    <tr>
        <td colspan="7" style="text-align:center;"><b>Total</b></td>
        <td style="text-align:right;"><b><?php echo 'Rp '.number_format($b['total']);?></b></td>
    </tr>
</tfoot>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td></td>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td align="right">Bandung, <?php echo date('d-M-Y')?></td>
    </tr>
    <tr>
        <td align="right"></td>
    </tr>
   
    <tr>
    <td><br/><br/><br/><br/></td>
    </tr>    
    <tr>
        <td align="right">( <?php echo $this->session->userdata('nama');?> )</td>
    </tr>
    <tr>
        <td align="center"></td>
    </tr>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <th><br/><br/></th>
    </tr>
    <tr>
        <th align="left"></th>
    </tr>
</table>
</div>
</body>
</html>_