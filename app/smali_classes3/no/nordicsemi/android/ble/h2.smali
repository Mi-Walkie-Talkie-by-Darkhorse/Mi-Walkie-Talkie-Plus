.class public final Lno/nordicsemi/android/ble/h2;
.super Lno/nordicsemi/android/ble/o2;
.source "PhyRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/g2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/o2<",
        "Lno/nordicsemi/android/ble/v2/h;",
        ">;",
        "Lno/nordicsemi/android/ble/g2;"
    }
.end annotation


# instance fields
.field private final r:I

.field private final s:I

.field private final t:I


# direct methods
.method private synthetic L(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/o2;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lno/nordicsemi/android/ble/v2/h;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, v1}, Lno/nordicsemi/android/ble/v2/h;->a(Landroid/bluetooth/BluetoothDevice;II)V

    :cond_0
    return-void
.end method

.method private synthetic N(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/o2;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lno/nordicsemi/android/ble/v2/h;

    invoke-interface {v0, p1, p2, p3}, Lno/nordicsemi/android/ble/v2/h;->a(Landroid/bluetooth/BluetoothDevice;II)V

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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/h2;->R(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/h2;

    return-object p0
.end method

.method I()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/h2;->t:I

    return v0
.end method

.method J()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/h2;->s:I

    return v0
.end method

.method K()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/h2;->r:I

    return v0
.end method

.method public synthetic M(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/h2;->L(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic O(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lno/nordicsemi/android/ble/h2;->N(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method P(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/d1;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/ble/d1;-><init>(Lno/nordicsemi/android/ble/h2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method Q(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/c1;

    invoke-direct {v1, p0, p1, p2, p3}, Lno/nordicsemi/android/ble/c1;-><init>(Lno/nordicsemi/android/ble/h2;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method R(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/h2;
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
