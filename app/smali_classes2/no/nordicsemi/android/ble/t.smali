.class public final synthetic Lno/nordicsemi/android/ble/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/w1$c;

.field private final synthetic b:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/w1$c;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/t;->a:Lno/nordicsemi/android/ble/w1$c;

    iput-object p2, p0, Lno/nordicsemi/android/ble/t;->b:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/t;->a:Lno/nordicsemi/android/ble/w1$c;

    iget-object v1, p0, Lno/nordicsemi/android/ble/t;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/w1$c;->a(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
