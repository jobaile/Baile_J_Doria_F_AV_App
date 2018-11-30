<?php  
include 'connect.php';

    //get one video
    function get_single_video($pdo, $vid) {
        $query = "SELECT * FROM tbl_movie WHERE movie_id = '$vid'"; //this means ?vid=ID
        //make sure this matches database

        $get_video = $pdo->query($query);
        $results = array();

        while($row = $get_video->fetch(PDO::FETCH_ASSOC)){
            $results[] = $row;
        }

        return $results;
    }

    //get all videos
    function get_all_videos($pdo) {
        $query = "SELECT * FROM tbl_movie"; //gets all the video in the db
        //make sure this matches database

        $get_video = $pdo->query($query);
        $results = array();

        while($row = $get_video->fetch(PDO::FETCH_ASSOC)){
            $results[] = $row;
        }

        return $results;
    }
?>