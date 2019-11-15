.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->onParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->e(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;)V

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    iput-boolean v4, v0, Lcom/ifengyu/intercom/MiTalkiApp;->a:Z

    invoke-static {v4}, Lcom/ifengyu/intercom/b/w;->p(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->p:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
