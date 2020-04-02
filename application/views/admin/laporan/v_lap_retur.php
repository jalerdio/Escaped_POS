<html lang="en" moznomarginboxes mozdisallowselectionprint>
<head>
    <title>Laporan Retur</title>
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
    <td colspan="2" style="width:800px;paddin-left:20px;"><center><h4>LAPORAN RETUR BARANG</h4></center><br/></td>
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
        <th>Tanggal</th>
        <th>Kode Barang</th>
        <th>Nama Barang</th>
        <th style="text-align:center;">Satuan</th>
        <th style="text-align:center;">Harga(Rp)</th>
        <th style="text-align:center;">Jumlah</th>
        <th style="text-align:center;">Subtotal(Rp)</th>
        <th style="text-align:center;">Keterangan</th>
    </tr>
</thead>
<tbody>
<?php 
$no=1;
    foreach ($retur->result_array() as $items) {
?>
    <tr>
        <td style="text-align:center;"><?php echo $no;?></td>
        <td style="padding-left:5px;"><?php echo $items['retur_tanggal'];?></td>
        <td style="text-align:center;"><?php echo $items['retur_barang_id'];?></td>
        <td style="text-align:center;"><?php echo $items['retur_barang_nama'];?></td>
        <td style="text-align:left;"><?php echo $items['retur_barang_satuan'];?></td>
        <td style="text-align:right;"><?php echo number_format($items['retur_harjul']);?></td>
        <td style="text-align:center;"><?php echo $items['retur_qty'];?></td>
        <td style="text-align:right;"><?php echo number_format($items['retur_subtotal']);?></td>
        <td style="text-align:center;"><?php echo $items['retur_keterangan'];?></td>
    </tr>
<?php }?>
</tbody>
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
</html>