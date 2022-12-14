<?php
// 如「模組目錄」= signup，則「首字大寫模組目錄」= Signup
// 如「資料表名」= actions，則「模組物件」= Actions
use Xmf\Request;
use XoopsModules\Tadtools\Utility;
use XoopsModules\Win_singup\Win_singup_actions;

/*-----------引入檔案區--------------*/
require_once __DIR__ . '/header.php';
$GLOBALS['xoopsOption']['template_main'] = 'win_signup_index.tpl';
require_once XOOPS_ROOT_PATH . '/header.php';

/*-----------變數過濾----------*/
$op = Request::getString('op');
$id = Request::getInt('id');

/*-----------執行動作判斷區----------*/
switch ($op) {

    //新增表單
    case 'win_singup_actions_create':
        Win_singup_actions::create();
        break;

    //新增資料
    case 'win_singup_actions_store':
        $id = Win_singup_actions::store();
        header("location: {$_SERVER['PHP_SELF']}?id=$id");
        exit;

    //修改用表單
    case 'win_singup_actions_edit':
        Win_singup_actions::create($id);
        $op = 'win_singup_actions_create';
        break;

    //更新資料
    case 'win_singup_actions_update':
        Win_singup_actions::update($id);
        header("location: {$_SERVER['PHP_SELF']}?id=$id");
        exit;

    //刪除資料
    case 'win_singup_actions_destroy':
        Win_singup_actions::destroy($id);
        header("location: {$_SERVER['PHP_SELF']}");
        exit;

    default:
        if (empty($id)) {
            Win_singup_actions::index();
            $op = 'win_singup_actions_index';
        } else {
            Win_singup_actions::show($id);
            $op = 'win_singup_actions_show';
        }
        break;
}

/*-----------function區--------------*/

/*-----------秀出結果區--------------*/
unset($_SESSION['api_mode']);
$xoopsTpl->assign('toolbar', Utility::toolbar_bootstrap($interface_menu));
$xoopsTpl->assign('now_op', $op);
$xoTheme->addStylesheet(XOOPS_URL . '/modules/win_singup/css/module.css');
require_once XOOPS_ROOT_PATH . '/footer.php';
