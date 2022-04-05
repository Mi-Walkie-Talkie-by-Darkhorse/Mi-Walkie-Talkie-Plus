.class public Lno/nordicsemi/android/ble/r2;
.super Ljava/lang/Object;


# instance fields
.field private a:Lno/nordicsemi/android/ble/u2/h;

.field private b:Lno/nordicsemi/android/ble/u2/b;

.field private c:Lno/nordicsemi/android/ble/data/b;

.field private d:Lno/nordicsemi/android/ble/data/d;

.field private e:Lno/nordicsemi/android/ble/data/a;

.field private f:Lno/nordicsemi/android/ble/z1;

.field private g:I


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/z1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lno/nordicsemi/android/ble/r2;->g:I

    iput-object p1, p0, Lno/nordicsemi/android/ble/r2;->f:Lno/nordicsemi/android/ble/z1;

    return-void
.end method

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
.method a()Lno/nordicsemi/android/ble/r2;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/ble/r2;->b:Lno/nordicsemi/android/ble/u2/b;

    iput-object v0, p0, Lno/nordicsemi/android/ble/r2;->c:Lno/nordicsemi/android/ble/data/b;

    iput-object v0, p0, Lno/nordicsemi/android/ble/r2;->a:Lno/nordicsemi/android/ble/u2/h;

    iput-object v0, p0, Lno/nordicsemi/android/ble/r2;->d:Lno/nordicsemi/android/ble/data/d;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/data/b;)Lno/nordicsemi/android/ble/r2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/data/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lno/nordicsemi/android/ble/r2;->c:Lno/nordicsemi/android/ble/data/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lno/nordicsemi/android/ble/r2;->a:Lno/nordicsemi/android/ble/u2/h;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/b;)Lno/nordicsemi/android/ble/r2;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lno/nordicsemi/android/ble/r2;->b:Lno/nordicsemi/android/ble/u2/b;

    return-object p0
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 2

    iget-object v0, p0, Lno/nordicsemi/android/ble/r2;->a:Lno/nordicsemi/android/ble/u2/h;

    if-eqz v0, :cond_0

    iget v1, p0, Lno/nordicsemi/android/ble/r2;->g:I

    invoke-interface {v0, p1, p2, v1}, Lno/nordicsemi/android/ble/u2/h;->a(Landroid/bluetooth/BluetoothDevice;[BI)V

    :cond_0
    return-void
.end method

.method a([B)Z
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/r2;->e:Lno/nordicsemi/android/ble/data/a;

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

    iget-object v0, p0, Lno/nordicsemi/android/ble/r2;->b:Lno/nordicsemi/android/ble/u2/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/r2;->c:Lno/nordicsemi/android/ble/data/b;

    if-nez v1, :cond_1

    new-instance v1, Lno/nordicsemi/android/ble/data/Data;

    invoke-direct {v1, p2}, Lno/nordicsemi/android/ble/data/Data;-><init>([B)V

    iget-object p2, p0, Lno/nordicsemi/android/ble/r2;->f:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/m1;

    invoke-direct {v2, v0, p1, v1}, Lno/nordicsemi/android/ble/m1;-><init>(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    invoke-interface {p2, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/r2;->f:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/n1;

    invoke-direct {v2, p0, p1, p2}, Lno/nordicsemi/android/ble/n1;-><init>(Lno/nordicsemi/android/ble/r2;Landroid/bluetooth/BluetoothDevice;[B)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lno/nordicsemi/android/ble/r2;->d:Lno/nordicsemi/android/ble/data/d;

    if-nez v1, :cond_2

    new-instance v1, Lno/nordicsemi/android/ble/data/d;

    invoke-direct {v1}, Lno/nordicsemi/android/ble/data/d;-><init>()V

    iput-object v1, p0, Lno/nordicsemi/android/ble/r2;->d:Lno/nordicsemi/android/ble/data/d;

    :cond_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/r2;->c:Lno/nordicsemi/android/ble/data/b;

    iget-object v2, p0, Lno/nordicsemi/android/ble/r2;->d:Lno/nordicsemi/android/ble/data/d;

    iget v3, p0, Lno/nordicsemi/android/ble/r2;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lno/nordicsemi/android/ble/r2;->g:I

    invoke-interface {v1, v2, p2, v3}, Lno/nordicsemi/android/ble/data/b;->a(Lno/nordicsemi/android/ble/data/d;[BI)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lno/nordicsemi/android/ble/r2;->d:Lno/nordicsemi/android/ble/data/d;

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/data/d;->b()Lno/nordicsemi/android/ble/data/Data;

    move-result-object p2

    iget-object v1, p0, Lno/nordicsemi/android/ble/r2;->f:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/l1;

    invoke-direct {v2, v0, p1, p2}, Lno/nordicsemi/android/ble/l1;-><init>(Lno/nordicsemi/android/ble/u2/b;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/data/Data;)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lno/nordicsemi/android/ble/r2;->d:Lno/nordicsemi/android/ble/data/d;

    const/4 p1, 0x0

    iput p1, p0, Lno/nordicsemi/android/ble/r2;->g:I

    :cond_3
    :goto_0
    return-void
.end method
