.class public final synthetic Lcom/ifengyu/intercom/device/lite/d/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/k;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/d/t;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/d/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/e;->a:Lcom/ifengyu/intercom/device/lite/d/t;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/e;->a:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->E(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
