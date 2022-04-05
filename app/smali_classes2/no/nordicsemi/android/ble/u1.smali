.class public abstract Lno/nordicsemi/android/ble/u1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/ble/u1$b;
    }
.end annotation


# static fields
.field static final g:Ljava/util/UUID;

.field static final h:Ljava/util/UUID;

.field static final i:Ljava/util/UUID;

.field static final j:Ljava/util/UUID;

.field static final k:Ljava/util/UUID;


# instance fields
.field private final a:Landroid/content/Context;

.field final b:Lno/nordicsemi/android/ble/u1$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected c:Lno/nordicsemi/android/ble/v1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field d:Lno/nordicsemi/android/ble/w2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field e:Lno/nordicsemi/android/ble/w2/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    const-string v0, "0000180F-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/u1;->h:Ljava/util/UUID;

    const-string v0, "00002A19-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/u1;->i:Ljava/util/UUID;

    const-string v0, "00001801-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/u1;->j:Ljava/util/UUID;

    const-string v0, "00002A05-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lno/nordicsemi/android/ble/u1;->k:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/ble/u1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lno/nordicsemi/android/ble/u1$a;

    invoke-direct {v0, p0}, Lno/nordicsemi/android/ble/u1$a;-><init>(Lno/nordicsemi/android/ble/u1;)V

    iput-object v0, p0, Lno/nordicsemi/android/ble/u1;->f:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lno/nordicsemi/android/ble/u1;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->h()Lno/nordicsemi/android/ble/u1$b;

    move-result-object v0

    iput-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0, p0, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/u1;Landroid/os/Handler;)V

    iget-object p2, p0, Lno/nordicsemi/android/ble/u1;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected a(Z)I
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

.method protected a()Lno/nordicsemi/android/ble/k2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lno/nordicsemi/android/ble/k2;

    invoke-direct {v0}, Lno/nordicsemi/android/ble/k2;-><init>()V

    iget-object v1, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/k2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/k2;

    return-object v0
.end method

.method protected a(J)Lno/nordicsemi/android/ble/o2;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/Request;->a(J)Lno/nordicsemi/android/ble/o2;

    move-result-object p1

    iget-object p2, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/o2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/o2;

    return-object p1
.end method

.method protected a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/t2;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lno/nordicsemi/android/ble/Request;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/t2;

    move-result-object p1

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/t2;

    return-object p1
.end method

.method protected a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/t2;
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

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/Request;->a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/t2;

    move-result-object p1

    iget-object p2, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/t2;

    return-object p1
.end method

.method public abstract a(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final a(Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0
    .param p1    # Lno/nordicsemi/android/ble/w2/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lno/nordicsemi/android/ble/u1;->e:Lno/nordicsemi/android/ble/w2/b;

    return-void
.end method

.method protected b(I)Lno/nordicsemi/android/ble/e2;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    invoke-static {p1}, Lno/nordicsemi/android/ble/Request;->a(I)Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/e2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/e2;

    return-object p1
.end method

.method protected b(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/r2;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0, p1}, Lno/nordicsemi/android/ble/w1;->a(Ljava/lang/Object;)Lno/nordicsemi/android/ble/r2;

    move-result-object p1

    return-object p1
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->a()V

    return-void
.end method

.method public final c()Lno/nordicsemi/android/ble/d2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lno/nordicsemi/android/ble/Request;->d()Lno/nordicsemi/android/ble/d2;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/d2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/d2;

    return-object v0
.end method

.method protected c(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final d(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/b2;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lno/nordicsemi/android/ble/Request;->e(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/b2;

    move-result-object p1

    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/b2;->a(Z)Lno/nordicsemi/android/ble/b2;

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/b2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/b2;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bluetooth device not specified"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected d()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lno/nordicsemi/android/ble/Request;->e()Lno/nordicsemi/android/ble/t2;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/t2;

    new-instance v1, Lno/nordicsemi/android/ble/b;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/b;-><init>(Lno/nordicsemi/android/ble/u1;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/a;)Lno/nordicsemi/android/ble/t2;

    new-instance v1, Lno/nordicsemi/android/ble/a;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/ble/a;-><init>(Lno/nordicsemi/android/ble/u1;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/t2;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->a()V

    return-void
.end method

.method public e()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iget-object p1, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->l()V

    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->e()I

    move-result v0

    return v0
.end method

.method protected final g()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->a:Landroid/content/Context;

    return-object v0
.end method

.method public synthetic g(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const/4 p1, 0x4

    const-string v0, "Battery Level notifications enabled"

    invoke-virtual {p0, p1, v0}, Lno/nordicsemi/android/ble/u1;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected abstract h()Lno/nordicsemi/android/ble/u1$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->g()Z

    move-result v0

    return v0
.end method

.method protected j()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lno/nordicsemi/android/ble/Request;->g()Lno/nordicsemi/android/ble/h2;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/h2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/h2;

    iget-object v1, p0, Lno/nordicsemi/android/ble/u1;->b:Lno/nordicsemi/android/ble/u1$b;

    invoke-virtual {v1}, Lno/nordicsemi/android/ble/w1;->c()Lno/nordicsemi/android/ble/u2/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/h2;->a(Lno/nordicsemi/android/ble/u2/b;)Lno/nordicsemi/android/ble/h2;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->a()V

    return-void
.end method

.method protected k()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
