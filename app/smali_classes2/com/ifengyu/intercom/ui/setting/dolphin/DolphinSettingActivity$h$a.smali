.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const v1, 0x7f110361

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 7
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
