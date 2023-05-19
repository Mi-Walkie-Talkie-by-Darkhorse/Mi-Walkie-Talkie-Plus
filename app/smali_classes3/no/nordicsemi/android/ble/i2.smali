.class public final Lno/nordicsemi/android/ble/i2;
.super Lno/nordicsemi/android/ble/o2;
.source "ReadRequest.java"

# interfaces
.implements Lno/nordicsemi/android/ble/g2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lno/nordicsemi/android/ble/o2<",
        "Lno/nordicsemi/android/ble/v2/c;",
        ">;",
        "Lno/nordicsemi/android/ble/g2;"
    }
.end annotation


# instance fields
.field private r:Lno/nordicsemi/android/ble/v2/i;

.field private s:Lno/nordicsemi/android/ble/data/b;

.field private t:Lno/nordicsemi/android/ble/data/d;

.field private u:Lno/nordicsemi/android/ble/data/a;

.field private v:I


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/o2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lno/nordicsemi/android/ble/i2;->v:I

    return-void
.end method

.method static synthetic J(Lno/nordicsemi/android/ble/v2/c;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lno/nordicsemi/android/ble/v2/c;->g(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    return-void
.end method

.method private synthetic K(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/i2;->r:Lno/nordicsemi/android/ble/v2/i;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lno/nordicsemi/android/ble/i2;->v:I

    invoke-interface {v0, p1, p2, v1}, Lno/nordicsemi/android/ble/v2/i;->a(Landroid/bluetooth/BluetoothDevice;[BI)V

    :cond_0
    return-void
.end method

.method static synthetic M(Lno/nordicsemi/android/ble/v2/c;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lno/nordicsemi/android/ble/v2/c;->g(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/i2;->P(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/i2;

    return-object p0
.end method

.method I()Z
    .locals 1

    .line 1
    iget v0, p0, Lno/nordicsemi/android/ble/i2;->v:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic L(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/i2;->K(Landroid/bluetooth/BluetoothDevice;[B)V

    return-void
.end method

.method N([B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/i2;->u:Lno/nordicsemi/android/ble/data/a;

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

.method O(Landroid/bluetooth/BluetoothDevice;[B)V
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
    iget-object v0, p0, Lno/nordicsemi/android/ble/o2;->q:Ljava/lang/Object;

    check-cast v0, Lno/nordicsemi/android/ble/v2/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/i2;->s:Lno/nordicsemi/android/ble/data/b;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lno/nordicsemi/android/ble/data/Data;

    invoke-direct {v1, p2}, Lno/nordicsemi/android/ble/data/Data;-><init>([B)V

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v2, Lno/nordicsemi/android/ble/g1;

    invoke-direct {v2, v0, p1, v1}, Lno/nordicsemi/android/ble/g1;-><init>(Lno/nordicsemi/android/ble/v2/c;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    invoke-interface {p2, v2}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v2, Lno/nordicsemi/android/ble/e1;

    invoke-direct {v2, p0, p1, p2}, Lno/nordicsemi/android/ble/e1;-><init>(Lno/nordicsemi/android/ble/i2;Landroid/bluetooth/BluetoothDevice;[B)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lno/nordicsemi/android/ble/i2;->t:Lno/nordicsemi/android/ble/data/d;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lno/nordicsemi/android/ble/data/d;

    invoke-direct {v1}, Lno/nordicsemi/android/ble/data/d;-><init>()V

    iput-object v1, p0, Lno/nordicsemi/android/ble/i2;->t:Lno/nordicsemi/android/ble/data/d;

    .line 8
    :cond_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/i2;->s:Lno/nordicsemi/android/ble/data/b;

    iget-object v2, p0, Lno/nordicsemi/android/ble/i2;->t:Lno/nordicsemi/android/ble/data/d;

    iget v3, p0, Lno/nordicsemi/android/ble/i2;->v:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lno/nordicsemi/android/ble/i2;->v:I

    invoke-interface {v1, v2, p2, v3}, Lno/nordicsemi/android/ble/data/b;->a(Lno/nordicsemi/android/ble/data/d;[BI)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/i2;->t:Lno/nordicsemi/android/ble/data/d;

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/d;->b()Lno/nordicsemi/android/ble/data/Data;

    move-result-object p2

    .line 10
    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v2, Lno/nordicsemi/android/ble/f1;

    invoke-direct {v2, v0, p1, p2}, Lno/nordicsemi/android/ble/f1;-><init>(Lno/nordicsemi/android/ble/v2/c;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lno/nordicsemi/android/ble/i2;->t:Lno/nordicsemi/android/ble/data/d;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lno/nordicsemi/android/ble/i2;->v:I

    :cond_3
    :goto_0
    return-void
.end method

.method P(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/i2;
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

.method public Q(Lno/nordicsemi/android/ble/v2/c;)Lno/nordicsemi/android/ble/i2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/o2;->H(Ljava/lang/Object;)Lno/nordicsemi/android/ble/o2;

    return-object p0
.end method
