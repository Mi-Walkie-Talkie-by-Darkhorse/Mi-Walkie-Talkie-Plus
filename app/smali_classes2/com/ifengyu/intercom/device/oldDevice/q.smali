.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

.field public final synthetic b:Lcom/ifengyu/intercom/models/DeviceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/q;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/q;->b:Lcom/ifengyu/intercom/models/DeviceModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/q;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/q;->b:Lcom/ifengyu/intercom/models/DeviceModel;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->o0(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method
