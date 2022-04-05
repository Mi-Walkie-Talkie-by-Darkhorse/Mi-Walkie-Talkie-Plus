.class public final synthetic Lno/nordicsemi/android/ble/s1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/t2;

.field private final synthetic b:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/t2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/s1;->a:Lno/nordicsemi/android/ble/t2;

    iput-object p2, p0, Lno/nordicsemi/android/ble/s1;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/s1;->a:Lno/nordicsemi/android/ble/t2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/s1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/t2;->f(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
