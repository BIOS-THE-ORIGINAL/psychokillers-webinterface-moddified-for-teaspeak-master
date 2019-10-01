{if isset($permoverview['b_virtualserver_log_view']) AND empty($permoverview['b_virtualserver_log_view'])}
    <div class="col-md-9 col-xs-12">
        <div class="alert alert-warning">
            <p>{$lang['error']}: {$lang['nopermissions']}</p>
        </div>
    </div>
{else}
<div class="col-md-9 col-xs-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['logview']}</h3>
        </div>
<table class="table">
	<tr>
		<td>
			<form method="post" action="index.php?site=logview&amp;sid={$sid}">
			<input type="hidden" name="begin_pos" value="{$begin_pos}"/>
			<input type="submit" name="showmore" value="{$lang['showmoreentrys']}" />
			</form>
		</td>
	</tr>
	<thead>
        <tr>
            <th style="width:20%">{$lang['date']}</th>
            <th style="width:5%">{$lang['level']}</th>
            <th style="width:10%">{$lang['type']}</th>
            <th style="width:10%">{$lang['serverid']}</th>
            <th style="width:55%">{$lang['message']}</th>
        </tr>
    </thead>

{if !empty($serverlog)}
	{foreach key=key item=value from=$serverlog}
		{if empty($smarty.post.type.error) AND empty($smarty.post.type.warning) AND empty($smarty.post.type.debug) AND empty($smarty.post.type.info) OR $smarty.post.type.error == $value['level'] OR $smarty.post.type.warning == $value['level'] OR $smarty.post.type.debug == $value['level'] OR $smarty.post.type.info == $value['level']}
			{if $change_col % 2} {assign var=td_col value="green1"} {else} {assign var=td_col value="green2"} {/if}
			<tr>
				<td class="{$td_col}">{$value[0]}</td>
				<td class="{$td_col}">{$value[1]}</td>
				<td class="{$td_col}">{$value[2]}</td>
				<td class="{$td_col}">{$value[3]}</td>
				<td class="{$td_col}">{$value[4]}</td>
			</tr>
		
			{assign var=change_col value="`$change_col+1`"}
		{/if}
	{/foreach}
{/if}
	<tr>
		<td>
			<form method="post" action="index.php?site=logview&amp;sid={$sid}">
			<input type="hidden" name="begin_pos" value="{$begin_pos}"/>
			<input type="submit" name="showmore" value="{$lang['showmoreentrys']}" />
			</form>
		</td>
	</tr>
</table>
    </div>
</div>
{/if}