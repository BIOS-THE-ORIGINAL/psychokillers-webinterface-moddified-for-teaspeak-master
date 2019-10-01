<div class="col-md-9 col-xs-12">
{if !empty($error) OR !empty($noerror)}
    <div class="alert alert-warning">
	{if !empty($error)}
        <p>{$error}</p>
	{/if}
	{if !empty($noerror)}
        <p>{$noerror}</p>
	{/if}
    </div>
{/if}
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['temppw']}</h3>
        </div>
        <table style="width:100%" class="table" cellpadding="1" cellspacing="0">
            <thead>
                <tr>
                    <th>Nickname</th>
                    <th>Uid</th>
                    <th>Desc</th>
                    <th>Passwort</th>
                    <th>Start</th>
                    <th>Ende</th>
                    <th>Channel</th>
                    <th>Option</th>
                </tr>
            </thead>
            {if !empty($temppwlist)}
            {foreach key=id item=temppw from=$temppwlist}
            <tr>
                <td align="center">{$temppw.nickname}</td>
                <td align="center">{$temppw.uid}</td>
                <td align="center">{$temppw.desc}</td>
                <td align="center">{$temppw.pw_clear}</td>
                <td align="center">{$temppw.start}</td>
                <td align="center">{$temppw.end}</td>
                <td align="center">{$temppw.tcid}</td>
                <td align="center">
                <form method="post" action="index.php?site=temppw&amp;sid={$sid}">
                <input name="pw" value="{$temppw.pw_clear}" type="hidden">
                <input class="delete" name="temppwdel" value="" title="L&ouml;schen" type="submit">
                </form>
                </td>
            </tr>
            {/foreach}
            {/if}
        </table>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['create']} {$lang['temppw']}</h3>
        </div>
        <div class="panel-body">
        <form class="form-horizontal" method="post" action="index.php?site=temppw&amp;sid={$sid}">
            <div class="form-group">
                <label for="password" class="col-lg-2 control-label">{$lang['password']}</label>
                <div class="col-lg-10">
                    <input class="form-control" type="text" placeholder="" name="password">
                </div>
            </div>
            <div class="form-group">
                <label for="duration" class="col-lg-2 control-label">{$lang['duration']}</label>
                <div class="col-lg-10">
                    <input class="form-control" type="text" placeholder="" name="duration">
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-lg-2 control-label">{$lang['description']}</label>
                <div class="col-lg-10">
                    <input class="form-control" type="text" placeholder="" name="description">
                </div>
            </div>
            <div class="form-group">
                <label for="tcid" class="col-lg-2 control-label">{$lang['channel']}</label>
                <div class="col-lg-10">
                    <select class="form-control" name="tcid">
                        {foreach key=id item=channel from=$channellist}
                            <option value="{$channel.cid}">{$channel.channel_name}</option>
                        {/foreach}
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="create" class="col-lg-2 control-label">{$lang['option']}</label>
                <div class="col-lg-10">
                    <input class="btn btn-primary btn-sm" type="submit" name="create" value="{$lang['create']}" />
                </div>
            </div>
        </form>
        </div>
    </div>
</div>