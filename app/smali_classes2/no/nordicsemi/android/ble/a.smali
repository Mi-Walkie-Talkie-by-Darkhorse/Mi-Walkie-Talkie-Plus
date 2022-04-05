.class public final synthetic Lno/nordicsemi/android/ble/a;
.super Ljava/lang/Object;

# interfaces
.implements Lno/nordicsemi/android/ble/u2/j;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/u1;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/a;->a:Lno/nordicsemi/android/ble/u1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/a;->a:Lno/nordicsemi/android/ble/u1;

    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/u1;->g(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
