.class public final synthetic Lno/nordicsemi/android/ble/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/BleManagerHandler$f;


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/g0;->a:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final a(Lno/nordicsemi/android/ble/x2/b;)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/g0;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->e1(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/b;)V

    return-void
.end method
