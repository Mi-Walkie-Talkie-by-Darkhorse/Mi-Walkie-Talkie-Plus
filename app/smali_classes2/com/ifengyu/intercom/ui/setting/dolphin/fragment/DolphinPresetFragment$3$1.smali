.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3$1;
.super Ljava/lang/Object;
.source "DolphinPresetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;->a()V

    :cond_0
    return-void
.end method
