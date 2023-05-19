.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c$a;
.super Ljava/lang/Object;
.source "DolphinPresetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;->f2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;->f2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->h:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;->f2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->h:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;->a()V

    :cond_0
    return-void
.end method
