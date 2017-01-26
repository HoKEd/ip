<?php
/* @var $this UsersController */
/* @var $model Users */
/* @var $form CActiveForm */
?>

<div class="form">
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'users-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group row">
  		<?php echo $form->labelEx($model,'username', array('class'=>'col-2 col-form-label')); ?>
  		<div class="col-10">
	  		<?php echo $form->textField($model,'username',array('size'=>50,'maxlength'=>50,'class'=>'form-control')); ?>
			<?php echo $form->error($model,'username', array('class'=>'alert alert-danger')); ?>
  		</div>
	</div>
	<div class="form-group row">
		<?php echo $form->labelEx($model,'password', array('class'=>'col-2 col-form-label')); ?>
		<div class="col-10">
			<?php echo $form->passwordField($model,'password',array('size'=>60,'maxlength'=>150,'class'=>'form-control')); ?>
			<?php echo $form->error($model,'password', array('class'=>'alert alert-danger')); ?>
  		</div>
	</div>
	<div class="form-group row">
		<?php echo $form->labelEx($model,'email', array('class'=>'col-2 col-form-label')); ?>
  		<div class="col-10">
  			<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
  			<?php echo $form->error($model,'email', array('class'=>'alert alert-danger')); ?>
  		</div>
	</div>
	<div class="form-group row">
		<?php echo $form->labelEx($model,'id_country', array('class'=>'col-2 col-form-label')); ?>
	  	<div class="col-10">
	  		<?php echo $form->dropDownList(
               $model,
               'id_country',
               CHtml::listData(Countries::model()->findAll(),
                   'id', 'name'),
               array(
				'prompt' => 'Select Country',
				'onchange' => '$.get("' .
				CController::createUrl('cities/list'). '", { id:$(this).val() }).done(
				function(data) {
				$("select#Users_id_city").html(data);
				});',
				'class'=>'form-control'
				)); ?>
			<?php echo $form->error($model,'id_country', array('class'=>'alert alert-danger')); ?>
	  	</div>
	</div>
	<div class="form-group row">
		<?php echo $form->labelEx($model,'id_city', array('class'=>'col-2 col-form-label')); ?>
	  	<div class="col-10">
	  		<?php echo $form->dropDownList(
               $model,
               'id_city',
               CHtml::listData(Cities::model()->findAll(),
                   'id', 'name'),
               array('empty' => 'Select City','class'=>"form-control")
          ); ?>
	    	<?php echo $form->error($model,'id_city', array('class'=>'alert alert-danger')); ?>
	  	</div>
	</div>
	<div class="form-group row">
	  	<?php echo $form->labelEx($model,'roles', array('class'=>'col-2 col-form-label')); ?>
		<div class="col-10">
		    <?php echo $form->textField($model,'roles',array('size'=>25,'maxlength'=>25,'class'=>'form-control')); ?>
			<?php echo $form->error($model,'roles', array('class'=>'alert alert-danger')); ?>
		</div>
	</div>
	  		<?php echo $form->hiddenField($model, 'date_reg'); ?>
			<?php echo $form->error($model,'date_reg', array('class'=>'alert alert-danger')); ?>
	</div>
	<div class="form-group row">
		<?php echo $form->labelEx($model,'avatar', array('class'=>'col-2 col-form-label')); ?>
		<div class="col-10">
		    <?php echo $form->textField($model,'avatar',array('size'=>60,'maxlength'=>150,'class'=>'form-control')); ?>
			<?php echo $form->error($model,'avatar', array('class'=>'alert alert-danger')); ?>
		  </div>
	</div>
	<div class="form-group row">
	  	<?php echo $form->labelEx($model,'puntos', array('class'=>'col-2 col-form-label')); ?>
	  	<div class="col-10">
	    	<?php echo $form->textField($model,'puntos',array('size'=>10,'maxlength'=>10,'class'=>'form-control')); ?>
			<?php echo $form->error($model,'puntos', array('class'=>'alert alert-danger')); ?>
	  	</div>
	</div>
	<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'btn btn-primary')); ?>

<?php $this->endWidget(); ?>

</div><!-- form -->