<?php
$connect = mysqli_connect("localhost","root","ishnira","a2b");
$output ='';
if(isset($_POST["export"]))
{
	$sql ="SELECT user_id, first_name FROM user";
	$result = mysqli_query($connect,sql);
	if(mysqli_num_rows($result)>0)
	{
		$output .= ' 
		<table class="table" border="1">
		<tr>
		<th>Id</th>
		<th>First Name</th>
	    </tr>
		';
		while($row = mysqli_fetch_array($result))
		{
			$output .= '
			
			<tr>
			<td>'.$row["user_id"].'</td>
			<td>'.$row["first_name"].'</td>
			</tr>';
		}
		$output .= '</table>';
		header("Content-Type: application/xls");
		header("Content-Disposition: attachment, filename=download.xls");
		echo $output;
	}
	
}
?>