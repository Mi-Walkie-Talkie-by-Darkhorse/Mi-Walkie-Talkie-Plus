.class public final synthetic Lno/nordicsemi/android/ble/f1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/i2;

.field private final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/i2;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/f1;->a:Lno/nordicsemi/android/ble/i2;

    iput-object p2, p0, Lno/nordicsemi/android/ble/f1;->b:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lno/nordicsemi/android/ble/f1;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/f1;->a:Lno/nordicsemi/android/ble/i2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/f1;->b:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lno/nordicsemi/android/ble/f1;->c:I

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/i2;->c(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
