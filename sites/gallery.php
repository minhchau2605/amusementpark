<?php
	$xp = new XTemplate ("views/gallery.html");
	//$kw = '';
	$condition = "1=1";
	
	$sql = "SELECT zone_id,zone_name FROM zone WHERE {$condition}";
	$rs = $db->fetchAll($sql);
	foreach($rs as $row){
		$xp->insert_loop('GALLERY.ZONELS',array('ZONELS'=>$row));
	}

	$sql = "SELECT gallery_id,zone_name,gallery_url,gallery.description FROM gallery 
			INNER JOIN zone ON zone.zone_id = gallery.zone_id 
			WHERE {$condition}  ORDER BY gallery_id DESC";

	$rs = $db->fetchAll($sql);
	
	$t = count($rs);
	$l = 9;
	$p = (isset($_GET['p']))?$_GET['p']:1;
	$fs = ($p-1)*$l;

	if(isset($_POST['search'])){
		/*$kw = $_POST['txtKeyword'];
		if (strlen($kw)>0){
			$kw1 = str_replace(' ','%',$kw);
			$condition .= " AND zone_name LIKE '%$kw1%'";
		}*/
		$zone = $_POST['select_zone'];
		if($zone!='0'){
		$condition .= " AND zone.zone_id = '$zone'";
		}
	}

	$sql = "SELECT gallery_id,zone_name,gallery_url,gallery.description FROM gallery 
			INNER JOIN zone ON zone.zone_id = gallery.zone_id 
			WHERE {$condition}  ORDER BY gallery_id DESC LIMIT {$fs},{$l}";

	$rs = $db->fetchAll($sql);

	foreach($rs as $row){
		$xp->insert_loop('GALLERY.LS',array('LS'=>$row));
	}
	
	$url = $baseUrl."/?m=gallery";
	$pagers = $f->getPagers($t,$l,$url);
	$xp->assign('pagers',$pagers);
	//$xp->assign('keyword',$kw);	
	$xp->parse('GALLERY');
	$acontent=$xp->text('GALLERY');
?>