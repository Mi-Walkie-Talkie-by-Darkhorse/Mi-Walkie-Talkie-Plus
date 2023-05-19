.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

.field public final synthetic b:Lcom/ifengyu/intercom/models/DeviceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/l;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/l;->b:Lcom/ifengyu/intercom/models/DeviceModel;

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/l;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/l;->b:Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->E0(Lcom/ifengyu/intercom/models/DeviceModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
