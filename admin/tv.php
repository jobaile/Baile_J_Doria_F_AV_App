<?php

    require_once('../admin/scripts/config.php');
    

    if (isset($_GET['television'])){
        $type = $_GET['television'];
        $tbl = "tbl_tv";
        $tbl3 = 'tbl_tv_era';
        $col = 'tv_id';
    }

    if(isset($_GET['filter'])){

        $tbl2 = 'tbl_era';
        $col2 = 'era_id';
        $col3 = 'era_name';
        $filter = $_GET['filter'];

    $results = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);

    echo json_encode($results);

    } else {

    $results = getAll($tbl);

    echo json_encode($results);
    }