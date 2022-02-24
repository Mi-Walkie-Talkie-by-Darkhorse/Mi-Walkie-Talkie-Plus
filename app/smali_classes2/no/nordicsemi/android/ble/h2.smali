.class public final Lno/nordicsemi/android/ble/h2;
.super Lno/nordicsemi/android/ble/n2;
.source "ReadRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/n2<",
        "Lno/nordicsemi/android/ble/u2/b;",
        ">;",
        "Lno/nordicsemi/android/ble/f2;"
    }
.end annotation


# instance fields
.field private q:Lno/nordicsemi/android/ble/u2/h;

.field private r:Lno/nordicsemi/android/ble/data/b;

.field private s:Lno/nordicsemi/android/ble/data/d;

.field private t:Lno/nordicsemi/android/ble/data/a;

.field private u:I


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/n2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lno/nordicsemi/android/ble/h2;->u:I

    return-void
.end method

.method static synthetic a(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    .line 5
    invoke-interface {p0, p1, p2}, Lno/nordicsemi/android/ble/u2/b;->a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    return-void
.end method

.method static synthetic b(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    .line 13
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

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/h2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/h2;

    return-object p0
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/h2;
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

.method public a(Lno/nordicsemi/android/ble/u2/b;)Lno/nordicsemi/android/ble/h2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/n2;->a(Ljava/lang/Object;)Lno/nordicsemi/android/ble/n2;

    return-object p0
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 2

    .line 6
    iget-object v0, p0, Lno/nordicsemi/android/ble/h2;->q:Lno/nordicsemi/android/ble/u2/h;

    if-eqz v0, :cond_0

    .line 7
    iget v1, p0, Lno/nordicsemi/android/ble/h2;->u:I

    invoke-interface {v0, p1, p2, v1}, Lno/nordicsemi/android/ble/u2/h;->a(Landroid/bluetooth/BluetoothDevice;[BI)V

    :cond_0
    return-void
.end method

.method a([B)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lno/nordicsemi/android/ble/h2;->t:Lno/nordicsemi/android/ble/data/a;

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

.method b(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/n2;->p:Ljava/lang/Object;

    check-cast v0, Lno/nordicsemi/android/ble/u2/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/h2;->r:Lno/nordicsemi/android/ble/data/b;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lno/nordicsemi/android/ble/data/Data;

    invoke-direct {v1, p2}, Lno/nordicsemi/android/ble/data/Data;-><init>([B)V

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/c1;

    invoke-direct {v2, v0, p1, v1}, Lno/nordicsemi/android/ble/c1;-><init>(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    invoke-interface {p2, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/e1;

    invoke-direct {v2, p0, p1, p2}, Lno/nordicsemi/android/ble/e1;-><init>(Lno/nordicsemi/android/ble/h2;Landroid/bluetooth/BluetoothDevice;[B)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lno/nordicsemi/android/ble/h2;->s:Lno/nordicsemi/android/ble/data/d;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lno/nordicsemi/android/ble/data/d;

    invoke-direct {v1}, Lno/nordicsemi/android/ble/data/d;-><init>()V

    iput-object v1, p0, Lno/nordicsemi/android/ble/h2;->s:Lno/nordicsemi/android/ble/data/d;

    .line 8
    :cond_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/h2;->r:Lno/nordicsemi/android/ble/data/b;

    iget-object v2, p0, Lno/nordicsemi/android/ble/h2;->s:Lno/nordicsemi/android/ble/data/d;

    iget v3, p0, Lno/nordicsemi/android/ble/h2;->u:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lno/nordicsemi/android/ble/h2;->u:I

    invoke-interface {v1, v2, p2, v3}, Lno/nordicsemi/android/ble/data/b;->a(Lno/nordicsemi/android/ble/data/d;[BI)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/h2;->s:Lno/nordicsemi/android/ble/data/d;

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/d;->b()Lno/nordicsemi/android/ble/data/Data;

    move-result-object p2

    .line 10
    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/d1;

    invoke-direct {v2, v0, p1, p2}, Lno/nordicsemi/android/ble/d1;-><init>(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lno/nordicsemi/android/ble/h2;->s:Lno/nordicsemi/android/ble/data/d;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lno/nordicsemi/android/ble/h2;->u:I

    :cond_3
    :goto_0
    return-void
.end method

.method h()Z
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/h2;->u:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
