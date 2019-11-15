.class Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;
.super Ljava/lang/Object;
.source "SealMoreSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 5

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const v4, 0x7f090187

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020128

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    invoke-static {p2}, Lcom/ifengyu/intercom/b/aa;->e(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
