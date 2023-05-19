.class public final synthetic Lno/nordicsemi/android/ble/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/h2;

.field public final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/h2;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/c1;->a:Lno/nordicsemi/android/ble/h2;

    iput-object p2, p0, Lno/nordicsemi/android/ble/c1;->b:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lno/nordicsemi/android/ble/c1;->c:I

    iput p4, p0, Lno/nordicsemi/android/ble/c1;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lno/nordicsemi/android/ble/c1;->a:Lno/nordicsemi/android/ble/h2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/c1;->b:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lno/nordicsemi/android/ble/c1;->c:I

    iget v3, p0, Lno/nordicsemi/android/ble/c1;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lno/nordicsemi/android/ble/h2;->O(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method
