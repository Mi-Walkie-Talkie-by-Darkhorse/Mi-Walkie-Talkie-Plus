.class public final synthetic Lno/nordicsemi/android/ble/s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/w1;

.field private final synthetic b:Lno/nordicsemi/android/ble/Request;

.field private final synthetic c:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/s0;->a:Lno/nordicsemi/android/ble/w1;

    iput-object p2, p0, Lno/nordicsemi/android/ble/s0;->b:Lno/nordicsemi/android/ble/Request;

    iput-object p3, p0, Lno/nordicsemi/android/ble/s0;->c:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/s0;->a:Lno/nordicsemi/android/ble/w1;

    iget-object v1, p0, Lno/nordicsemi/android/ble/s0;->b:Lno/nordicsemi/android/ble/Request;

    iget-object v2, p0, Lno/nordicsemi/android/ble/s0;->c:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
