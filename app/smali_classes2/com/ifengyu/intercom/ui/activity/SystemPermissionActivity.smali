.class public Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;


# instance fields
.field cameraValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b5
    .end annotation
.end field

.field locationValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090242
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090432
    .end annotation
.end field

.field notifyValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902e3
    .end annotation
.end field

.field storageValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dd
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0054

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f110318

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/b0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/b0;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090240,
            0x7f0903db,
            0x7f0900b3,
            0x7f0902e1,
            0x7f090241,
            0x7f0903dc,
            0x7f0900b4,
            0x7f0902e2
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f110322

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://m.ifengyu.com/resources/storageAuthHelp.html"

    invoke-static {p0, p1, v0}, Lcom/ifengyu/intercom/lite/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://m.ifengyu.com/resources/notifaAuthHelp.html"

    invoke-static {p0, p1, v0}, Lcom/ifengyu/intercom/lite/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://m.ifengyu.com/resources/locationAndroidAuthHelp.html"

    invoke-static {p0, p1, v0}, Lcom/ifengyu/intercom/lite/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/library/a/m;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://m.ifengyu.com/resources/camareAuthHelp.html"

    invoke-static {p0, p1, v0}, Lcom/ifengyu/intercom/lite/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900b3 -> :sswitch_4
        0x7f0900b4 -> :sswitch_3
        0x7f090240 -> :sswitch_2
        0x7f090241 -> :sswitch_3
        0x7f0902e1 -> :sswitch_1
        0x7f0902e2 -> :sswitch_3
        0x7f0903db -> :sswitch_0
        0x7f0903dc -> :sswitch_3
    .end sparse-switch
.end method
