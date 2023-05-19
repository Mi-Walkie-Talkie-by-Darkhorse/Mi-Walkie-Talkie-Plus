.class public final Lno/nordicsemi/android/ble/j2;
.super Lno/nordicsemi/android/ble/o2;
.source "ReadRssiRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/g2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/o2<",
        "Lno/nordicsemi/android/ble/v2/j;",
        ">;",
        "Lno/nordicsemi/android/ble/g2;"
    }
.end annotation


# direct methods
.method private synthetic I(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/o2;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lno/nordicsemi/android/ble/v2/j;

    invoke-interface {v0, p1, p2}, Lno/nordicsemi/android/ble/v2/j;->a(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/j2;->L(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/j2;

    return-object p0
.end method

.method public synthetic J(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/j2;->I(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method K(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x80L
            to = 0x14L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/h1;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/ble/h1;-><init>(Lno/nordicsemi/android/ble/j2;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method L(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/j2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method
