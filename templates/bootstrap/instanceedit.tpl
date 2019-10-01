{if $hoststatus === false AND $serverhost === true}
<div class="col-md-9 col-xs-12">
    <div class="alert alert-warning">
        <p>{$lang['nohoster']}</p>>
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
            <h3 class="panel-title">{$lang['instanceedit']}</h3>
        </div>
            <form method="post" action="index.php?site=instanceedit">
            <table class="table" cellpadding="1" cellspacing="0">
                <tr>
                    <td class="green1">{$lang['questsquerygroup']}</td>
                    <td class="green1"><input type="text" name="newsettings[serverinstance_guest_serverquery_group]" value="{$instanceinfo['serverinstance_guest_serverquery_group']}" /></td>
                </tr>
                <tr>
                    <td class="green2">{$lang['tempsadmingroup']}</td>
                    <td class="green2"><input type="text" name="newsettings[serverinstance_template_serveradmin_group]" value="{$instanceinfo['serverinstance_template_serveradmin_group']}" /></td>
                </tr>
                <tr>
                    <td class="green1">{$lang['tempcadmingroup']}</td>
                    <td class="green1"><input type="text" name="newsettings[serverinstance_template_channeladmin_group]" value="{$instanceinfo['serverinstance_template_channeladmin_group']}" /></td>
                </tr>
                <tr>
                    <td class="green2">{$lang['tempsdefgroup']}</td>
                    <td class="green2"><input type="text" name="newsettings[serverinstance_template_serverdefault_group]" value="{$instanceinfo['serverinstance_template_serverdefault_group']}" /></td>
                </tr>
                <tr>
                    <td class="green1">{$lang['tempcdefgroup']}</td>
                    <td class="green1"><input type="text" name="newsettings[serverinstance_template_channeldefault_group]" value="{$instanceinfo['serverinstance_template_channeldefault_group']}" /></td>
                </tr>
                <tr>
                    <td class="green2">{$lang['filetransport']}</td>
                    <td class="green2"><input type="text" name="newsettings[serverinstance_filetransfer_port]" value="{$instanceinfo['serverinstance_filetransfer_port']}" /></td>
                </tr>
                <tr>
                    <td class="green1">{$lang['maxdownbandwidth']}</td>
                    <td class="green1"><input type="text" name="newsettings[serverinstance_max_download_total_bandwidth]" value="{$instanceinfo['serverinstance_max_download_total_bandwidth']}" /></td>
                </tr>
                <tr>
                    <td class="green2">{$lang['maxupbandwidth']}</td>
                    <td class="green2"><input type="text" name="newsettings[serverinstance_max_upload_total_bandwidth]" value="{$instanceinfo['serverinstance_max_upload_total_bandwidth']}" /></td>
                </tr>
                <tr>
                    <td class="green1">{$lang['squeryfloodcmd']}</td>
                    <td class="green1"><input type="text" name="newsettings[serverinstance_serverquery_flood_commands]" value="{$instanceinfo['serverinstance_serverquery_flood_commands']}" /></td>
                </tr>
                <tr>
                    <td class="green2">{$lang['squeryfloodtime']}</td>
                    <td class="green2"><input type="text" name="newsettings[serverinstance_serverquery_flood_time]" value="{$instanceinfo['serverinstance_serverquery_flood_time']}" /></td>
                </tr>
                <tr>
                    <td class="green1">{$lang['squerybantime']}</td>
                    <td class="green1"><input type="text" name="newsettings[serverinstance_serverquery_ban_time]" value="{$instanceinfo['serverinstance_serverquery_ban_time']}" /></td>
                </tr>
                <tr>
                    <td class="green2">{$lang['option']}:</td>
                    <td class="green2"><input class="button" type="submit" name="editinstance" value="{$lang['edit']}" /></td>
                </tr>
            </table>
            </form>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['showonweblist']}</h3>
        </div>
            <form method="post" action="index.php?site=instanceedit">
            <table class="table" cellpadding="1" cellspacing="0">
                <thead>
                    <tr>
                        <th>{$lang['serverid']}</th>
                        <th>{$lang['name']}</th>
                        <th style="text-align:right;">{$lang['selectall']} <input type="checkbox" name="checkall" value="0" onclick="check(1)" /></th>
                    </tr>
                </thead>
                {if !empty($serverlist)}
                    {foreach key=key item=value from=$serverlist}
                        {if $change_col % 2} {assign var=td_col value="green1"} {else} {assign var=td_col value="green2"} {/if}
                        <tr>
                            <td class="{$td_col}">{$value['virtualserver_id']}</td>
                            <td class="{$td_col}">{$value['virtualserver_name']}</td>
                            <td class="{$td_col}" align="right">
                            <input type="hidden" name="list[{$value['virtualserver_id']}][0]" value="0" />
                            <input {if $value['virtualserver_weblist_enabled'] == 1}checked="checked"{/if} type="checkbox" id="list{$value['virtualserver_id']}" name="list[{$value['virtualserver_id']}][0]" value="1"/>
                            </td>
                        </tr>
                        {assign var=change_col value="`$change_col+1`"}
                    {/foreach}
                {/if}
                <tr>
                    <td align="center" colspan="3"><input type="submit" name="editshowlist" value="{$lang['edit']}" /></td>
                </tr>
            </table>
            </form>
    </div>
</div>
{/if}