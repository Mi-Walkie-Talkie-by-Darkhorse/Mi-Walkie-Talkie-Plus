.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->onParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->v(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    const v1, 0x7f110025

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
