.class public final synthetic Lno/nordicsemi/android/ble/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/w1$f;


# instance fields
.field private final synthetic a:Landroid/bluetooth/BluetoothGatt;

.field private final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/k;->a:Landroid/bluetooth/BluetoothGatt;

    iput-boolean p2, p0, Lno/nordicsemi/android/ble/k;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lno/nordicsemi/android/ble/v1;)V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/k;->a:Landroid/bluetooth/BluetoothGatt;

    iget-boolean v1, p0, Lno/nordicsemi/android/ble/k;->b:Z

    invoke-static {v0, v1, p1}, Lno/nordicsemi/android/ble/w1$c;->a(Landroid/bluetooth/BluetoothGatt;ZLno/nordicsemi/android/ble/v1;)V

    return-void
.end method
