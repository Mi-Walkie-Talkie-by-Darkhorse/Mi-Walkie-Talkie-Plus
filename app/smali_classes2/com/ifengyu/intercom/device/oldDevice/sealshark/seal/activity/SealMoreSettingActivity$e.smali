.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;
.super Ljava/lang/Object;
.source "SealMoreSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    const/4 v1, 0x0

    const v2, 0x7f110318

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08018e

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->D(ZZLjava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;I)I

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$e;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/i/x0;->x1(I)V

    :goto_0
    return-void
.end method