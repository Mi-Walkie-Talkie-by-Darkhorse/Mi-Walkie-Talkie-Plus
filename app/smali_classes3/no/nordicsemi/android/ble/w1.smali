.class public abstract Lno/nordicsemi/android/ble/w1;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/ble/w1$b;
    }
.end annotation


# static fields
.field static final h:Ljava/util/UUID;

.field static final i:Ljava/util/UUID;

.field static final j:Ljava/util/UUID;

.field static final k:Ljava/util/UUID;

.field static final l:Ljava/util/UUID;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lno/nordicsemi/android/ble/y1;

.field final c:Lno/nordicsemi/android/ble/w1$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected d:Lno/nordicsemi/android/ble/x1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field e:Lno/nordicsemi/android/ble/x2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field f:Lno/nordicsemi/android/ble/x2/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/UUID;

    const-string v0, "0000180F-0000-1000-8000-00805f9b34fb"

    .line 2
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/w1;->i:Ljava/util/UUID;

    const-string v0, "00002A19-0000-1000-8000-00805f9b34fb"

    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/w1;->j:Ljava/util/UUID;

    const-string v0, "00001801-0000-1000-8000-00805f9b34fb"

    .line 4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/w1;->k:Ljava/util/UUID;

    const-string v0, "00002A05-0000-1000-8000-00805f9b34fb"

    .line 5
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/w1;->l:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/ble/w1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lno/nordicsemi/android/ble/w1$a;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/w1$a;-><init>(Lno/nordicsemi/android/ble/w1;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/w1;->g:Landroid/content/BroadcastReceiver;

    .line 4
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->s()Lno/nordicsemi/android/ble/w1$b;

    move-result-object v1

    iput-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 6
    invoke-virtual {v1, p0, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->p0(Lno/nordicsemi/android/ble/w1;Landroid/os/Handler;)V

    .line 7
    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic w(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->a2()V

    return-void
.end method

.method private synthetic y(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const/4 p1, 0x4

    const-string v0, "Battery Level notifications enabled"

    .line 1
    invoke-virtual {p0, p1, v0}, Lno/nordicsemi/android/ble/w1;->A(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract A(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected B(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected C()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lno/nordicsemi/android/ble/Request;->w()Lno/nordicsemi/android/ble/i2;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 2
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/i2;->P(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/i2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 3
    invoke-virtual {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->j0()Lno/nordicsemi/android/ble/v2/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/i2;->Q(Lno/nordicsemi/android/ble/v2/c;)Lno/nordicsemi/android/ble/i2;

    .line 4
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method

.method protected D(I)Lno/nordicsemi/android/ble/f2;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lno/nordicsemi/android/ble/Request;->v(I)Lno/nordicsemi/android/ble/f2;

    move-result-object p1

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/f2;->N(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/f2;

    return-object p1
.end method

.method public final E(Lno/nordicsemi/android/ble/x2/b;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/x2/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1;->f:Lno/nordicsemi/android/ble/x2/b;

    return-void
.end method

.method protected F(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/s2;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->o0(Ljava/lang/Object;)Lno/nordicsemi/android/ble/s2;

    move-result-object p1

    return-object p1
.end method

.method protected G()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected I(J)Lno/nordicsemi/android/ble/p2;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/Request;->x(J)Lno/nordicsemi/android/ble/p2;

    move-result-object p1

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/p2;->I(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/p2;

    return-object p1
.end method

.method protected J(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/Request;->y(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 2
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;

    return-object p1
.end method

.method protected K(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lno/nordicsemi/android/ble/Request;->z(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 2
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;

    return-object p1
.end method

.method protected L(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lno/nordicsemi/android/ble/u2;
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/Request;->A(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 2
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;

    return-object p1
.end method

.method protected h()Lno/nordicsemi/android/ble/l2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lno/nordicsemi/android/ble/l2;

    invoke-direct {v0}, Lno/nordicsemi/android/ble/l2;-><init>()V

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/l2;->L(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/l2;

    return-object v0
.end method

.method protected final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->d0()V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->a:Landroid/content/Context;

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->b:Lno/nordicsemi/android/ble/y1;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->f0()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Lno/nordicsemi/android/ble/y1;->b(Lno/nordicsemi/android/ble/w1;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/c2;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Bluetooth device not specified"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/c2;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->G()Z

    move-result v0

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/c2;->U(Z)Lno/nordicsemi/android/ble/c2;

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 4
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/c2;->R(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/c2;

    return-object p1
.end method

.method public final l()Lno/nordicsemi/android/ble/e2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lno/nordicsemi/android/ble/Request;->d()Lno/nordicsemi/android/ble/e2;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/e2;->K(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/e2;

    return-object v0
.end method

.method protected m()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lno/nordicsemi/android/ble/Request;->r()Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 2
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lno/nordicsemi/android/ble/a;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/a;-><init>(Lno/nordicsemi/android/ble/w1;)V

    .line 3
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->I(Lno/nordicsemi/android/ble/v2/b;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lno/nordicsemi/android/ble/b;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/b;-><init>(Lno/nordicsemi/android/ble/w1;)V

    .line 4
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 5
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method

.method protected n(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lno/nordicsemi/android/ble/Request;->s(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 2
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;

    return-object p1
.end method

.method protected o(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lno/nordicsemi/android/ble/Request;->t(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    .line 2
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;

    return-object p1
.end method

.method public p()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->k0()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->m0()I

    move-result v0

    return v0
.end method

.method protected final r()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract s()Lno/nordicsemi/android/ble/w1$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected t()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x17L
        to = 0x205L
    .end annotation

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->n0()I

    move-result v0

    return v0
.end method

.method protected u(Z)I
    .locals 0
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    if-eqz p1, :cond_0

    const/16 p1, 0x640

    goto :goto_0

    :cond_0
    const/16 p1, 0x12c

    :goto_0
    return p1
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1;->c:Lno/nordicsemi/android/ble/w1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->T0()Z

    move-result v0

    return v0
.end method

.method public synthetic x(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->w(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic z(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/w1;->y(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
