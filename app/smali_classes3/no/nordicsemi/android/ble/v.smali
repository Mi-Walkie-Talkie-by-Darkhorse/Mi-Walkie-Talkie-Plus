.class public final synthetic Lno/nordicsemi/android/ble/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/BleManagerHandler$e;


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothGatt;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/v;->a:Landroid/bluetooth/BluetoothGatt;

    iput p2, p0, Lno/nordicsemi/android/ble/v;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lno/nordicsemi/android/ble/x1;)V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/v;->a:Landroid/bluetooth/BluetoothGatt;

    iget v1, p0, Lno/nordicsemi/android/ble/v;->b:I

    invoke-static {v0, v1, p1}, Lno/nordicsemi/android/ble/BleManagerHandler$3;->n(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V

    return-void
.end method
