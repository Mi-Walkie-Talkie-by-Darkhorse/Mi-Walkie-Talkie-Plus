.class public final synthetic Lno/nordicsemi/android/ble/r;
.super Ljava/lang/Object;

# interfaces
.implements Lno/nordicsemi/android/ble/w1$f;


# instance fields
.field private final synthetic a:Landroid/bluetooth/BluetoothGatt;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/r;->a:Landroid/bluetooth/BluetoothGatt;

    iput p2, p0, Lno/nordicsemi/android/ble/r;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lno/nordicsemi/android/ble/v1;)V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/r;->a:Landroid/bluetooth/BluetoothGatt;

    iget v1, p0, Lno/nordicsemi/android/ble/r;->b:I

    invoke-static {v0, v1, p1}, Lno/nordicsemi/android/ble/w1$c;->a(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V

    return-void
.end method
