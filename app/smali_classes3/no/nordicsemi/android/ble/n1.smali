.class public final synthetic Lno/nordicsemi/android/ble/n1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/s2;

.field public final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/s2;Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/n1;->a:Lno/nordicsemi/android/ble/s2;

    iput-object p2, p0, Lno/nordicsemi/android/ble/n1;->b:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lno/nordicsemi/android/ble/n1;->c:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/n1;->a:Lno/nordicsemi/android/ble/s2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/n1;->b:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lno/nordicsemi/android/ble/n1;->c:[B

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/s2;->d(Landroid/bluetooth/BluetoothDevice;[B)V

    return-void
.end method
