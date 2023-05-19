.class public final synthetic Lcom/ifengyu/intercom/device/lite/e/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/e/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/h;->a:Lcom/ifengyu/intercom/device/lite/e/l;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/h;->a:Lcom/ifengyu/intercom/device/lite/e/l;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->z(Landroid/bluetooth/BluetoothDevice;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
