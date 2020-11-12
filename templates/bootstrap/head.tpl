<main id="panel" class=" slideout-panel">
<nav class="navbar navbar-default header" id="header-menu" component="navbar">
<div class="container">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.php">
            <img alt="Logo" class="page-logo" src="templates/bootstrap/gfx/images/logo.png">
			<span id="dw__title">Psychokiller's Webinterface Modified For Teaspeak</span>
        </a>
    </div>
    <div id="nav-dropdown" class="hidden-xs">
        <ul class="nav navbar-nav navbar-right">
            {if $loginstatus === true}
                <li><a>Logged in as: {$smarty.session.loginuser}</a></li>
                <li><a href="index.php?site=logout">{$lang['logout']}</a></li>
            {/if}
        </ul>
        <ul class="nav navbar-nav navbar-right">
            {if $fastswitch == true AND $hoststatus === true}
                <li><form method="get" action="index.php?site=serverview">
                    {if strpos($site, 'edit') == false OR $site == serveredit}
                    <input type="hidden" name="site" value="{$site}" />
                    {else}
                    <input type="hidden" name="site" value="serverview" />
                    {/if}
                    <select class="form-control" name="sid" onchange="submit()">
                    {foreach key=key item=server from=$serverlist}
                        {if $sid == $server['virtualserver_id']}
                            <option selected="selected" value="{$server['virtualserver_id']}">{$server['virtualserver_name']}-{$server['virtualserver_port']}</option>
                        {else}
                            <option value="{$server['virtualserver_id']}">{$server['virtualserver_name']}-{$server['virtualserver_port']}</option>
                        {/if}
                    {/foreach}
                    </select>
                </form></li>
            {/if}
        </ul>
    </div>
</div>
</nav>
