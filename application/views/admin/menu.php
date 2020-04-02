<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"><a href="<?php echo base_url().'welcome'?>">MENU</a>
                </li>
                <?php $h=$this->session->userdata('akses'); ?>
                <?php $u=$this->session->userdata('user'); ?>
                <?php if($h=='1'){ ?>
                </li>
                <li><a href="<?php echo base_url().'admin/kategori'?>">Kategori</a>
                </li>
                <li><a href="<?php echo base_url().'admin/satuan'?>">Satuan</a>
                </li>
                <li><a href="<?php echo base_url().'admin/suplier'?>">Suplier</a>
                </li>
                <li><a href="<?php echo base_url().'admin/pembelian'?>">Pembelian</a>
                </li>
                <li><a href="<?php echo base_url().'admin/barang'?>">Barang</a>
                </li>
                </li>
                <li><a href="<?php echo base_url().'admin/laporan'?>">Laporan</a>
                </li>
                </li>
                <li><a href="<?php echo base_url().'admin/grafik'?>">Grafik</a>
                </li>
                </li>
                <li><a href="<?php echo base_url().'admin/pengguna'?>">Pengguna</a>
                </li>
                </li>
                <li><a href="<?php echo base_url().'administrator/logout'?>">Keluar</a>
                </li>
                <?php }?>
                <?php if($h=='2'){ ?>
                <li><a href="<?php echo base_url().'admin/penjualan_grosir'?>">Transaksi Penjualan</a>
                </li>
                <li><a href="<?php echo base_url().'admin/retur'?>">Retur Penjualan</a>
                </li>
                <li><a href="<?php echo base_url().'administrator/logout'?>">Keluar</a>
                </li>
                <?php }?>
            </ul>
        </div>

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">
                <h1>
                    <a id="menu-toggle" href="#" class="btn btn-default"><i class="fa fa-list"></i></a>
                    <img src="<?php echo base_url().'assets/img/escaped.png'?>" style="width:170px"> <small>Point of Sales Dashboard</small>
                </h1>
            </div>
            <!-- Keep all page content within the page-content inset div! -->
            <div class="page-content inset">
                <div class="row">
           