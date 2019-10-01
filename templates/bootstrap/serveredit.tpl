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
    {if !isset($permoverview['b_virtualserver_modify_password']) OR $permoverview['b_virtualserver_modify_password'] == 1}
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">{$lang['serverpassword']}</h3>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" method="post" action="index.php?site=serveredit&amp;sid={$sid}">
                <div class="form-group">
                    <label for="newpassword" class="col-lg-2 control-label">{$lang['newpassword']}</label>
                    <div class="col-lg-10">
                        <input class="form-control" type="text" name="newsettings[virtualserver_password]" value=""/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="option" class="col-lg-2 control-label">{$lang['option']}</label>
                    <div class="col-lg-10">
                        <input class="btn btn-primary btn-sm" type="submit" name="editpw" value="{$lang['edit']}" />
                    </div>
                </div>
                </form>
            </div>
        </div>
    {/if}
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['virtualserver']} #{$serverinfo['virtualserver_id']} {$lang['editor']}</h3>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" method="post" action="index.php?site=serveredit&amp;sid={$sid}">
            <div class="form-group">
                <label for="autostart" class="col-lg-2 control-label">{$lang['autostart']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_autostart']) AND empty($permoverview['b_virtualserver_modify_autostart'])}
                        -
                    {else}
                        <select class="form-control" name="newsettings[virtualserver_autostart]">
                            <option value="1" {if $serverinfo['virtualserver_autostart'] == 1}selected="selected"{/if}>{$lang['yes']}</option>
                            <option value="0" {if $serverinfo['virtualserver_autostart'] == 0}selected="selected"{/if}>{$lang['no']}</option>
                        </select>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="port" class="col-lg-2 control-label">{$lang['port']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_port']) AND empty($permoverview['b_virtualserver_modify_port'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_port]" value="{$serverinfo['virtualserver_port']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="minclientversion" class="col-lg-2 control-label">{$lang['minclientversion']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_min_client_version']) AND empty($permoverview['b_virtualserver_modify_min_client_version'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_min_client_version]" value="{$serverinfo['virtualserver_min_client_version']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-lg-2 control-label">{$lang['name']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_name']) AND empty($permoverview['b_virtualserver_modify_name'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_name]" value="{$serverinfo['virtualserver_name']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="welcomemsg" class="col-lg-2 control-label">{$lang['welcomemsg']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_welcomemessage']) AND empty($permoverview['b_virtualserver_modify_welcomemessage'])}
                        -
                    {else}
                        <textarea class="text-area" name="newsettings[virtualserver_welcomemessage]" rows="5" style="width:100%;">{$serverinfo['virtualserver_welcomemessage']}</textarea>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="maxclients" class="col-lg-2 control-label">{$lang['maxclients']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_maxclients']) AND empty($permoverview['b_virtualserver_modify_maxclients'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_maxclients]" value="{$serverinfo['virtualserver_maxclients']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="maxreservedslots" class="col-lg-2 control-label">{$lang['maxreservedslots']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_reserved_slots']) AND empty($permoverview['b_virtualserver_modify_reserved_slots'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_reserved_slots]" value="{$serverinfo['virtualserver_reserved_slots']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="showonweblist" class="col-lg-2 control-label">{$lang['showonweblist']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_weblist']) AND empty($permoverview['b_virtualserver_modify_weblist'])}
                        -
                    {else}
                        <select class="form-control" name="newsettings[virtualserver_weblist_enabled]">
                            <option value="1" {if $serverinfo['virtualserver_weblist_enabled'] == 1}selected="selected"{/if}>{$lang['yes']}</option>
                            <option value="0" {if $serverinfo['virtualserver_weblist_enabled'] == 0}selected="selected"{/if}>{$lang['no']}</option>
                        </select>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="codecencryptionmode" class="col-lg-2 control-label">{$lang['codecencryptionmode']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_codec_encryption_mode']) AND empty($permoverview['b_virtualserver_modify_codec_encryption_mode'])}
                        -
                    {else}
                        <select class="form-control" name="newsettings[virtualserver_codec_encryption_mode]">
                        <option value="0" {if $serverinfo['virtualserver_codec_encryption_mode'] == 0}selected='selected'{/if}>{$lang['codecencryptionmodeindi']}</option>
                        <option value="1" {if $serverinfo['virtualserver_codec_encryption_mode'] == 1}selected='selected'{/if}>{$lang['codecencryptionmodegoff']}</option>
                        <option value="2" {if $serverinfo['virtualserver_codec_encryption_mode'] == 2}selected='selected'{/if}>{$lang['codecencryptionmodegon']}</option>
                        </select>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="passwordset" class="col-lg-2 control-label">{$lang['passwordset']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_password']) AND empty($permoverview['b_virtualserver_modify_password'])}
                        -
                    {else}
                        {if $serverinfo['virtualserver_flag_password'] == 1}{$lang['yes']}{else} {$lang['no']}{/if}
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="securitylevel" class="col-lg-2 control-label">{$lang['securitylevel']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_needed_identity_security_level']) AND empty($permoverview['b_virtualserver_modify_needed_identity_security_level'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_needed_identity_security_level]" value="{$serverinfo['virtualserver_needed_identity_security_level']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="minclientschan" class="col-lg-2 control-label">{$lang['minclientschan']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_channel_forced_silence']) AND empty($permoverview['b_virtualserver_modify_channel_forced_silence'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_min_clients_in_channel_before_forced_silence]" value="{$serverinfo['virtualserver_min_clients_in_channel_before_forced_silence']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="iconid" class="col-lg-2 control-label">{$lang['iconid']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_icon_id']) AND empty($permoverview['b_virtualserver_modify_icon_id'])}
                        -
                    {else}
                    <div class="input-group">
                        <input class="form-control" id="iconid" type="text" name="newsettings[virtualserver_icon_id]" value="{$serverinfo['virtualserver_icon_id']}" />
                        <span class="input-group-addon" id="basic-addon2"><a href="javascript:oeffnefenster('site/showallicons.php?ip={$smarty.session.server_ip}&amp;sid={$sid}&amp;port={$serverinfo['virtualserver_port']}');">{$lang['set']}</a></span>
                    </div>
                    {/if}
                </div>
            </div>
            <hr>
            <h3>{$lang['standardgroups']}</h3>
            <hr>
            <div class="form-group">
                <label for="servergroup" class="col-lg-2 control-label">{$lang['servergroup']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_default_servergroup']) AND empty($permoverview['b_virtualserver_modify_default_servergroup'])}
                        -
                    {else}
                        <select class="form-control" name="newsettings[virtualserver_default_server_group]">
                        {foreach key=key item=value from=$servergroups}
                            {if $value['type'] == 1}
                                <option {if $value['sgid'] == $serverinfo['virtualserver_default_server_group']}selected="selected"{/if} value="{$value['sgid']}">{$value['sgid']} {$value['name']}</option>
                            {/if}
                        {/foreach}
                        </select>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="channelgroup" class="col-lg-2 control-label">{$lang['channelgroup']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_default_channelgroup']) AND empty($permoverview['b_virtualserver_modify_default_channelgroup'])}
                        -
                    {else}
                        <select class="form-control" name="newsettings[virtualserver_default_channel_group]">
                        {foreach key=key item=value from=$channelgroups}
                            {if $value['type'] == 1}
                                <option {if $value['cgid'] == $serverinfo['virtualserver_default_channel_group']}selected="selected"{/if} value="{$value['cgid']}">{$value['cgid']} {$value['name']}</option>
                            {/if}
                        {/foreach}
                        </select>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="chanadmingroup" class="col-lg-2 control-label">{$lang['chanadmingroup']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_default_channeladmingroup']) AND empty($permoverview['b_virtualserver_modify_default_channeladmingroup'])}
                        -
                    {else}
                        <select class="form-control" name="newsettings[virtualserver_default_channel_admin_group]">
                        {foreach key=key item=value from=$channelgroups}
                            {if $value['type'] == 1}
                                <option {if $value['cgid'] == $serverinfo['virtualserver_default_channel_admin_group']}selected="selected"{/if} value="{$value['cgid']}">{$value['cgid']} {$value['name']}</option>
                            {/if}
                        {/foreach}
                        </select>
                    {/if}
                </div>
            </div>
            <hr>
            <h3>{$lang['host']}</h3>
            <hr>
            <div class="form-group">
                <label for="hostmessage" class="col-lg-2 control-label">{$lang['hostmessage']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_hostmessage']) AND empty($permoverview['b_virtualserver_modify_hostmessage'])}
                        -
                    {else}
                        <textarea class="text-area" name="newsettings[virtualserver_hostmessage]" rows="5" style="width:100%;">{$serverinfo['virtualserver_hostmessage']}</textarea>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="hostmessageshow" class="col-lg-2 control-label">{$lang['hostmessageshow']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_hostmessage']) AND empty($permoverview['b_virtualserver_modify_hostmessage'])}
                        -
                    {else}
                    <select class="form-control" name="newsettings[virtualserver_hostmessage_mode]">
                        <option value="0" {if $serverinfo['virtualserver_hostmessage_mode'] == 0}selected='selected'{/if}>{$lang['nomessage']}</option>
                        <option value="1" {if $serverinfo['virtualserver_hostmessage_mode'] == 1}selected='selected'{/if}>{$lang['showmessagelog']}</option>
                        <option value="2" {if $serverinfo['virtualserver_hostmessage_mode'] == 2}selected='selected'{/if}>{$lang['showmodalmessage']}</option>
                        <option value="3" {if $serverinfo['virtualserver_hostmessage_mode'] == 3}selected='selected'{/if}>{$lang['modalandexit']}</option>
                    </select>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="hosturl" class="col-lg-2 control-label">{$lang['hosturl']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_hostbanner']) AND empty($permoverview['b_virtualserver_modify_hostbanner'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_hostbanner_url]" value="{$serverinfo['virtualserver_hostbanner_url']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="hostbannerurl" class="col-lg-2 control-label">{$lang['hostbannerurl']}</label>
                {if isset($permoverview['b_virtualserver_modify_hostbanner']) AND empty($permoverview['b_virtualserver_modify_hostbanner'])}
                    <div class="col-lg-10">
                            -
                    </div>
                {else}
                    <div class="col-lg-6">                        
                        <input class="form-control" type="text" name="newsettings[virtualserver_hostbanner_gfx_url]" value="{$serverinfo['virtualserver_hostbanner_gfx_url']}" />
                    </div>
                    {if $serverinfo['virtualserver_hostbanner_gfx_url']!=''}
                        <div class="col-lg-4">
                            <img style="width:350px" src="{$serverinfo['virtualserver_hostbanner_gfx_url']}" alt="" /><br />
                        </div>
                    {/if}
                {/if}
            </div>
            <div class="form-group">
                <label for="hostbannerintval" class="col-lg-2 control-label">{$lang['hostbannerintval']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_hostbanner']) AND empty($permoverview['b_virtualserver_modify_hostbanner'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_hostbanner_gfx_interval]" value="{$serverinfo['virtualserver_hostbanner_gfx_interval']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="hostbuttontooltip" class="col-lg-2 control-label">{$lang['hostbuttontooltip']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_hostbutton']) AND empty($permoverview['b_virtualserver_modify_hostbutton'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_hostbutton_tooltip]" value="{$serverinfo['virtualserver_hostbutton_tooltip']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="hostbuttongfx" class="col-lg-2 control-label">{$lang['hostbuttongfx']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_hostbutton']) AND empty($permoverview['b_virtualserver_modify_hostbutton'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_hostbutton_gfx_url]" value="{$serverinfo['virtualserver_hostbutton_gfx_url']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="hostbuttonurl" class="col-lg-2 control-label">{$lang['hostbuttonurl']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_hostbutton']) AND empty($permoverview['b_virtualserver_modify_hostbutton'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_hostbutton_url]" value="{$serverinfo['virtualserver_hostbutton_url']}" />
                    {/if}
                </div>
            </div>
            <hr>
            <h3>{$lang['autoban']}</h3>
            <hr>
            <div class="form-group">
                <label for="autobancount" class="col-lg-2 control-label">{$lang['autobancount']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_complain']) AND empty($permoverview['b_virtualserver_modify_complain'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_complain_autoban_count]" value="{$serverinfo['virtualserver_complain_autoban_count']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="autobantime" class="col-lg-2 control-label">{$lang['autobantime']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_complain']) AND empty($permoverview['b_virtualserver_modify_complain'])}
                        -
                    {else}
                    <div class="input-group">
                        <input class="form-control" type="text" name="newsettings[virtualserver_complain_autoban_time]" value="{$serverinfo['virtualserver_complain_autoban_time']}" />
                        <span class="input-group-addon" id="basic-addon2">{$lang['seconds']}</span>
                    </div>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="removetime" class="col-lg-2 control-label">{$lang['removetime']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_complain']) AND empty($permoverview['b_virtualserver_modify_complain'])}
                        -
                    {else}
                    <div class="input-group">
                        <input class="form-control" type="text" name="newsettings[virtualserver_complain_remove_time]" value="{$serverinfo['virtualserver_complain_remove_time']}" />
                        <span class="input-group-addon" id="basic-addon2">{$lang['seconds']}</span>
                    </div>
                    {/if}
                </div>
            </div>
            <hr>
            <h3>{$lang['antiflood']}</h3>
            <hr>
            <div class="form-group">
                <label for="pointstickreduce" class="col-lg-2 control-label">{$lang['pointstickreduce']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_antiflood']) AND empty($permoverview['b_virtualserver_modify_antiflood'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_antiflood_points_tick_reduce]" value="{$serverinfo['virtualserver_antiflood_points_tick_reduce']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="pointsneededblockcmd" class="col-lg-2 control-label">{$lang['pointsneededblockcmd']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_antiflood']) AND empty($permoverview['b_virtualserver_modify_antiflood'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_antiflood_points_needed_command_block]" value="{$serverinfo['virtualserver_antiflood_points_needed_command_block']}" />
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="pointsneededblockip" class="col-lg-2 control-label">{$lang['pointsneededblockip']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_antiflood']) AND empty($permoverview['b_virtualserver_modify_antiflood'])}
                        -
                    {else}
                        <input class="form-control" type="text" name="newsettings[virtualserver_antiflood_points_needed_ip_block]" value="{$serverinfo['virtualserver_antiflood_points_needed_ip_block']}" />
                    {/if}
                </div>
            </div>
            <hr>
            <h3>{$lang['transfers']}</h3>
            <hr>
            <div class="form-group">
                <label for="upbandlimit" class="col-lg-2 control-label">{$lang['upbandlimit']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_ft_settings']) AND empty($permoverview['b_virtualserver_modify_ft_settings'])}
                        -
                    {else}
                    <div class="input-group">
                        <input class="form-control" type="text" name="newsettings[virtualserver_max_upload_total_bandwidth]" value="{$serverinfo['virtualserver_max_upload_total_bandwidth']}" />
                        <span class="input-group-addon" id="basic-addon2">byte/s</span>
                    </div>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="uploadquota" class="col-lg-2 control-label">{$lang['uploadquota']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_ft_quotas']) AND empty($permoverview['b_virtualserver_modify_ft_quotas'])}
                        -
                    {else}
                    <div class="input-group">
                        <input class="form-control" type="text" name="newsettings[virtualserver_upload_quota]" value="{$serverinfo['virtualserver_upload_quota']}" />
                        <span class="input-group-addon" id="basic-addon2">MiB</span>
                    </div>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="downbandlimit" class="col-lg-2 control-label">{$lang['downbandlimit']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_ft_settings']) AND empty($permoverview['b_virtualserver_modify_ft_settings'])}
                        -
                    {else}
                    <div class="input-group">
                        <input class="form-control" type="text" name="newsettings[virtualserver_max_download_total_bandwidth]" value="{$serverinfo['virtualserver_max_download_total_bandwidth']}" />
                        <span class="input-group-addon" id="basic-addon2">byte/s</span>
                    </div>
                    {/if}
                </div>
            </div>
            <div class="form-group">
                <label for="downloadquota" class="col-lg-2 control-label">{$lang['downloadquota']}</label>
                <div class="col-lg-10">
                    {if isset($permoverview['b_virtualserver_modify_ft_quotas']) AND empty($permoverview['b_virtualserver_modify_ft_quotas'])}
                        -
                    {else}
                    <div class="input-group">
                        <input class="form-control" type="text" name="newsettings[virtualserver_download_quota]" value="{$serverinfo['virtualserver_download_quota']}" />
                        <span class="input-group-addon" id="basic-addon2">MiB</span>
                    </div>
                    {/if}
                </div>
            </div>
            <hr>
            <h3>{$lang['logs']}</h3>
            <hr>
            <div class="form-group">
                <label for="logclient" class="col-lg-2 control-label">{$lang['logclient']}</label>
                <div class="col-lg-10">
                    <select class="form-control" name="newsettings[virtualserver_log_client]">
                        <option value="1" {if $serverinfo['virtualserver_log_client'] == 1}selected="selected"{/if}>{$lang['yes']}</option>
                        <option value="0" {if $serverinfo['virtualserver_log_client'] == 0}selected="selected"{/if}>{$lang['no']}</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="logquery" class="col-lg-2 control-label">{$lang['logquery']}</label>
                <div class="col-lg-10">
                    <select class="form-control" name="newsettings[virtualserver_log_query]">
                        <option value="1" {if $serverinfo['virtualserver_log_query'] == 1}selected="selected"{/if}>{$lang['yes']}</option>
                        <option value="0" {if $serverinfo['virtualserver_log_query'] == 0}selected="selected"{/if}>{$lang['no']}</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="logchannel" class="col-lg-2 control-label">{$lang['logchannel']}</label>
                <div class="col-lg-10">
                    <select class="form-control" name="newsettings[virtualserver_log_channel]">
                        <option value="1" {if $serverinfo['virtualserver_log_channel'] == 1}selected="selected"{/if}>{$lang['yes']}</option>
                        <option value="0" {if $serverinfo['virtualserver_log_channel'] == 0}selected="selected"{/if}>{$lang['no']}</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="logpermissions" class="col-lg-2 control-label">{$lang['logpermissions']}</label>
                <div class="col-lg-10">
                    <select class="form-control" name="newsettings[virtualserver_log_permissions]">
                        <option value="1" {if $serverinfo['virtualserver_log_permissions'] == 1}selected="selected"{/if}>{$lang['yes']}</option>
                        <option value="0" {if $serverinfo['virtualserver_log_permissions'] == 0}selected="selected"{/if}>{$lang['no']}</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="logserver" class="col-lg-2 control-label">{$lang['logserver']}</label>
                <div class="col-lg-10">
                    <select class="form-control" name="newsettings[virtualserver_log_server]">
                        <option value="1" {if $serverinfo['virtualserver_log_server'] == 1}selected="selected"{/if}>{$lang['yes']}</option>
                        <option value="0" {if $serverinfo['virtualserver_log_server'] == 0}selected="selected"{/if}>{$lang['no']}</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="logfiletransfer" class="col-lg-2 control-label">{$lang['logfiletransfer']}</label>
                <div class="col-lg-10">
                    <select class="form-control" name="newsettings[virtualserver_log_filetransfer]">
                        <option value="1" {if $serverinfo['virtualserver_log_filetransfer'] == 1}selected="selected"{/if}>{$lang['yes']}</option>
                        <option value="0" {if $serverinfo['virtualserver_log_filetransfer'] == 0}selected="selected"{/if}>{$lang['no']}</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="create" class="col-lg-2 control-label">{$lang['option']}</label>
                <div class="col-lg-10">
                    <input class="btn btn-primary btn-sm" type="submit" name="editserver" value="{$lang['edit']}" />
                </div>
            </div>
        </form>
        </div>
    </div>
</div>
