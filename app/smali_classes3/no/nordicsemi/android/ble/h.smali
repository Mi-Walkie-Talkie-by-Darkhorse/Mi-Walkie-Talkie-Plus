.class public final synthetic Lno/nordicsemi/android/ble/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/BleManagerHandler$d;


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/h;->a:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final a(Lno/nordicsemi/android/ble/x2/a;)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler$b;->d(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/a;)V

    return-void
.end method