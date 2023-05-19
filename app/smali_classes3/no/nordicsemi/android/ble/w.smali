.class public final synthetic Lno/nordicsemi/android/ble/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/BleManagerHandler$3;

.field public final synthetic b:I

.field public final synthetic c:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/BleManagerHandler$3;ILandroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/w;->a:Lno/nordicsemi/android/ble/BleManagerHandler$3;

    iput p2, p0, Lno/nordicsemi/android/ble/w;->b:I

    iput-object p3, p0, Lno/nordicsemi/android/ble/w;->c:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/w;->a:Lno/nordicsemi/android/ble/BleManagerHandler$3;

    iget v1, p0, Lno/nordicsemi/android/ble/w;->b:I

    iget-object v2, p0, Lno/nordicsemi/android/ble/w;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler$3;->f(ILandroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
