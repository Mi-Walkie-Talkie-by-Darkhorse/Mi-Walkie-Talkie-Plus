.class public final synthetic Lno/nordicsemi/android/ble/z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/e2;

.field private final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/e2;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/z0;->a:Lno/nordicsemi/android/ble/e2;

    iput-object p2, p0, Lno/nordicsemi/android/ble/z0;->b:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lno/nordicsemi/android/ble/z0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/z0;->a:Lno/nordicsemi/android/ble/e2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/z0;->b:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lno/nordicsemi/android/ble/z0;->c:I

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/ble/e2;->c(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
