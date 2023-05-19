.class public Lcom/ifengyu/intercom/i/t0;
.super Ljava/lang/Object;
.source "BleCoreClient.java"


# static fields
.field private static volatile d:Lcom/ifengyu/intercom/i/t0;


# instance fields
.field protected final a:Ljava/lang/String;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/i/z0/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ifengyu/intercom/i/z0/d;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleCore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/ifengyu/intercom/i/t0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/i/t0;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static n()Lcom/ifengyu/intercom/i/t0;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/t0;->d:Lcom/ifengyu/intercom/i/t0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/i/t0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/i/t0;->d:Lcom/ifengyu/intercom/i/t0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/i/t0;

    invoke-direct {v1}, Lcom/ifengyu/intercom/i/t0;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/i/t0;->d:Lcom/ifengyu/intercom/i/t0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/i/t0;->d:Lcom/ifengyu/intercom/i/t0;

    return-object v0
.end method

.method private synthetic p(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/i/t0;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect failed, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x5

    if-ne p2, p1, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    const/4 v0, 0x6

    invoke-direct {p2, v0}, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    const/4 v0, 0x7

    invoke-direct {p2, v0}, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic r(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ifengyu/intercom/database/a/e;->d(Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p0

    new-instance v0, Lcom/ifengyu/library/event/SimpleEvent;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->a:Ljava/lang/String;

    const-string v1, "connectDevice"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/i/t0;->a:Ljava/lang/String;

    const-string p2, "macAddress error"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/ifengyu/library/utils/c;->c(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/i/t0;->a:Ljava/lang/String;

    const-string p2, "btDevice null"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_6

    const/16 v3, 0x9

    if-eq p2, v3, :cond_5

    const/16 v3, 0xe

    if-eq p2, v3, :cond_4

    const/4 v3, 0x4

    if-eq p2, v3, :cond_3

    const/4 v3, 0x5

    if-eq p2, v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/t0;->k(Ljava/lang/String;)Lcom/ifengyu/intercom/i/w0;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/t0;->j(Ljava/lang/String;)Lcom/ifengyu/intercom/i/v0;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    .line 11
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/w1;->k(Landroid/bluetooth/BluetoothDevice;)Lno/nordicsemi/android/ble/c2;

    move-result-object p1

    const/4 p2, 0x3

    const/16 v0, 0xc8

    .line 12
    invoke-virtual {p1, p2, v0}, Lno/nordicsemi/android/ble/c2;->Q(II)Lno/nordicsemi/android/ble/c2;

    const-wide/16 v0, 0x4e20

    .line 13
    invoke-virtual {p1, v0, v1}, Lno/nordicsemi/android/ble/c2;->T(J)Lno/nordicsemi/android/ble/c2;

    .line 14
    invoke-virtual {p1, v2}, Lno/nordicsemi/android/ble/c2;->U(Z)Lno/nordicsemi/android/ble/c2;

    new-instance p2, Lcom/ifengyu/intercom/i/b;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/i/b;-><init>(Lcom/ifengyu/intercom/i/t0;)V

    .line 15
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/c2;->L(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/c2;

    .line 16
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    :cond_7
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/i/t0;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/t0;->e(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/httpold/download/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/a;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/i/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/t0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/i/z0/d;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/z0/d;->Q()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/ifengyu/intercom/i/z0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/i/z0/d;

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->c:Lcom/ifengyu/intercom/i/z0/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/ifengyu/intercom/i/z0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->c:Lcom/ifengyu/intercom/i/z0/d;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/i/z0/d;

    .line 2
    instance-of v1, v0, Lcom/ifengyu/intercom/i/u0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/ifengyu/intercom/i/u0;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/i/u0;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/i/u0;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lcom/ifengyu/intercom/i/v0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/i/z0/d;

    .line 2
    instance-of v1, v0, Lcom/ifengyu/intercom/i/v0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/ifengyu/intercom/i/v0;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/i/v0;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/i/v0;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public k(Ljava/lang/String;)Lcom/ifengyu/intercom/i/w0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/i/z0/d;

    .line 2
    instance-of v1, v0, Lcom/ifengyu/intercom/i/w0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/ifengyu/intercom/i/w0;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/i/w0;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/i/w0;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/i/z0/d;

    .line 2
    instance-of v1, v0, Lcom/ifengyu/intercom/i/x0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/ifengyu/intercom/i/x0;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/i/x0;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/i/x0;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/i/z0/d;

    .line 2
    instance-of v1, v0, Lcom/ifengyu/intercom/i/y0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/ifengyu/intercom/i/y0;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/i/y0;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/i/y0;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/t0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/i/z0/d;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic q(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/t0;->p(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public s(Lcom/ifengyu/intercom/i/z0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/t0;->c:Lcom/ifengyu/intercom/i/z0/d;

    return-void
.end method
