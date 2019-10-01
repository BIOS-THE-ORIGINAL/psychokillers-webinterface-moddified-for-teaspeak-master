{if isset($permoverview['b_virtualserver_client_list']) AND empty($permoverview['b_virtualserver_client_list']) OR isset($permoverview['b_virtualserver_client_dblist']) AND empty($permoverview['b_virtualserver_client_dblist'])}
	<div class="col-md-9 col-xs-12">
        <div class="alert alert-warning">
            <p>{$lang['error']}: {$lang['nopermissions']}</p>
        </div>
    </div>
{else}
<div class="col-md-9 col-xs-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">{$lang['clientcounter']}</h3>
        </div>
        <table class="table" cellpadding="1" cellspacing="0">
            <thead>
                <tr>
                    <th style="width:50%">{$lang['total']}</th>
                    <th style="width:50%">{$totalclients} {$lang['clients']}</th>
                </tr>
            </thead>
            <tr>
                <td class="green2">{$lang['online']}</td>
                <td class="green2">
                <img src="templates/new/gfx/images/stats.png"  height="10" width="{$perc_online}" alt="" />
                {$count_online} {$lang['clients']} | {$perc_online}%
                </td>
            </tr>
            <tr>
                <td class="green1">{$lang['today']}</td>
                <td class="green1">
                <img src="templates/new/gfx/images/stats.png"  height="10" width="{$perc_today}" alt="" />
                {$count_today} {$lang['clients']} | {$perc_today}%
                </td>
            </tr>
            <tr>
                <td class="green2">{$lang['thisweek']}</td>
                <td class="green2">
                <img src="templates/new/gfx/images/stats.png"  height="10" width="{$perc_week}" alt="" />
                {$count_week} {$lang['clients']} | {$perc_week}%
                </td>
            </tr>
            <tr>
                <td class="green1">{$lang['thismonth']}</td>
                <td class="green1">
                <img src="templates/new/gfx/images/stats.png"  height="10" width="{$perc_month}" alt="" />
                {$count_month} {$lang['clients']} | {$perc_month}%
                </td>
            </tr>
        </table>
    </div>
</div>
{/if}