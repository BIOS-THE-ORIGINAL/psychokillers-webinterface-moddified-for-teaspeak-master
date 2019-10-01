{if $hoststatus === false AND $serverhost === true}
<div class="col-md-9 col-xs-12">
    <div class="alert alert-warning">
        <p>{$lang['error']}: {$lang['nohoster']}</p>
    </div>
</div>
{else}
{if !empty($error) OR !empty($noerror)}
<div class="col-md-9 col-xs-12">
    <div class="alert alert-warning">
	{if !empty($error)}
        <p>{$error}</p>
	{/if}
	{if !empty($noerror)}
        <p>{$noerror}</p>
	{/if}
    </div>
</div>
{/if}
<div class="col-md-9 col-xs-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Instance Server Backups</h3>
        </div>
        <div class="panel-body">
            <p>{$lang['servbackdesc']}</p>
            <div class="alert alert-warning">
                <p>{$lang['snapwarning']}</p>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['serverbackups']}</h3>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th class="thead">{$lang['created']}</td>
                    <th class="thead">{$lang['server']}</td>
                    <th class="thead">{$lang['options']}</td>
                </tr>
            </thead>
	{if isset($files[0]) AND !empty($files[0]) OR isset($folder[2]) AND !empty($folder[2])}
		{if !isset($smarty.post.backupdate)}
			{foreach key=key item=value from=$folder[2]}
				{if $change_col % 2} {assign var=td_col value="green1"} {else} {assign var=td_col value="green2"} {/if}
			<tr>
				<td class="{$td_col} center">{$value}</td>
				<td colspan="2" class="{$td_col} center">
				<form method="post" action="index.php?site=iserverbackup">
				<input type="hidden" name="backupdate" value="{$value}" />
				<input type="submit" name="chose" value="Ausw&auml;hlen" />
				</form>
				</td>
			</tr>
			{assign var=change_col value="`$change_col+1`"}
		{/foreach}
		{else}
			{if	isset($files[0])}
			{foreach key=key item=value from=$files[0]}
				{if $change_col % 2} {assign var=td_col value="green1"} {else} {assign var=td_col value="green2"} {/if}
				<tr>
					<td class="{$td_col} center">{$value['timestamp']|date_format:"%d.%m.%Y - %H:%M:%S"}</td>
					<td class="{$td_col} center">{$value['server']}</td>
					<td class="{$td_col} center">
					<form method="post" action="index.php?site=iserverbackup">
					<select name="deployon">
					<option value="">-</option>
					{if !empty($serverlist)}
						{foreach key=key2 item=value2 from=$serverlist}
							<option value="{$value2['virtualserver_port']}">{$value2['virtualserver_name']}:{$value2['virtualserver_port']}</option>
						{/foreach}
					{/if}
					</select>
					<input type="hidden" name="backupid" value="{$value['timestamp']}" />
					<input type="hidden" name="fileport" value="{$value['server']}" />
					<input type="hidden" name="backupdate" value="{$smarty.post.backupdate}" />
					<input class="start" type="submit" name="deploy" value="" title="{$lang['deploy']}" />
					</form>
					<form method="post" action="index.php?site=iserverbackup">
					<input type="hidden" name="backupid" value="{$value['timestamp']}" />
					<input type="hidden" name="fileport" value="{$value['server']}" />
					<input type="hidden" name="backupdate" value="{$smarty.post.backupdate}" />
					<input class="delete" type="submit" name="delete" value="" title="{$lang['delete']}" />
					</form>
					</td>
				</tr>
				{assign var=change_col value="`$change_col+1`"}
			{/foreach}	
			{else}
			<tr>
				<td colspan="3">No Backups found!</td>
			</tr>
			{/if}
		{/if}
	{else}
		<tr>
			<td colspan="3" class="green1 center">No Backups found!</td>
		</tr>
	{/if}
    </table>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['host']} {$lang['serverbackups']}</h3>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th class="thead">{$lang['created']}</td>
                    <th class="thead">{$lang['server']}</td>
                    <th class="thead">{$lang['options']}</td>
                </tr>
            </thead>
{if isset($files[1]) AND !empty($files[1]) OR isset($folder[1]) AND !empty($folder[1])}
	{if !isset($smarty.post.backupdate)}
		{foreach key=key item=value from=$folder.1}
			{if $change_col % 2} {assign var=td_col value="green1"} {else} {assign var=td_col value="green2"} {/if}
		<tr>
			<td class="{$td_col} center">{$value}</td>
			<td colspan="2" class="{$td_col} center">
			<form method="post" action="index.php?site=iserverbackup">
			<input type="hidden" name="backupdate" value="{$value}" />
			<input type="submit" name="chose" value="Ausw&auml;hlen" />
			</form>
			</td>
		</tr>
		{assign var=change_col value="`$change_col+1`"}
	{/foreach}
	{else}
		{if	isset($files[1])}
			{foreach key=key item=value from=$files[1]}
				{if $change_col % 2} {assign var=td_col value="green1"} {else} {assign var=td_col value="green2"} {/if}
				<tr>
					<td class="{$td_col} center">{$value['timestamp']|date_format:"%d.%m.%Y - %H:%M:%S"}</td>
					<td class="{$td_col} center">{$value['server']}</td>
					<td class="{$td_col} center">
					<form method="post" action="index.php?site=iserverbackup">
					<select name="deployon">
					<option value="">-</option>
					{if !empty($serverlist)}
						{foreach key=key2 item=value2 from=$serverlist}
							<option value="{$value2['virtualserver_port']}">{$value2['virtualserver_name']}:{$value2['virtualserver_port']}</option>
						{/foreach}
					{/if}
					</select>
					<input type="hidden" name="hostbackup" value="1" />
					<input type="hidden" name="backupdate" value="{$smarty.post.backupdate}" />
					<input type="hidden" name="backupid" value="{$value['timestamp']}" />
					<input type="hidden" name="fileport" value="{$value['server']}" />
					<input class="start" type="submit" name="deploy" value="" title="{$lang['deploy']}" />
					</form>
					<form method="post" action="index.php?site=iserverbackup">
					<input type="hidden" name="hostbackup" value="1" />
					<input type="hidden" name="backupdate" value="{$smarty.post.backupdate}" />
					<input type="hidden" name="backupid" value="{$value['timestamp']}" />
					<input type="hidden" name="fileport" value="{$value['server']}" />
					<input class="delete" type="submit" name="delete" value="" title="{$lang['delete']}" />
					</form>
					</td>
				</tr>
				{assign var=change_col value="`$change_col+1`"}
			{/foreach}
		{else}
			<tr>
				<td colspan="3" class="green1 center">No Backups found!</td>
			</tr>
		{/if}
	{/if}
{else}
	<tr>
		<td colspan="3" class="green1 center">No Backups found!</td>
	</tr>
{/if}
</table>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['createserverbackup']}</h3>
        </div>
        <div class="panel-body">
            <form method="post" action="index.php?site=iserverbackup">
                <input class="btn btn-primary" type="submit" name="create" value="{$lang['create']}" />
            </form>
            <br>
            <form method="post" action="index.php?site=iserverbackup">
                <input type="hidden" name="hostbackup" value="1" />
                <input class="btn btn-primary" type="submit" name="create" value="{$lang['host']} {$lang['create']}" />
            </form>
        </div>
    </div>
</div>
{/if}