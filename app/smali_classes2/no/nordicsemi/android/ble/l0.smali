.class public final synthetic Lno/nordicsemi/android/ble/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lno/nordicsemi/android/ble/w1$f;


# instance fields
.field private final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/l0;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lno/nordicsemi/android/ble/l0;->b:Ljava/lang/String;

    iput p3, p0, Lno/nordicsemi/android/ble/l0;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lno/nordicsemi/android/ble/v1;)V
    .locals 3

    iget-object v0, p0, Lno/nordicsemi/android/ble/l0;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lno/nordicsemi/android/ble/l0;->b:Ljava/lang/String;

    iget v2, p0, Lno/nordicsemi/android/ble/l0;->c:I

    invoke-static {v0, v1, v2, p1}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILno/nordicsemi/android/ble/v1;)V

    return-void
.end method
