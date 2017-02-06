<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="/js/jquery/ui/i18n/jquery.ui.datepicker-es.js"></script>
<script type="text/javascript">
	jQuery(function($) {
		$('#fecha').datepicker({
			minDate: '+3',
			regional: 'es',
			dateFormat: 'dd/mm/yy'
		});
	});
</script>
<link rel="stylesheet" href="/js/jquery/ui/themes/base/minified/jquery-ui.min.css" type="text/css" media="all" />
<h1 class="page-heading bottom-indent">
	Eventos
</h1>
<form action="" method="post" class="contact-form-box">
	<fieldset>
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label for="fecha">Fecha del evento</label>
				<input type="text" class="form-control" placeholder="Seleccione la fecha" id="fecha" name="fecha" required="" readonly=""/>
			</div>
			<div class="form-group">
				<label for="invitados">Cantidad de invitados</label>
				<input type="text" class="form-control" id="invitados" name="invitados" required=""/>
			</div>
			<div class="form-group">
				<label for="bebidas">¿Se ofrecen bebidas alcohólicas?</label>
				<select name="bebidas" id="bebidas" required="" class="form-control">
					<option value="">Seleccionar</option>
					<option value="1">Si</option>
					<option value="2">No</option>
				</select>
			</div>
			<div class="form-group">
				<label for="direccion">Dirección</label>
				<input type="text" class="form-control" id="direccion" name="direccion" required=""/>
			</div>
			<div class="form-group">
				<label for="cp">Código postal</label>
				<input type="numeric" class="form-control" id="cp" name="cp" required=""/>
			</div>
			<div class="submit">
				<button type="submit" name="submitMessage" id="submitMessage" class="button btn btn-default button-medium"><span>Enviar<i class="icon-chevron-right right"></i></span></button>
			</div>
		</div>	
	</fieldset>
</form>