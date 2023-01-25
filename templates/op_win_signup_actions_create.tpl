<h2 class="my">活動設定</h2>

<form action="index.php" method="post" id="myForm" enctype="multipart/form-data" class="form-horizontal">

    <div class="form-group row">
        <label class="col-sm-2 control-label col-form-label text-md-right">
            活動標題
        </label>
        <div class="col-sm-10">
            <input type="text" name="title" id="title" class="form-control validate[required]" value="<{$title}>" placeholder="請輸入活動標題">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 control-label col-form-label text-md-right">
            活動說明
        </label>
        <div class="col-sm-10">
            <textarea name="detail" id="detail" class="form-control validate[required]" placeholder="請輸入活動說明"><{$detail}></textarea>
        </div>
    </div>

    <{$token_form}>
    <input type="hidden" name="op" value="<{$next_op}>">
    <div class="bar">
        <button type="submit" class="btn btn-primary">
            <i class="fa fa-save" aria-hidden="true"></i> <{$smarty.const._TAD_SAVE}>
        </button>
    </div>
</form>