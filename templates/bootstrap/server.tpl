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
        <div class="panel-body">
        <div class="col-lg-12">
            <form class="form-horizontal"  method="post" action="index.php?site=server">
                <div class="input-group">
                    <input type="text" class="form-control" name="msgtoall" placeholder="{$lang['msgtoall']}">
                    <span class="input-group-btn">
                        <button class="btn btn-default" name="sendmsg" type="submit">{$lang['send']}</button>
                    </span>
                </div>
            </form>
        </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['server']}</h3>
        </div>
        <div class="panel-body">
            {if !empty($serverlist)}
            <p>{$serverstats}</p>
            {/if}
            <form method="post" name="saction" action="index.php?site=server">
            <table class="table">
                <thead>
                    <tr>
                        <th class="thead"><a class="small-sort-icon" href="index.php?site=server&amp;sortby=id&amp;sorttype={if $sortby == 'virtualserver_id' AND $sorttype == $smarty.const.SORT_ASC}desc{else}asc{/if}">{$lang['id']} <span class="glyphicon glyphicon-sort" aria-hidden="true"></span></a></th>
                        <th class="thead"><a class="small-sort-icon" href="index.php?site=server&amp;sortby=name&amp;sorttype={if $sortby == 'virtualserver_name' AND $sorttype == $smarty.const.SORT_ASC}desc{else}asc{/if}">{$lang['name']} <span class="glyphicon glyphicon-sort" aria-hidden="true"></span></a></th>
                        <th class="thead"><a class="small-sort-icon" href="index.php?site=server&amp;sortby=port&amp;sorttype={if $sortby == 'virtualserver_port' AND $sorttype == $smarty.const.SORT_ASC}desc{else}asc{/if}">{$lang['port']} <span class="glyphicon glyphicon-sort" aria-hidden="true"></span></a></th>
                        <th class="thead"><a class="small-sort-icon" href="index.php?site=server&amp;sortby=status&amp;sorttype={if $sortby == 'virtualserver_status' AND $sorttype == $smarty.const.SORT_ASC}desc{else}asc{/if}">{$lang['status']} <span class="glyphicon glyphicon-sort" aria-hidden="true"></span></a></th>
                        <th class="thead"><a class="small-sort-icon" href="index.php?site=server&amp;sortby=uptime&amp;sorttype={if $sortby == 'virtualserver_uptime' AND $sorttype == $smarty.const.SORT_ASC}desc{else}asc{/if}">{$lang['runtime']} <span class="glyphicon glyphicon-sort" aria-hidden="true"></span></a></th>
                        <th class="thead"><a class="small-sort-icon" href="index.php?site=server&amp;sortby=clients&amp;sorttype={if $sortby == 'virtualserver_clientsonline' AND $sorttype == $smarty.const.SORT_ASC}desc{else}asc{/if}">{$lang['clients']} <span class="glyphicon glyphicon-sort" aria-hidden="true"></span></a></th>
                        <th class="thead">{$lang['autostart']}</th>
                        <th class="thead">{$lang['options']}</th>
                    </tr>
                </thead>
                {if !empty($serverlist)}
                    {foreach key=key item=value from=$serverlist}
                    <tr>
                        <td>{$value['virtualserver_id']}</td>
                        <td><a href="index.php?site=serverview&amp;sid={$value['virtualserver_id']}">{$value['virtualserver_name']}</a></td>
                        <td>{$value['virtualserver_port']}</td>
                        <td>
                            {if $value['virtualserver_status'] == "online"}
                                <span class="online">{$lang['online']}</span>
                            {elseif $value['virtualserver_status'] == "online virtual"}
                                <span class="onvirtual">{$lang['onlinevirtual']}</span>
                            {elseif $value['virtualserver_status'] == "offline"}
                                <span class="offline">{$lang['offline']}</span>
                            {/if}
                        </td>
                        <td>{$value['virtualserver_uptime']}</td>
                        <td>{$value['virtualserver_clientsonline']} / {$value['virtualserver_maxclients']}</td>
                        <td>
                            <input type="checkbox" name="caction[{$value['virtualserver_id']}][auto]" value="1" {if $value['virtualserver_autostart'] == 1}checked="checked"{/if}/></td>
                        <td>
                        <select class="form-control" id="caction{$value['virtualserver_id']}" name="caction[{$value['virtualserver_id']}][action]" onchange="confirmArray('{$value['virtualserver_id']}', '{$value['virtualserver_name']|addslashes}', '{$value['virtualserver_port']}', '');">
                            <option value="">{$lang['select']}</option>
                            <option value="start">{$lang['start']}</option>
                            <option value="stop">{$lang['stop']}</option>
                            <option value="del">{$lang['delete']}</option>
                        </select>
                        </td>
                    </tr>
                    {/foreach}
                <tr>
                    <td colspan="7" align="right"></td>
                    <td>
                        <input class="btn btn-primary btn-sm srv-btn-size" type="submit" name="massaction" value="{$lang['action']}" onclick="return confirm(confirmAction())" />
                    </td>
                </tr>
                {else}
                <tr>
                    <td colspan='8'>{$lang['noserver']}</td>
                </tr>
                {/if}
            </table>
            </form>
        </div>
    </div>
</div>
{/if}