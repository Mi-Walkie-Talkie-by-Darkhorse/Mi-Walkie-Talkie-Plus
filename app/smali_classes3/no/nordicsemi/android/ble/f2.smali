.class public final Lno/nordicsemi/android/ble/f2;
.super Lno/nordicsemi/android/ble/o2;
.source "MtuRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/g2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/o2<",
        "Lno/nordicsemi/android/ble/v2/g;",
        ">;",
        "Lno/nordicsemi/android/ble/g2;"
    }
.end annotation


# instance fields
.field private final r:I


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;I)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/o2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    const/16 p1, 0x17

    if-ge p2, p1, :cond_0

    const/16 p2, 0x17

    :cond_0
    const/16 p1, 0x205

    if-le p2, p1, :cond_1

    const/16 p2, 0x205

    .line 2
    :cond_1
    iput p2, p0, Lno/nordicsemi/android/ble/f2;->r:I

    return-void
.end method

.method private synthetic K(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/o2;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lno/nordicsemi/android/ble/v2/g;

    invoke-interface {v0, p1, p2}, Lno/nordicsemi/android/ble/v2/g;->a(Landroid/bluetooth/BluetoothDevice;I)V

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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/f2;->N(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/f2;

    return-object p0
.end method

.method public I(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/f2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->g(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method J()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/f2;->r:I

    return v0
.end method

.method public synthetic L(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/f2;->K(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method M(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/b1;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/ble/b1;-><init>(Lno/nordicsemi/android/ble/f2;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method N(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/f2;
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

.method public O(Lno/nordicsemi/android/ble/v2/g;)Lno/nordicsemi/android/ble/f2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/o2;->H(Ljava/lang/Object;)Lno/nordicsemi/android/ble/o2;

    return-object p0
.end method
