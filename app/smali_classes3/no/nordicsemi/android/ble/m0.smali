.class public final synthetic Lno/nordicsemi/android/ble/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/BleManagerHandler$e;


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/m0;->a:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Lno/nordicsemi/android/ble/m0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lno/nordicsemi/android/ble/x1;)V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/m0;->a:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lno/nordicsemi/android/ble/m0;->b:I

    invoke-static {v0, v1, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->D1(Landroid/bluetooth/BluetoothDevice;ILno/nordicsemi/android/ble/x1;)V

    return-void
.end method
