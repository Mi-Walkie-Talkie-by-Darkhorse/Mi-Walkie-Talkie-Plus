.class public abstract Lno/nordicsemi/android/ble/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/ble/Request$Type;
    }
.end annotation


# instance fields
.field protected a:Lno/nordicsemi/android/ble/j2;

.field protected b:Lno/nordicsemi/android/ble/z1;

.field final c:Lno/nordicsemi/android/ble/Request$Type;

.field final d:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final e:Landroid/bluetooth/BluetoothGattDescriptor;

.field f:Lno/nordicsemi/android/ble/u2/a;

.field g:Lno/nordicsemi/android/ble/u2/j;

.field h:Lno/nordicsemi/android/ble/u2/d;

.field i:Lno/nordicsemi/android/ble/u2/e;

.field j:Lno/nordicsemi/android/ble/u2/a;

.field k:Lno/nordicsemi/android/ble/u2/j;

.field l:Lno/nordicsemi/android/ble/u2/d;

.field m:Z

.field n:Z

.field o:Z


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;)V
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    new-instance p1, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    iput-object p2, p0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 p1, 0x0

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/os/ConditionVariable;-><init>(Z)V

    return-void
.end method

.method public static a(I)Lno/nordicsemi/android/ble/e2;
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/e2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->D:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0}, Lno/nordicsemi/android/ble/e2;-><init>(Lno/nordicsemi/android/ble/Request$Type;I)V

    return-object v0
.end method

.method public static a(J)Lno/nordicsemi/android/ble/o2;
    .locals 2
    .param p0    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/o2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->J:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0, p1}, Lno/nordicsemi/android/ble/o2;-><init>(Lno/nordicsemi/android/ble/Request$Type;J)V

    return-object v0
.end method

.method public static a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/t2;
    .locals 2
    .param p0    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/t2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->o:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0}, Lno/nordicsemi/android/ble/t2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-object v0
.end method

.method public static a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/t2;
    .locals 8
    .param p0    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v7, Lno/nordicsemi/android/ble/t2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->f:Lno/nordicsemi/android/ble/Request$Type;

    if-eqz p1, :cond_0

    array-length v0, p1

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    const/4 v6, 0x2

    :goto_1
    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lno/nordicsemi/android/ble/t2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;[BIII)V

    return-object v7
.end method

.method static d()Lno/nordicsemi/android/ble/d2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/d2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/d2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method static e(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/b2;
    .locals 2
    .param p0    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/b2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0}, Lno/nordicsemi/android/ble/b2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public static e()Lno/nordicsemi/android/ble/t2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/t2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->A:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/t2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method static f()Lno/nordicsemi/android/ble/t2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/t2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->C:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/t2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method public static g()Lno/nordicsemi/android/ble/h2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/h2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->z:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/h2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method


# virtual methods
.method a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/Request;
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->a:Lno/nordicsemi/android/ble/j2;

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    if-nez v0, :cond_0

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    :cond_0
    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/a;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->f:Lno/nordicsemi/android/ble/u2/a;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->h:Lno/nordicsemi/android/ble/u2/d;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/e;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->i:Lno/nordicsemi/android/ble/u2/e;

    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/u2/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->g:Lno/nordicsemi/android/ble/u2/j;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->a:Lno/nordicsemi/android/ble/j2;

    invoke-virtual {v0, p0}, Lno/nordicsemi/android/ble/j2;->a(Lno/nordicsemi/android/ble/Request;)V

    return-void
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->f:Lno/nordicsemi/android/ble/u2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lno/nordicsemi/android/ble/u2/a;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->h:Lno/nordicsemi/android/ble/u2/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lno/nordicsemi/android/ble/u2/d;->a(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    return-void
.end method

.method public synthetic b()V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->i:Lno/nordicsemi/android/ble/u2/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lno/nordicsemi/android/ble/u2/e;->a()V

    :cond_0
    return-void
.end method

.method public synthetic b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->g:Lno/nordicsemi/android/ble/u2/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lno/nordicsemi/android/ble/u2/j;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->l:Lno/nordicsemi/android/ble/u2/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lno/nordicsemi/android/ble/u2/d;->a(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v1, Lno/nordicsemi/android/ble/g1;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/ble/g1;-><init>(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method c()V
    .locals 2

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v1, Lno/nordicsemi/android/ble/j1;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/j1;-><init>(Lno/nordicsemi/android/ble/Request;)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method c(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->n:Z

    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->j:Lno/nordicsemi/android/ble/u2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lno/nordicsemi/android/ble/u2/a;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v1, Lno/nordicsemi/android/ble/i1;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/ble/i1;-><init>(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method d(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->k:Lno/nordicsemi/android/ble/u2/j;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lno/nordicsemi/android/ble/u2/j;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/z1;

    new-instance v2, Lno/nordicsemi/android/ble/h1;

    invoke-direct {v2, p0, p1}, Lno/nordicsemi/android/ble/h1;-><init>(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/z1;->post(Ljava/lang/Runnable;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
