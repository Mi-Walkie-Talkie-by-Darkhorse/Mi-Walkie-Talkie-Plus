.class Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->receiveParamUpdateEvent(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field final synthetic b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasLowPower()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getLowPower()Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->PROHIBITEUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    const v1, 0x7f110369

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->e(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionMCU()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$b;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getVersionBLE()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;II)V

    :goto_0
    return-void
.end method
