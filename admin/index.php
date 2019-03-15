<?php 

    require_once('../admin/scripts/config.php');

    if (isset($_GET['media'])) {
        $type = $_GET['media'];

        if ($type == "video") {
            $tbl = "tbl_movies";
            $col = 'movies_id';
            $tbl3 = 'tbl_movies_decade';
            
        } else if ($type == "music"){
            $tbl = "tbl_music";
            $col = 'music_id';
            $tbl3 = 'tbl_music_decade';
        }else {
            $tbl = "tbl_tv";
            $col = 'tv_id';
            $tbl3 = 'tbl_tv_decade';
        }
    }

    if(isset($_GET['filter'])){

        //$tbl = 'tbl_movies';
        $tbl2 = 'tbl_decade';
        $col2 = 'decade_id';
        $col3 = 'decade_name';
        $filter = $_GET['filter'];

        $results = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
        
        echo json_encode($results);

    } else {

        $results = getAll($tbl);

        echo json_encode($results);
    }
?>