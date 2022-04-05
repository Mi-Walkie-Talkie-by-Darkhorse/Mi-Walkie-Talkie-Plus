.class public Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# instance fields
.field private q:Lcom/just/agentweb/AgentWeb;

.field private r:I

.field private final s:Ljava/lang/String;

.field private t:Lcom/just/agentweb/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->s:Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->t:Lcom/just/agentweb/WebChromeClient;

    return-void
.end method

.method private A()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/ui/activity/i0;->a:Lcom/ifengyu/intercom/ui/activity/i0;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/c0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/c0;-><init>(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    const v3, 0x7f11009c

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method private static a(Landroid/content/Context;IZ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "key_support_quit"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->v()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()V

    return-void
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f110388

    invoke-static {p1, v2}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object p1, Lcom/ifengyu/intercom/ui/activity/f0;->a:Lcom/ifengyu/intercom/ui/activity/f0;

    const v2, 0x7f11009c

    invoke-virtual {v0, v3, v2, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f1200fc

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private w()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/e0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/e0;-><init>(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    const v2, 0x7f110093

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/h0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/h0;-><init>(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    const v2, 0x7f110144

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private x()V
    .locals 6

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    const v1, 0x7f110387

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_1
    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->r:I

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v2, :cond_e

    if-eq v2, v3, :cond_b

    const/4 v5, 0x4

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-eq v2, v5, :cond_5

    const v5, 0x8f03

    if-eq v2, v5, :cond_2

    move-object v2, v4

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "a_p_lite_en.pdf"

    goto :goto_1

    :cond_3
    const-string v2, "a_p_lite_zh.pdf"

    :goto_1
    move-object v4, v2

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673aLite\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56-\u82f1\u6587.pdf"

    goto/16 :goto_6

    :cond_4
    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673aLite\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56.pdf"

    goto/16 :goto_6

    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "a_p_1s_en.pdf"

    goto :goto_2

    :cond_6
    const-string v2, "a_p_1s_zh.pdf"

    :goto_2
    move-object v4, v2

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673a1S\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56-\u82f1\u6587.pdf"

    goto :goto_6

    :cond_7
    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673a1S\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56.pdf"

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "a_p_mi2_en.pdf"

    goto :goto_3

    :cond_9
    const-string v2, "a_p_mi2_zh.pdf"

    :goto_3
    move-object v4, v2

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673a2\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56-\u82f1\u6587.pdf"

    goto :goto_6

    :cond_a
    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673a2\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56.pdf"

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "a_p_dlophin_en.pdf"

    goto :goto_4

    :cond_c
    const-string v2, "a_p_dlophin_zh.pdf"

    :goto_4
    move-object v4, v2

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673a\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56-\u82f1\u6587.pdf"

    goto :goto_6

    :cond_d
    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673a\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56.pdf"

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "a_p_en.pdf"

    goto :goto_5

    :cond_f
    const-string v2, "a_p_zh.pdf"

    :goto_5
    move-object v4, v2

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673aApp\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56-\u82f1\u6587.pdf"

    goto :goto_6

    :cond_10
    const-string v2, "\u5c0f\u7c73\u5bf9\u8bb2\u673aApp\u7528\u6237\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56.pdf"

    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://m.ifengyu.com/resources/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    invoke-direct {v4, v1, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v4, v3}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setFilename(Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method

.method private y()I
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const v1, 0x8f03

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v0, 0x7f1102a9

    return v0

    :cond_0
    const v0, 0x7f1102a7

    return v0
.end method

.method private z()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->r:I

    invoke-static {v0}, Lcom/ifengyu/intercom/f/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->r:I

    if-nez v1, :cond_0

    const-string v0, "app"

    :cond_0
    invoke-static {v0}, Lcom/ifengyu/intercom/i/l0;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->r:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const v2, 0x8f03

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/d0;->a(IZ)V

    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/d0;->a(IZ)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/q/d;->c(Ljava/lang/String;)V

    :cond_3
    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->c(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->p()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->x()V

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->z()V

    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->x()V

    return-void
.end method

.method public synthetic d(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/library/a/m;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 2

    const-string v0, "https://m.ifengyu.com/resources/a_p.html"

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const v1, 0x8f03

    if-eq p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "https://m.ifengyu.com/resources/en/a_p_dev_lite.html"

    goto :goto_0

    :cond_1
    const-string p1, "https://m.ifengyu.com/resources/a_p_dev_lite.html"

    :goto_0
    return-object p1

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "https://m.ifengyu.com/resources/en/a_p_dev_seal.html"

    goto :goto_1

    :cond_3
    const-string p1, "https://m.ifengyu.com/resources/a_p_dev_seal.html"

    :goto_1
    return-object p1

    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "https://m.ifengyu.com/resources/en/a_p_dev_shark.html"

    goto :goto_2

    :cond_5
    const-string p1, "https://m.ifengyu.com/resources/a_p_dev_shark.html"

    :goto_2
    return-object p1

    :cond_6
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "https://m.ifengyu.com/resources/en/a_p_dev_dolphin.html"

    goto :goto_3

    :cond_7
    const-string p1, "https://m.ifengyu.com/resources/a_p_dev_dolphin.html"

    :goto_3
    return-object p1

    :cond_8
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string v0, "https://m.ifengyu.com/resources/en/a_p.html"

    :cond_9
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->x()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->w()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->A()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a0 -> :sswitch_2
        0x7f090418 -> :sswitch_1
        0x7f090419 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->r:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_support_quit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09041d

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090418

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0904d2

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0900a0

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v5, 0x7f110386

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f110097

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget p1, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->r:I

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object v0

    const v1, 0x7f0600c3

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;->useDefaultIndicator(I)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->t:Lcom/just/agentweb/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebChromeClient(Lcom/just/agentweb/WebChromeClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->createAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->q:Lcom/just/agentweb/AgentWeb;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->q:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onDestroy()V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->q:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0, p1, p2}, Lcom/just/agentweb/AgentWeb;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->q:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onPause()V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f11002f

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110093

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/d0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/d0;-><init>(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110145

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/g0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/g0;-><init>(Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/ifengyu/intercom/i/l0;->b(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->x()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->q:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onResume()V

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    return-void
.end method
