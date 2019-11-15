.class Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const v3, 0x7f090187

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I

    invoke-static {p2}, Lcom/ifengyu/intercom/b/aa;->a(I)V

    :cond_1
    return-void
.end method
