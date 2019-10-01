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
{if isset($permoverview['b_virtualserver_token_list']) AND empty($permoverview['b_virtualserver_token_list'])}
    <div class="col-md-9 col-xs-12">
        <div class="alert alert-warning">
            <p>{$lang['error']}: {$lang['nopermissions']}</p>
        </div>
    </div>
{else}
<div class="col-md-9 col-xs-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['tokenlist']}</h3>
        </div>
        <form method="post" action="index.php?site=token&amp;sid={$sid}">
        <table class="table" cellspacing="0">
            <thead>
                <tr>
                    <th>{$lang['token']}</th>
                    <th>{$lang['type']}</th>
                    <th>{$lang['id1']}</th>
                    <th>{$lang['id2']}</th>
                    <th>{$lang['created']}</th>
                    <th>{$lang['description']}</th>
                    <th>{$lang['selectall']}<input type="checkbox" name="checkall" value="0" onclick="check(1)" /></th>
                </tr>
            </thead>
            {if !empty($tokenlist)}
                {foreach key=key item=value from=$tokenlist}
                    <tr>
                        <td>{$value['token']}</td>
                        <td>
                        {if $value['token_type']==0}
                            {$lang['servergroup']}
                            {elseif $value['token_type'] == 1}
                            {$lang['channelgroup']}
                        {/if}
                        </td>
                        <td>
                        {if $value['token_type'] == 0}
                            {foreach key=key2 item=value2 from=$sgrouplist}
                                {if $value2['sgid'] == $value['token_id1']}
                                    {$value2['name']}
                                {/if}
                            {/foreach}
                        {elseif $value['token_type'] == 1}
                            {foreach key=key2 item=value2 from=$cgrouplist}
                                {if $value2['cgid'] == $value['token_id1']}
                                    {$value2['name']}
                                {/if}
                            {/foreach}
                        {/if}
                        </td>
                        <td>
                        {if $value['token_type']==1}
                            {foreach key=key2 item=value2 from=$channellist}
                                {if $value2['cid'] == $value['token_id2']}
                                    {$value2['channel_name']}
                                {/if}
                            {/foreach}
                        {/if}
                        </td>
                        <td>{$value['token_created']|date_format:"%d.%m.%Y - %H:%M:%S"}</td>
                        <td>{$value['token_description']}</td>
                        <td>
                        {if !isset($permoverview['b_virtualserver_token_delete']) OR $permoverview['b_virtualserver_token_delete']==1}
                        <input type="checkbox" name="token[]" value="{$value['token']}" />
                        {/if}
                        </td>
                    </tr>
                {/foreach} 
                <tr>
                    <td colspan="6">&nbsp;</td>
                    <td align="center"><input type="submit" name="deltoken" value="{$lang['delete']}" /></td>
                </tr>
            {/if}
        </table>
        </form>
    </div>
{/if}
{if isset($permoverview['b_virtualserver_token_add']) AND empty($permoverview['b_virtualserver_token_add'])}
    <div class="alert alert-warning">
            <p>{$lang['error']}: {$lang['nopermissions']}</p>
    </div>
</div>
{else}
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['createtoken']}</h3>
        </div>
        <form method="post" action="index.php?site=token&amp;sid={$sid}">
        <table class="table" >
            <thead>
                <tr>
                    <th>{$lang['type']}</th>
                    <th>{$lang['groups']}</th>
                    <th>{$lang['channel']}</th>
                    <th>{$lang['description']}</th>
                    <th>{$lang['number']}</th>
                    <th>{$lang['option']}</th>
                </tr>
            </thead>
            <tr>
                <td>
                <select name="tokentype" onchange="hide_select(this.value)">
                    <option value="">{$lang['type']}</option>
                    <option value="0">(0){$lang['servergroup']}</option>
                    <option value="1">(1){$lang['channelgroup']}</option>
                </select>
                </td>
                <td>
                <div id="groups">
                <select id="servergroups" style="display:none" name="tokenid1_1">
                <optgroup label="{$lang['servergroups']}">
                {foreach key=key item=value from=$sgrouplist}
                    {if $value['type'] != 0}
                        <option value="{$value['sgid']}">({$value['sgid']}) {$value['name']}</option>
                    {/if}
                {/foreach}
                </optgroup>
                </select>
                <select id="channelgroups" style="display:none" name="tokenid1_2">
                <optgroup label="{$lang['channelgroups']}">
                {foreach key=key item=value from=$cgrouplist}
                    {if $value['type'] != 0}
                        <option value="{$value['cgid']}">({$value['cgid']}) {$value['name']}</option>
                    {/if}
                {/foreach}
                </optgroup>
                </select>
                </div>
                </td>
                <td>
                <select id="channel" style="display:none" name="tokenid2">
                <option value="0">{$lang['channel']}</option>
                {foreach key=key item=value from=$channellist}
                    <option value="{$value['cid']}">{$value['channel_name']}</option>
                {/foreach}
                </select>
                </td>
                <td>
                <input type="text" name="description" value="" />
                </td>
                <td>
                <input type="text" name="number" size="3" value="1" />
                </td>
                <td>
                <input class="button" type="submit" name="addtoken" value="{$lang['create']}" />
                </td>
            </tr>
        </table>
        </form>
    </div>
</div>
{/if}