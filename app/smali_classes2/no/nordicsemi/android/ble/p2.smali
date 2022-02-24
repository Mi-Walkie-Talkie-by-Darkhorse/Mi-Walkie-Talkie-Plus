.class public abstract Lno/nordicsemi/android/ble/p2;
.super Lno/nordicsemi/android/ble/Request;
.source "TimeoutableRequest.java"


# instance fields
.field private p:Ljava/lang/Runnable;

.field protected q:J


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
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/p2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/p2;

    move-result-object p1

    return-object p1
.end method

.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/p2;
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

.method public final a()V
    .locals 0

    .line 3
    invoke-super {p0}, Lno/nordicsemi/android/ble/Request;->a()V

    return-void
.end method

.method b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    iget-object v1, p0, Lno/nordicsemi/android/ble/p2;->p:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lno/nordicsemi/android/ble/p2;->p:Ljava/lang/Runnable;

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method c()V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    iget-object v1, p0, Lno/nordicsemi/android/ble/p2;->p:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lno/nordicsemi/android/ble/p2;->p:Ljava/lang/Runnable;

    .line 8
    :cond_0
    invoke-super {p0}, Lno/nordicsemi/android/ble/Request;->c()V

    return-void
.end method

.method c(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lno/nordicsemi/android/ble/p2;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    new-instance v0, Lno/nordicsemi/android/ble/k1;

    invoke-direct {v0, p0, p1}, Lno/nordicsemi/android/ble/k1;-><init>(Lno/nordicsemi/android/ble/p2;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/p2;->p:Ljava/lang/Runnable;

    .line 3
    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    iget-wide v2, p0, Lno/nordicsemi/android/ble/p2;->q:J

    invoke-interface {v1, v0, v2, v3}, Lno/nordicsemi/android/ble/z1;->postDelayed(Ljava/lang/Runnable;J)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->c(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method d(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    iget-object v1, p0, Lno/nordicsemi/android/ble/p2;->p:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lno/nordicsemi/android/ble/p2;->p:Ljava/lang/Runnable;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public synthetic f(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lno/nordicsemi/android/ble/p2;->p:Ljava/lang/Runnable;

    .line 2
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    if-nez v0, :cond_0

    const/4 v0, -0x5

    .line 3
    invoke-virtual {p0, p1, v0}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 4
    iget-object p1, p0, Lno/nordicsemi/android/ble/Request;->a:Lno/nordicsemi/android/ble/j2;

    invoke-virtual {p1, p0}, Lno/nordicsemi/android/ble/j2;->a(Lno/nordicsemi/android/ble/p2;)V

    :cond_0
    return-void
.end method
