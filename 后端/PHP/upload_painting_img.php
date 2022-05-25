<?php
    $file = $_FILES['img'];
    $path = $_POST['path'];
    $file_temp_path = $file['tmp_name'];
    print $file_temp_path;
    move_uploaded_file($file_temp_path,"../painting_imgs/".$path);
    echo "图片上传成功";
