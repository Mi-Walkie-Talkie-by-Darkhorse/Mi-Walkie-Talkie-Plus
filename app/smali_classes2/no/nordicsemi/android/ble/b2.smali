.class public Lno/nordicsemi/android/ble/b2;
.super Lno/nordicsemi/android/ble/p2;


# instance fields
.field private r:Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private s:I

.field private t:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

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

.field private w:Z


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

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/p2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    const/4 p1, 0x0

    iput p1, p0, Lno/nordicsemi/android/ble/b2;->t:I

    iput p1, p0, Lno/nordicsemi/android/ble/b2;->u:I

    iput p1, p0, Lno/nordicsemi/android/ble/b2;->v:I

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/b2;->w:Z

    iput-object p2, p0, Lno/nordicsemi/android/ble/b2;->r:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x1

    iput p1, p0, Lno/nordicsemi/android/ble/b2;->s:I

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

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/b2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/b2;

    return-object p0
.end method

.method public a(II)Lno/nordicsemi/android/ble/b2;
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

    iput p1, p0, Lno/nordicsemi/android/ble/b2;->u:I

    iput p2, p0, Lno/nordicsemi/android/ble/b2;->v:I

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/b2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/p2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/p2;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/b2;
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

.method public a(Z)Lno/nordicsemi/android/ble/b2;
    .locals 0

    iput-boolean p1, p0, Lno/nordicsemi/android/ble/b2;->w:Z

    return-object p0
.end method

.method bridge synthetic a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/p2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/b2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/b2;

    return-object p0
.end method

.method h()Z
    .locals 2

    iget v0, p0, Lno/nordicsemi/android/ble/b2;->u:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lno/nordicsemi/android/ble/b2;->u:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/b2;->r:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method j()I
    .locals 1

    iget v0, p0, Lno/nordicsemi/android/ble/b2;->s:I

    return v0
.end method

.method k()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget v0, p0, Lno/nordicsemi/android/ble/b2;->v:I

    return v0
.end method

.method l()Z
    .locals 2

    iget v0, p0, Lno/nordicsemi/android/ble/b2;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lno/nordicsemi/android/ble/b2;->t:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m()Z
    .locals 1

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/b2;->w:Z

    return v0
.end method
