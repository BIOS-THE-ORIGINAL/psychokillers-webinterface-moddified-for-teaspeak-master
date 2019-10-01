{if !empty($error)}
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
            <h3 class="panel-title">{$lang['permexport']}</h3>
        </div>
        <div class="panel-body">
            <p>{$lang['permexdesc']}</p>
            <form method="post" action="index.php?site=permexport&amp;sid={$sid}">
            <table  class="border" cellpadding="1" cellspacing="0">
                <tr>
                    <td>{$lang['sourcetype']}</td>
                    <td>
                    <select name="sourcemode">
                    <option value="1">{$lang['servergroup']}</option>
                    <option value="2">{$lang['channelgroup']}</option>
                    <option value="3">{$lang['channel']}</option>
                    <option value="4">{$lang['client']}</option>
                    </select> 
                    </td>
                </tr>
                <tr>
                    <td>{$lang['sourceid']}</td>
                    <td><input type="text" name="sourceid" value="" /></td>
                </tr>
                <tr>
                    <td>{$lang['targettype']}</td>
                    <td>
                    <select name="targetmode">
                    <option value="1">{$lang['servergroup']}</option>
                    <option value="2">{$lang['channelgroup']}</option>
                    <option value="3">{$lang['channel']}</option>
                    <option value="4">{$lang['client']}</option>
                    </select> 
                    </td>
                </tr>
                <tr>
                    <td>{$lang['targetid']}</td>
                    <td><input type="text" name="targetid" value="" /></td>
                </tr>
                <tr>
                    <td>{$lang['option']}</td>
                    <td>
                    <input class="button" type="submit" name="showcommands" value="{$lang['view']}" />
                    </td>
                </tr>
                {if isset($smarty.post.showcommands) AND empty($error)}
                    <tr>
                        <td colspan="2">
                        <textarea name="showfield" cols="50" rows="10" readonly="readonly">{$permexport}</textarea>
                        </td>
                    </tr>
                {/if}
            </table>
            </form>
        </div>
    </div>
</div>