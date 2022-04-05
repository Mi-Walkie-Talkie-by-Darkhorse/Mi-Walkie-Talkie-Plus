.class public final Lno/nordicsemi/android/ble/e2;
.super Lno/nordicsemi/android/ble/n2;

# interfaces
.implements Lno/nordicsemi/android/ble/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/n2<",
        "Lno/nordicsemi/android/ble/u2/f;",
        ">;",
        "Lno/nordicsemi/android/ble/f2;"
    }
.end annotation


# instance fields
.field private final q:I


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

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/n2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    const/16 p1, 0x17

    if-ge p2, p1, :cond_0

    const/16 p2, 0x17

    :cond_0
    const/16 p1, 0x205

    if-le p2, p1, :cond_1

    const/16 p2, 0x205

    :cond_1
    iput p2, p0, Lno/nordicsemi/android/ble/e2;->q:I

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/e2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/e2;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/e2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/e2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/Request;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/f;)Lno/nordicsemi/android/ble/e2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/n2;->a(Ljava/lang/Object;)Lno/nordicsemi/android/ble/n2;

    return-object p0
.end method

.method public synthetic c(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/n2;->p:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lno/nordicsemi/android/ble/u2/f;

    invoke-interface {v0, p1, p2}, Lno/nordicsemi/android/ble/u2/f;->a(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    return-void
.end method

.method d(Landroid/bluetooth/BluetoothDevice;I)V
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

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v1, Lno/nordicsemi/android/ble/z0;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/ble/z0;-><init>(Lno/nordicsemi/android/ble/e2;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method h()I
    .locals 1

    iget v0, p0, Lno/nordicsemi/android/ble/e2;->q:I

    return v0
.end method
