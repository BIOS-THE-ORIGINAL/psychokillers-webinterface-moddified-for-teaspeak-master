{if $loginstatus === true AND $site !==login}
<div class="col-md-3 col-xs-12">
    <div class="panel panel-default">
        <div class="panel-body">
            <ul class="nav nav-pills nav-stacked">
                {if $hoststatus === true}
                    <li role="presentation"><a href="index.php?site=server">{$lang['serverlist']}</a></li>
                {/if}
                {if !isset($sid) AND $hoststatus === true}
                    <li role="presentation"><a href="index.php?site=createserver">{$lang['createserver']}</a></li>
                    <li role="presentation"><a href="index.php?site=servertraffic">{$lang['instancetraffic']}</a></li>
                    <li role="presentation"><a href="index.php?site=instanceedit">{$lang['instanceedit']}</a></li>
                    <li role="presentation"><a href="index.php?site=logview">{$lang['logview']}</a></li>
                    <li role="presentation"><a href="index.php?site=iserverbackup">{$lang['instancebackup']}</a></li>
                {/if}
                {if isset($sid)}
                    <li role="presentation"><a href="index.php?site=serverview&amp;sid={$sid}">{$lang['serverview']}</a></li>
                    <li role="presentation"><a href="index.php?site=servertraffic&amp;sid={$sid}">{$lang['virtualtraffic']}</a></li>
                    <li role="presentation"><a href="index.php?site=serveredit&amp;sid={$sid}">{$lang['serveredit']}</a></li>
                    <li role="presentation"><a href="index.php?site=temppw&amp;sid={$sid}">{$lang['temppw']}</a></li>
                    <li role="presentation"><a href="index.php?site=fileupload&amp;sid={$sid}">{$lang['iconupload']}</a></li>
                    <li role="presentation"><a href="index.php?site=logview&amp;sid={$sid}">{$lang['logview']}</a></li>
                    <li role="presentation"><a href="index.php?site=filelist&amp;sid={$sid}">{$lang['filelist']}</a></li>				
                    <li role="presentation"><a href="javascript:oeffnefenster('site/interactive.php?sid={$sid}&amp;action=action');">{$lang['massaction']}</a></li>
                    <li role="presentation" class="disabled">{$lang['channel']}</li>
                    <li role="presentation"><a href="index.php?site=channel&amp;sid={$sid}">{$lang['channellist']}</a></li>
                    <li role="presentation"><a href="index.php?site=createchannel&amp;sid={$sid}">{$lang['createchannel']}</a></li>
                    {if isset($cid)}
                        <li role="presentation"><a href="index.php?site=channelview&amp;sid={$sid}&amp;cid={$cid}">{$lang['channelview']}</a></li>
                        <li role="presentation"><a href="index.php?site=channeledit&amp;sid={$sid}&amp;cid={$cid}">{$lang['channeledit']}</a></li>
                    {/if}
                    <li role="presentation" class="disabled">{$lang['clients']}</li>
                    <li role="presentation"><a href="index.php?site=counter&amp;sid={$sid}">{$lang['clientcounter']}</a></li>
                    <li role="presentation"><a href="index.php?site=clients&amp;sid={$sid}">{$lang['clientlist']}</a></li>
                    <li role="presentation"><a href="index.php?site=complainlist&amp;sid={$sid}">{$lang['complainlist']}</a></li>
                    <li role="presentation"><a href="index.php?site=chanclienteditperm&amp;sid={$sid}">{$lang['chanclientperms']}</a></li>
                    <li role="presentation"><a href="index.php?site=clientcleaner&amp;sid={$sid}">{$lang['clientcleaner']}</a></li>		
                    
                    <li role="presentation" class="disabled">{$lang['bans']}</li>
                    <li role="presentation"><a href="index.php?site=banlist&amp;sid={$sid}">{$lang['banlist']}</a></li>
                    <li role="presentation"><a href="index.php?site=banadd&amp;sid={$sid}">{$lang['addban']}</a></li>
                    
                    <li role="presentation" class="disabled">{$lang['groups']}</li>
                    <li role="presentation"><a href="index.php?site=sgroups&amp;sid={$sid}">{$lang['servergroups']}</a></li>
                    <li role="presentation"><a href="index.php?site=sgroupadd&amp;sid={$sid}">{$lang['addservergroup']}</a></li>
                    <li role="presentation"><a href="index.php?site=cgroups&amp;sid={$sid}">{$lang['channelgroups']}</a></li>
                    <li role="presentation"><a href="index.php?site=cgroupadd&amp;sid={$sid}">{$lang['addchannelgroup']}</a></li>
                    
                    <li role="presentation" class="disabled">{$lang['token']}</li>
                    <li role="presentation"><a href="index.php?site=token&amp;sid={$sid}">{$lang['token']}</a></li>
                    
                    <li role="presentation" class="disabled">{$lang['backup']}</li>
                    <li role="presentation"><a href="index.php?site=backup&amp;sid={$sid}">{$lang['chanbackups']}</a></li>
                    <li role="presentation"><a href="index.php?site=serverbackup&amp;sid={$sid}">{$lang['serverbackups']}</a></li>
                    <li role="presentation"><a href="index.php?site=permexport&amp;sid={$sid}">{$lang['permexport']}</a></li>
                    <li role="presentation"><a href="index.php?site=clientsexport&amp;sid={$sid}">{$lang['clientsexport']}</a></li>
                    <li role="presentation"><a href="index.php?site=bansexport&amp;sid={$sid}">{$lang['bansexport']}</a></li>
                    
                    <li role="presentation" class="disabled">{$lang['console']}</li>
                    <li role="presentation"><a href="index.php?site=console&amp;sid={$sid}">{$lang['queryconsole']}</a></li>
                {/if}
            </ul>
        </div>
    </div>
</div>
{/if}