.class public final Lno/nordicsemi/android/ble/g2;
.super Lno/nordicsemi/android/ble/n2;
.source "PhyRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/n2<",
        "Lno/nordicsemi/android/ble/u2/g;",
        ">;",
        "Lno/nordicsemi/android/ble/f2;"
    }
.end annotation


# instance fields
.field private final q:I

.field private final r:I

.field private final s:I


# virtual methods
.method bridge synthetic a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/g2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/g2;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/g2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/n2;->p:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lno/nordicsemi/android/ble/u2/g;

    invoke-interface {v0, p1, p2, p3}, Lno/nordicsemi/android/ble/u2/g;->a(Landroid/bluetooth/BluetoothDevice;II)V

    :cond_0
    return-void
.end method

.method b(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v1, Lno/nordicsemi/android/ble/b1;

    invoke-direct {v1, p0, p1, p2, p3}, Lno/nordicsemi/android/ble/b1;-><init>(Lno/nordicsemi/android/ble/g2;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic f(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/n2;->p:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lno/nordicsemi/android/ble/u2/g;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, v1}, Lno/nordicsemi/android/ble/u2/g;->a(Landroid/bluetooth/BluetoothDevice;II)V

    :cond_0
    return-void
.end method

.method g(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v1, Lno/nordicsemi/android/ble/a1;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/ble/a1;-><init>(Lno/nordicsemi/android/ble/g2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method h()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/g2;->s:I

    return v0
.end method

.method i()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/g2;->r:I

    return v0
.end method

.method j()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/g2;->q:I

    return v0
.end method
