<div class="row">
    {if !empty($error)}
        <div class="alert alert-warning">
            <p>{$error}<p>
        </div>
    {/if}
    {if !empty($motd)}
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">{$lang['motd']}</h3>
                </div>
                <div class="panel-body">
                    {$motd}
                </div>
            </div>
        </div>
    {/if}
    {if !isset($smarty.post.sendlogin) AND $loginstatus !== true OR $loginstatus !== true}
        <div class="col-md-12">
            <div class="well well-lg">
                <form class="form-horizontal" role="form" method="post" action="index.php?site=login" id="login-form">
                    <div class="form-group">
                        <label for="server" class="col-lg-2 control-label">{$lang['server']}</label>
                        <div class="col-lg-10">
                            {if count($instances) == 1}
                                {foreach key=skey item=sdata from=$instances}
                                <input type="hidden" name="skey" value="{$skey}" />	{$sdata['alias']} 
                                {/foreach}
                            {else}
                            <select class="form-control" name="skey">
                                {foreach key=skey item=sdata from=$instances}
                                <option value="{$skey}">{$sdata['alias']}</option>	
                                {/foreach}
                            </select>
                            {/if}
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-lg-2 control-label">{$lang['username']}</label>
                        <div class="col-lg-10">
                            <input class="form-control" type="text" placeholder="serveradmin" name="loginUser" id="username" value="serveradmin" autocorrect="off" autocapitalize="off" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-lg-2 control-label">{$lang['password']}</label>
                        <div class="col-lg-10">
                            <input class="form-control" type="password" placeholder="Password" name="loginPw" id="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary btn-lg btn-block" id="login" name="sendlogin" type="submit">Login</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    {/if}
</div>