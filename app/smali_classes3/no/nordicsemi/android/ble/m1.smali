.class public final synthetic Lno/nordicsemi/android/ble/m1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/q2;

.field public final synthetic b:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/q2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/m1;->a:Lno/nordicsemi/android/ble/q2;

    iput-object p2, p0, Lno/nordicsemi/android/ble/m1;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/m1;->a:Lno/nordicsemi/android/ble/q2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/m1;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/q2;->H(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method