.class public final synthetic Lno/nordicsemi/android/ble/q1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/u2/b;

.field private final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field private final synthetic c:Lno/nordicsemi/android/ble/data/Data;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/q1;->a:Lno/nordicsemi/android/ble/u2/b;

    iput-object p2, p0, Lno/nordicsemi/android/ble/q1;->b:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lno/nordicsemi/android/ble/q1;->c:Lno/nordicsemi/android/ble/data/Data;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/q1;->a:Lno/nordicsemi/android/ble/u2/b;

    iget-object v1, p0, Lno/nordicsemi/android/ble/q1;->b:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lno/nordicsemi/android/ble/q1;->c:Lno/nordicsemi/android/ble/data/Data;

    invoke-static {v0, v1, v2}, Lno/nordicsemi/android/ble/s2;->b(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    return-void
.end method
