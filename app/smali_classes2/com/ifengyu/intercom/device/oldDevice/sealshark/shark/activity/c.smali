.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->n0(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method