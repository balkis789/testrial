<?php 
use app\tatiye;
use app\models\Package;
?>
<div class="<?=$row['colom'];?>">
  <small class="<?=$row['label'];?>"><?=$row['title'];?></small>
  <select id="<?=$row['name'];?>" class="form-control select<?=$row['name'];?> "name="<?=$row['name'];?>" >
    <option label="Choose one"></option>
      <?php 
         echo $row['value'];
         foreach (Package::Public() as $key => $value) {
            if ($value[0] !=='Rbac') {
              echo '<option value="'.$key.'">'.$value[0].'</option>';
            }
          }
       ?>
  </select>
  <small id="info_<?=$row['name'];?>"></small>
</div>
<script type="text/javascript">
   $('.select<?=$row['name'];?>').select2({
     placeholder:'<?=$row['placeholder'];?>',
     searchInputPlaceholder: 'Search options',
     allowClear: true
   });
</script>