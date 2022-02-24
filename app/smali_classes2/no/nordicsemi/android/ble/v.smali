.class public final synthetic Lno/nordicsemi/android/ble/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/w1$c;

.field private final synthetic b:I

.field private final synthetic c:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/w1$c;ILandroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/v;->a:Lno/nordicsemi/android/ble/w1$c;

    iput p2, p0, Lno/nordicsemi/android/ble/v;->b:I

    iput-object p3, p0, Lno/nordicsemi/android/ble/v;->c:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/v;->a:Lno/nordicsemi/android/ble/w1$c;

    iget v1, p0, Lno/nordicsemi/android/ble/v;->b:I

    iget-object v2, p0, Lno/nordicsemi/android/ble/v;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/w1$c;->a(ILandroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
