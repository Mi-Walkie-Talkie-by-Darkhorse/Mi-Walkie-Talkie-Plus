.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$10;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$10;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$10;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$10;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$10;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    return-void
.end method
