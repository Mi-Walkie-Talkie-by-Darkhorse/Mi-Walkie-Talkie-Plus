.class public final synthetic Lno/nordicsemi/android/ble/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/t2;

.field public final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/t2;Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/s1;->a:Lno/nordicsemi/android/ble/t2;

    iput-object p2, p0, Lno/nordicsemi/android/ble/s1;->b:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lno/nordicsemi/android/ble/s1;->c:[B

    iput p4, p0, Lno/nordicsemi/android/ble/s1;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lno/nordicsemi/android/ble/s1;->a:Lno/nordicsemi/android/ble/t2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/s1;->b:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lno/nordicsemi/android/ble/s1;->c:[B

    iget v3, p0, Lno/nordicsemi/android/ble/s1;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lno/nordicsemi/android/ble/t2;->Q(Landroid/bluetooth/BluetoothDevice;[BI)V

    return-void
.end method
