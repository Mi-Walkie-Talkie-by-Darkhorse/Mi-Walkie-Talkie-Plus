.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->receiveParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v0

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v0

    const v1, 0x7f110027

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;)Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
