.class public final Lno/nordicsemi/android/ble/s2;
.super Lno/nordicsemi/android/ble/t1;

# interfaces
.implements Lno/nordicsemi/android/ble/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/t1<",
        "Lno/nordicsemi/android/ble/u2/b;",
        ">;",
        "Lno/nordicsemi/android/ble/f2;"
    }
.end annotation


# instance fields
.field private u:Lno/nordicsemi/android/ble/u2/h;

.field private v:Lno/nordicsemi/android/ble/data/b;

.field private w:Lno/nordicsemi/android/ble/data/d;

.field private x:Lno/nordicsemi/android/ble/data/a;

.field private y:I


# direct methods
.method static synthetic a(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lno/nordicsemi/android/ble/u2/b;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    return-void
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lno/nordicsemi/android/ble/u2/b;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

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

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/s2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/s2;

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

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/s2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/s2;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/s2;
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

.method a(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 5

    iget-object v0, p0, Lno/nordicsemi/android/ble/q2;->r:Ljava/lang/Object;

    check-cast v0, Lno/nordicsemi/android/ble/u2/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/s2;->v:Lno/nordicsemi/android/ble/data/b;

    if-nez v1, :cond_1

    new-instance v1, Lno/nordicsemi/android/ble/data/Data;

    invoke-direct {v1, p2}, Lno/nordicsemi/android/ble/data/Data;-><init>([B)V

    iget-object p2, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/p1;

    invoke-direct {v2, v0, p1, v1}, Lno/nordicsemi/android/ble/p1;-><init>(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    invoke-interface {p2, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lno/nordicsemi/android/ble/s2;->y:I

    iget-object v2, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v3, Lno/nordicsemi/android/ble/o1;

    invoke-direct {v3, p0, p1, p2, v1}, Lno/nordicsemi/android/ble/o1;-><init>(Lno/nordicsemi/android/ble/s2;Landroid/bluetooth/BluetoothDevice;[BI)V

    invoke-interface {v2, v3}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lno/nordicsemi/android/ble/s2;->w:Lno/nordicsemi/android/ble/data/d;

    if-nez v1, :cond_2

    new-instance v1, Lno/nordicsemi/android/ble/data/d;

    invoke-direct {v1}, Lno/nordicsemi/android/ble/data/d;-><init>()V

    iput-object v1, p0, Lno/nordicsemi/android/ble/s2;->w:Lno/nordicsemi/android/ble/data/d;

    :cond_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/s2;->v:Lno/nordicsemi/android/ble/data/b;

    iget-object v2, p0, Lno/nordicsemi/android/ble/s2;->w:Lno/nordicsemi/android/ble/data/d;

    iget v3, p0, Lno/nordicsemi/android/ble/s2;->y:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lno/nordicsemi/android/ble/s2;->y:I

    invoke-interface {v1, v2, p2, v3}, Lno/nordicsemi/android/ble/data/b;->a(Lno/nordicsemi/android/ble/data/d;[BI)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lno/nordicsemi/android/ble/s2;->w:Lno/nordicsemi/android/ble/data/d;

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/d;->b()Lno/nordicsemi/android/ble/data/Data;

    move-result-object p2

    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/q1;

    invoke-direct {v2, v0, p1, p2}, Lno/nordicsemi/android/ble/q1;-><init>(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lno/nordicsemi/android/ble/s2;->w:Lno/nordicsemi/android/ble/data/d;

    const/4 p1, 0x0

    iput p1, p0, Lno/nordicsemi/android/ble/s2;->y:I

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/s2;->u:Lno/nordicsemi/android/ble/u2/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lno/nordicsemi/android/ble/u2/h;->a(Landroid/bluetooth/BluetoothDevice;[BI)V

    :cond_0
    return-void
.end method

.method a([B)Z
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/s2;->x:Lno/nordicsemi/android/ble/data/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lno/nordicsemi/android/ble/data/a;->a([B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method k()Z
    .locals 1

    iget v0, p0, Lno/nordicsemi/android/ble/s2;->y:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
