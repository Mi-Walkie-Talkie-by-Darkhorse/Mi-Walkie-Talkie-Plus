.class Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const v2, 0x7f090234

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/a/d;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/a/a;->b(Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->g()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->f(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->dismiss()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
