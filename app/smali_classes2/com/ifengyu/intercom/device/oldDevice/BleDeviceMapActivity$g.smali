.class Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$g;
.super Lcom/ifengyu/library/b/e/a;
.source "BleDeviceMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->X(Lcom/ifengyu/intercom/models/DeviceModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/models/DeviceModel;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$g;->a:Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$g;->a:Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->F(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;I)V

    return-void
.end method
