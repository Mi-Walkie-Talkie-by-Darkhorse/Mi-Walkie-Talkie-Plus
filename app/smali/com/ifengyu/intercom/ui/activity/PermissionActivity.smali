.class public Lcom/ifengyu/intercom/ui/activity/PermissionActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "PermissionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    const v0, 0x7f0400ad

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/PermissionActivity;->setContentView(I)V

    const v0, 0x7f10029d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/PermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/PermissionActivity;->c()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/ifengyu/intercom/b/z;->a(Landroid/content/Context;I[Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {p0}, Lcom/ifengyu/intercom/b/z;->a(Landroid/content/Context;)V

    return-void
.end method
