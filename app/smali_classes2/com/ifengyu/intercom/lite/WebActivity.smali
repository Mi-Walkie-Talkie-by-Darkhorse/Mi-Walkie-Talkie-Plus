.class public Lcom/ifengyu/intercom/lite/WebActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;
.source "WebActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_title"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_url"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-class p1, Lcom/ifengyu/intercom/lite/WebActivity;

    const-class p2, Lcom/ifengyu/intercom/lite/fragment/LiteWebFragment;

    invoke-static {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    const v0, 0x7f09022a

    return v0
.end method