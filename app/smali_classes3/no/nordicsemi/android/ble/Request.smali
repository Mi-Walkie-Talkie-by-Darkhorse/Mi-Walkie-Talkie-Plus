.class public abstract Lno/nordicsemi/android/ble/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/ble/Request$Type;
    }
.end annotation


# instance fields
.field protected a:Lno/nordicsemi/android/ble/k2;

.field protected b:Lno/nordicsemi/android/ble/a2;

.field final c:Lno/nordicsemi/android/ble/Request$Type;

.field final d:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final e:Landroid/bluetooth/BluetoothGattDescriptor;

.field f:Lno/nordicsemi/android/ble/v2/b;

.field g:Lno/nordicsemi/android/ble/v2/a;

.field h:Lno/nordicsemi/android/ble/v2/k;

.field i:Lno/nordicsemi/android/ble/v2/e;

.field j:Lno/nordicsemi/android/ble/v2/f;

.field k:Lno/nordicsemi/android/ble/v2/b;

.field l:Lno/nordicsemi/android/ble/v2/k;

.field m:Lno/nordicsemi/android/ble/v2/e;

.field n:Z

.field o:Z

.field p:Z


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;)V
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 4
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 5
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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    .line 8
    iput-object p2, p0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 10
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/os/ConditionVariable;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/Request$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 14
    iput-object p2, p0, Lno/nordicsemi/android/ble/Request;->e:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 15
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/os/ConditionVariable;-><init>(Z)V

    return-void
.end method

