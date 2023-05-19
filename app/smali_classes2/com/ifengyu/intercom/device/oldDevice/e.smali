.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/ifengyu/intercom/models/DeviceModel;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Ljava/lang/String;Lcom/ifengyu/intercom/models/DeviceModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/e;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/e;->c:Lcom/ifengyu/intercom/models/DeviceModel;

    iput p4, p0, Lcom/ifengyu/intercom/device/oldDevice/e;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/e;->a:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/e;->c:Lcom/ifengyu/intercom/models/DeviceModel;

    iget v3, p0, Lcom/ifengyu/intercom/device/oldDevice/e;->d:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->I0(Ljava/lang/String;Lcom/ifengyu/intercom/models/DeviceModel;ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
