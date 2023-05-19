.class public abstract Lno/nordicsemi/android/ble/q2;
.super Lno/nordicsemi/android/ble/Request;
.source "TimeoutableRequest.java"


# instance fields
.field private q:Ljava/lang/Runnable;

.field protected r:J


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/Request;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-void
.end method

.method private synthetic n(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    .line 2
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    if-nez v0, :cond_0

    const/4 v0, -0x5

    .line 3
    invoke-virtual {p0, p1, v0}, Lno/nordicsemi/android/ble/q2;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 4
    iget-object p1, p0, Lno/nordicsemi/android/ble/Request;->a:Lno/nordicsemi/android/ble/k2;

    invoke-virtual {p1, p0}, Lno/nordicsemi/android/ble/k2;->c(Lno/nordicsemi/android/ble/q2;)V

    :cond_0
    return-void
.end method


# virtual methods
.method B(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method C()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    .line 4
    :cond_0
    invoke-super {p0}, Lno/nordicsemi/android/ble/Request;->C()V

    return-void
.end method

.method D(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lno/nordicsemi/android/ble/q2;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    new-instance v2, Lno/nordicsemi/android/ble/m1;

    invoke-direct {v2, p0, p1}, Lno/nordicsemi/android/ble/m1;-><init>(Lno/nordicsemi/android/ble/q2;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v2, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    .line 3
    iget-object v3, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    invoke-interface {v3, v2, v0, v1}, Lno/nordicsemi/android/ble/a2;->postDelayed(Ljava/lang/Runnable;J)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->D(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method E(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/q2;->I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/q2;

    move-result-object p1

    return-object p1
.end method

.method public synthetic H(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/q2;->n(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/q2;
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

.method public J(J)Lno/nordicsemi/android/ble/q2;
    .locals 1
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/q2;->q:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lno/nordicsemi/android/ble/q2;->r:J

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Request already started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 0

    .line 1
    invoke-super {p0}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method
