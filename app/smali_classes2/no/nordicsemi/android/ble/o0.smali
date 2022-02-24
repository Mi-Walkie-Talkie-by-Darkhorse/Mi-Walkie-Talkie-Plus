.class public final synthetic Lno/nordicsemi/android/ble/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/u2/b;


# instance fields
.field private final synthetic a:Lno/nordicsemi/android/ble/w1;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/w1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/o0;->a:Lno/nordicsemi/android/ble/w1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/o0;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {v0, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    return-void
.end method
