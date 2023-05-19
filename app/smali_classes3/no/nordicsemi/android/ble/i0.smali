.class public final synthetic Lno/nordicsemi/android/ble/i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/BleManagerHandler;

.field public final synthetic b:Lno/nordicsemi/android/ble/p2;

.field public final synthetic c:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/p2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/i0;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    iput-object p2, p0, Lno/nordicsemi/android/ble/i0;->b:Lno/nordicsemi/android/ble/p2;

    iput-object p3, p0, Lno/nordicsemi/android/ble/i0;->c:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/i0;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    iget-object v1, p0, Lno/nordicsemi/android/ble/i0;->b:Lno/nordicsemi/android/ble/p2;

    iget-object v2, p0, Lno/nordicsemi/android/ble/i0;->c:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->s1(Lno/nordicsemi/android/ble/p2;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
