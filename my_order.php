<?php include 'admin/db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-body">
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th class="text-center">Ngày đặt hàng</th>
						<th class="text-center">Mã đơn hàng</th>
						<th class="text-center">Địa chỉ giao hàng</th>
						<th class="text-center">Trạng thái</th>
						<th class="text-center">Hành động</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
					$query = $conn->query("SELECT * FROM orders where user_id = '{$_SESSION['login_id']}' order by unix_timestamp(date_created)");
					while($row= $query->fetch_assoc()):
					?>
					<tr>
						<td class="text-center"><?php echo $i++ ?></td>
						<td class=""><?php echo date("M d, Y",strtotime($row['date_created'])) ?></td>
						<td class=""><?php echo $row['ref_id'] ?></td>
						<td class=""><?php echo $row['delivery_address'] ?></td>
						<td class="text-center">
							<?php if($row['status'] == 0): ?>
								<span class="badge badge-secondary">Đang chờ xử lý</span>
							<?php elseif($row['status'] == 1): ?>
								<span class="badge badge-primary">Đã xác nhận</span>
							<?php elseif($row['status'] == 2): ?>
								<span class="badge badge-info">Đã vận chuyển</span>
							<?php elseif($row['status'] == 3): ?>
								<span class="badge badge-success">Đã nhận hàng</span>
							<?php else: ?>
								<span class="badge badge-danger">Đã hủy</span>
							<?php endif; ?>
						</td>
						<td class="text-center">
		                    <a href="javascript:void(0)" data-id="<?php echo $row['id'] ?>" data-code="<?php echo $row['ref_id'] ?>" class="btn btn-primary btn-flat view_order">
		                          <i class="fas fa-eye"></i>Xem đơn hàng
	                        </a>
					</tr>
					<?php endwhile; ?>
				</tbody>
				
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('table').dataTable()
		$('.view_order').click(function(){
			uni_modal("My Order "+$(this).attr('data-code'),"view_order.php?id="+$(this).attr('data-id'),"large")
		})
	})
</script>