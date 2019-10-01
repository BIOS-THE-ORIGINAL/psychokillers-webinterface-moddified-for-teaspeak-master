<div class="col-md-9 col-xs-12">
{if !isset($sid)}
	{if !isset($smarty.get.refresh) OR $smarty.get.refresh == on}
	<meta http-equiv="refresh" content="3; URL=index.php?site=servertraffic" />
	{/if}
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['instancetraffic']}</h3>
        </div>
        <table class="table" cellpadding="1" cellspacing="0">
            <thead>
                <tr>
                    <th style="width:33%">{$lang['description']}</th>
                    <th style="width:33%">{$lang['incoming']}</th>
                    <th style="width:33%">{$lang['outgoing']}</th>
                </tr>
            </thead>
            <tr>
                <td>{$lang['packetstransfered']}</td>
                <td>{$hostinfo['connection_packets_received_total']}</td>
                <td>{$hostinfo['connection_packets_sent_total']}</td>
            </tr>
            <tr>
                <td>{$lang['bytestransfered']}</td>
                <td>{$hostinfo['connection_bytes_received_total']}</td>
                <td>{$hostinfo['connection_bytes_sent_total']}</td>
            </tr>
            <tr>
                <td>{$lang['bandwidthlastsecond']}</td>
                <td>{$hostinfo['connection_bandwidth_received_last_second_total']} /s</td>
                <td>{$hostinfo['connection_bandwidth_sent_last_second_total']} /s</td>
            </tr>
            <tr>
                <td>{$lang['bandwidthlastminute']}</td>
                <td>{$hostinfo['connection_bandwidth_received_last_minute_total']} /s</td>
                <td>{$hostinfo['connection_bandwidth_sent_last_minute_total']} /s</td>
            </tr>
            <tr>
                <td>{$lang['filetransferbandwidth']}</td>
                <td>{$hostinfo['connection_filetransfer_bandwidth_received']} /s</td>
                <td>{$hostinfo['connection_filetransfer_bandwidth_sent']} /s</td>
            </tr>
            <tr>
                <td colspan="3">
                {if !isset($smarty.get.refresh) OR $smarty.get.refresh == on}
                    <a href="index.php?site=servertraffic&amp;refresh=off">{$lang['stoprefresh']}</a>
                {else}
                <a href="index.php?site=servertraffic&amp;refresh=on">{$lang['autorefresh']}</a>
                {/if}
                </td>
            </tr>
        </table>
    </div>
{else}
	{if isset($permoverview['b_virtualserver_info_view']) AND empty($permoverview['b_virtualserver_info_view'])}
        <div class="alert alert-warning">
            <p>{$lang['error']}: {$lang['nopermissions']}</p>
        </div>
	{else}
	{if !isset($smarty.get.refresh) OR $smarty.get.refresh == on}
		<meta http-equiv="refresh" content="3; URL=index.php?site=servertraffic&amp;sid={$sid}" />
	{/if}
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['virtualtraffic']}</h3>
        </div>
        <table class="table" cellpadding="1" cellspacing="0">
            <tr>
                <th style="width:33%">{$lang['description']}</th>
                <th style="width:33%">{$lang['incoming']}</th>
                <th style="width:33%">{$lang['outgoing']}</th>
            </tr>
            <tr>
                <td>{$lang['packetstransfered']}</td>
                <td>{$serverinfo['connection_packets_received_total']}</td>
                <td>{$serverinfo['connection_packets_sent_total']}</td>
            </tr>
            <tr>
                <td>{$lang['bytestransfered']}</td>
                <td>{$serverinfo['connection_bytes_received_total']}</td>
                <td>{$serverinfo['connection_bytes_sent_total']}</td>
            </tr>
            <tr>
                <td>{$lang['bandwidthlastsecond']}</td>
                <td>{$serverinfo['connection_bandwidth_received_last_second_total']} /s</td>
                <td>{$serverinfo['connection_bandwidth_sent_last_second_total']} /s</td>
            </tr>
            <tr>
                <td>{$lang['bandwidthlastminute']}</td>
                <td>{$serverinfo['connection_bandwidth_received_last_minute_total']} /s</td>
                <td>{$serverinfo['connection_bandwidth_sent_last_minute_total']} /s</td>
            </tr>
            <tr>
                <td>{$lang['filetransferbandwidth']}</td>
                <td>{$serverinfo['connection_filetransfer_bandwidth_received']} /s</td>
                <td>{$serverinfo['connection_filetransfer_bandwidth_sent']} /s</td>
            </tr>
            <tr>
                <td colspan="3">
                {if !isset($smarty.get.refresh) OR $smarty.get.refresh == on}
                <a href="index.php?site=servertraffic&amp;sid={$sid}&amp;refresh=off">{$lang['stoprefresh']}</a>
                {else}
                <a href="index.php?site=servertraffic&amp;sid={$sid}&amp;refresh=on">{$lang['autorefresh']}</a>
                {/if}
                </td>
            </tr>
        </table>
    </div>
{/if}
{/if}
</div>