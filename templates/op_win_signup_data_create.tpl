<h2 class="my">報名表</h2>

<form action="index.php" method="post" id="myForm" enctype="multipart/form-data" class="form-horizontal">

    <{$token_form}>
    <input type="hidden" name="op" value="<{$next_op}>">
    <input type="hidden" name="id" value="<{$id}>">
    <input type="hidden" name="action_id" value="<{$action_id}>">
    <input type="hidden" name="uid" value="<{$uid}>">
    <div class="bar">
        <button type="submit" class="btn btn-primary">
            <i class="fa fa-save" aria-hidden="true"></i> <{$smarty.const._TAD_SAVE}>
        </button>
    </div>
</form>