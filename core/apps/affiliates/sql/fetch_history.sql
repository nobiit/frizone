

SELECT * FROM `<?php echo($data['t_affils']); ?>`
	
	WHERE `user_id` = <?php echo($data['user_id']); ?>

	<?php if(not_empty($data['offset'])): ?>
		AND `id` < <?php echo($data['offset']); ?>
	<?php endif; ?>

	ORDER BY `id` DESC 

<?php if(not_empty($data['limit'])): ?>
	LIMIT <?php echo($data['limit']); ?>;
<?php endif; ?>