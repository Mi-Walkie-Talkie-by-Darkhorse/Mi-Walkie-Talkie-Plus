.class Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const v2, 0x7f090235

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