.method public static A(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lno/nordicsemi/android/ble/u2;
    .locals 7
    .param p0    # Landroid/bluetooth/BluetoothGattDescriptor;
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

    .line 1
    new-instance v6, Lno/nordicsemi/android/ble/u2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->k:Lno/nordicsemi/android/ble/Request$Type;

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/ble/u2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattDescriptor;[BII)V

    return-object v6
.end method

.method public static F()Lno/nordicsemi/android/ble/n2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/n2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->f:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/n2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method static b(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/c2;
    .locals 2
    .param p0    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/c2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->b:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0}, Lno/nordicsemi/android/ble/c2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public static c()Lno/nordicsemi/android/ble/n2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/n2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->d:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/n2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method static d()Lno/nordicsemi/android/ble/e2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/e2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/e2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method private synthetic j(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->i:Lno/nordicsemi/android/ble/v2/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lno/nordicsemi/android/ble/v2/e;->a(Landroid/bluetooth/BluetoothDevice;I)V

    .line 3
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/Request;->g:Lno/nordicsemi/android/ble/v2/a;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1}, Lno/nordicsemi/android/ble/v2/a;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->j:Lno/nordicsemi/android/ble/v2/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lno/nordicsemi/android/ble/v2/f;->a()V

    :cond_0
    return-void
.end method

.method private synthetic n(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->f:Lno/nordicsemi/android/ble/v2/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lno/nordicsemi/android/ble/v2/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method private synthetic p(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->h:Lno/nordicsemi/android/ble/v2/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lno/nordicsemi/android/ble/v2/k;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->g:Lno/nordicsemi/android/ble/v2/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lno/nordicsemi/android/ble/v2/a;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    return-void
.end method

.method public static r()Lno/nordicsemi/android/ble/u2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/u2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->B:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/u2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method public static s(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;
    .locals 2
    .param p0    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/u2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->q:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0}, Lno/nordicsemi/android/ble/u2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-object v0
.end method

.method public static t(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;
    .locals 2
    .param p0    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/u2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->p:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0}, Lno/nordicsemi/android/ble/u2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-object v0
.end method

.method static u()Lno/nordicsemi/android/ble/u2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/u2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->D:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/u2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method public static v(I)Lno/nordicsemi/android/ble/f2;
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

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/f2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->E:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0}, Lno/nordicsemi/android/ble/f2;-><init>(Lno/nordicsemi/android/ble/Request$Type;I)V

    return-object v0
.end method

.method public static w()Lno/nordicsemi/android/ble/i2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/i2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->A:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1}, Lno/nordicsemi/android/ble/i2;-><init>(Lno/nordicsemi/android/ble/Request$Type;)V

    return-object v0
.end method

.method public static x(J)Lno/nordicsemi/android/ble/p2;
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

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/p2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->K:Lno/nordicsemi/android/ble/Request$Type;

    invoke-direct {v0, v1, p0, p1}, Lno/nordicsemi/android/ble/p2;-><init>(Lno/nordicsemi/android/ble/Request$Type;J)V

    return-object v0
.end method

.method public static y(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/u2;
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

    .line 1
    new-instance v7, Lno/nordicsemi/android/ble/u2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->g:Lno/nordicsemi/android/ble/Request$Type;

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
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

    .line 4
    invoke-direct/range {v0 .. v6}, Lno/nordicsemi/android/ble/u2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;[BIII)V

    return-object v7
.end method

.method public static z(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)Lno/nordicsemi/android/ble/u2;
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

    .line 1
    new-instance v7, Lno/nordicsemi/android/ble/u2;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->g:Lno/nordicsemi/android/ble/Request$Type;

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lno/nordicsemi/android/ble/u2;-><init>(Lno/nordicsemi/android/ble/Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;[BIII)V

    return-object v7
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

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->m:Lno/nordicsemi/android/ble/v2/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lno/nordicsemi/android/ble/v2/e;->a(Landroid/bluetooth/BluetoothDevice;I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/k1;

    invoke-direct {v1, p0, p1, p2}, Lno/nordicsemi/android/ble/k1;-><init>(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method C()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/j1;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/j1;-><init>(Lno/nordicsemi/android/ble/Request;)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method D(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->o:Z

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->k:Lno/nordicsemi/android/ble/v2/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lno/nordicsemi/android/ble/v2/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v1, Lno/nordicsemi/android/ble/i1;

    invoke-direct {v1, p0, p1}, Lno/nordicsemi/android/ble/i1;-><init>(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method E(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/Request;->p:Z

    .line 3
    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->l:Lno/nordicsemi/android/ble/v2/k;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lno/nordicsemi/android/ble/v2/k;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    new-instance v2, Lno/nordicsemi/android/ble/l1;

    invoke-direct {v2, p0, p1}, Lno/nordicsemi/android/ble/l1;-><init>(Lno/nordicsemi/android/ble/Request;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v1, v2}, Lno/nordicsemi/android/ble/a2;->post(Ljava/lang/Runnable;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;
    .locals 1
    .param p1    # Lno/nordicsemi/android/ble/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->a:Lno/nordicsemi/android/ble/k2;

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->b:Lno/nordicsemi/android/ble/a2;

    :cond_0
    return-object p0
.end method

.method public a(Lno/nordicsemi/android/ble/v2/b;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->f:Lno/nordicsemi/android/ble/v2/b;

    return-object p0
.end method

.method public e(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->h:Lno/nordicsemi/android/ble/v2/k;

    return-object p0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/Request;->a:Lno/nordicsemi/android/ble/k2;

    invoke-virtual {v0, p0}, Lno/nordicsemi/android/ble/k2;->b(Lno/nordicsemi/android/ble/Request;)V

    return-void
.end method

.method public g(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->i:Lno/nordicsemi/android/ble/v2/e;

    return-object p0
.end method

.method h(Lno/nordicsemi/android/ble/v2/e;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->m:Lno/nordicsemi/android/ble/v2/e;

    return-void
.end method

.method public i(Lno/nordicsemi/android/ble/v2/f;)Lno/nordicsemi/android/ble/Request;
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/v2/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/Request;->j:Lno/nordicsemi/android/ble/v2/f;

    return-object p0
.end method

.method public synthetic k(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/Request;->j(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public synthetic m()V
    .locals 0

    invoke-direct {p0}, Lno/nordicsemi/android/ble/Request;->l()V

    return-void
.end method

.method public synthetic o(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/Request;->n(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic q(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/Request;->p(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
