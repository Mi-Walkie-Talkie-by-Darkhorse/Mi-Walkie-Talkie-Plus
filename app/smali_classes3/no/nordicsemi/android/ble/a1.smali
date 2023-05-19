.class public final synthetic Lno/nordicsemi/android/ble/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/e;


# instance fields
.field public final synthetic a:Lno/nordicsemi/android/ble/l2;


# direct methods
.method public synthetic constructor <init>(Lno/nordicsemi/android/ble/l2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/a1;->a:Lno/nordicsemi/android/ble/l2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/a1;->a:Lno/nordicsemi/android/ble/l2;

    invoke-virtual {v0, p1, p2}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
