.class public Lno/nordicsemi/android/ble/c2;
.super Lno/nordicsemi/android/ble/q2;
.source "ConnectRequest.java"


# instance fields
.field private final s:Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t:I

.field private u:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field private v:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field private w:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field private x:Z


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/q2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lno/nordicsemi/android/ble/c2;->u:I

    iput p1, p0, Lno/nordicsemi/android/ble/c2;->v:I

    .line 3
    iput p1, p0, Lno/nordicsemi/android/ble/c2;->w:I

    .line 4
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/c2;->x:Z

    .line 5
    iput-object p2, p0, Lno/nordicsemi/android/ble/c2;->s:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lno/nordicsemi/android/ble/c2;->t:I

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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/c2;->R(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/c2;

    return-object p0
.end method

.method bridge synthetic I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/q2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/c2;->R(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/c2;

    return-object p0
.end method

.method K()Z
    .locals 2

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/c2;->v:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lno/nordicsemi/android/ble/c2;->v:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public L(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/c2;
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

.method public M()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/c2;->s:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method N()I
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/c2;->t:I

    return v0
.end method

.method O()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/c2;->w:I

    return v0
.end method

.method P()Z
    .locals 2

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/c2;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lno/nordicsemi/android/ble/c2;->u:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q(II)Lno/nordicsemi/android/ble/c2;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lno/nordicsemi/android/ble/c2;->v:I

    .line 2
    iput p2, p0, Lno/nordicsemi/android/ble/c2;->w:I

    return-object p0
.end method

.method R(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/c2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/q2;->I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/q2;

    return-object p0
.end method

.method S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/c2;->x:Z

    return v0
.end method

.method public T(J)Lno/nordicsemi/android/ble/c2;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lno/nordicsemi/android/ble/q2;->J(J)Lno/nordicsemi/android/ble/q2;

    return-object p0
.end method

.method public U(Z)Lno/nordicsemi/android/ble/c2;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lno/nordicsemi/android/ble/c2;->x:Z

    return-object p0
.end method
