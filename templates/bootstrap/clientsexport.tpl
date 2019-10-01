<div class="col-md-9 col-xs-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['clientsexport']}</h3>
        </div>
        <div class="panel-body">
            <p>{$lang['clientsexportdesc']}</p>
            
            <form class="form-horizontal"  method="post" action="site/clientsexport.php">
                <div class="input-group">
                    <input type="text" class="form-control" name="sid" placeholder="{$lang['serverid']}">
                    <input type="hidden" name="sid" value="{$sid}" />
                    <span class="input-group-btn">
                        <button class="btn btn-default" name="give" type="submit">{$lang['clientsexport']}</button>
                    </span>
                </div>
            </form>
		</div>
	</div>
</div>
