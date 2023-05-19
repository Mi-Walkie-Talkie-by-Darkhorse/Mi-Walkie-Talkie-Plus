.class public final synthetic Lcom/ifengyu/intercom/device/lite/e/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/e/l;

.field public final synthetic b:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/e/l;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/f;->a:Lcom/ifengyu/intercom/device/lite/e/l;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/lite/e/f;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/f;->a:Lcom/ifengyu/intercom/device/lite/e/l;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/e/f;->b:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->E(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    return-object p1
.end method
