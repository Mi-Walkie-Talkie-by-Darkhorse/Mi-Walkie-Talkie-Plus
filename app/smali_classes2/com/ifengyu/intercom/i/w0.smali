.class public Lcom/ifengyu/intercom/i/w0;
.super Lcom/ifengyu/intercom/i/z0/d;
.source "Mi3BleManager.java"


# static fields
.field public static final D:Ljava/util/UUID;

.field public static final E:Ljava/util/UUID;

.field public static final F:Ljava/util/UUID;

.field public static final G:Ljava/util/UUID;


# instance fields
.field private A:J

.field private final B:Ljava/lang/Runnable;

.field private final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private final r:Landroid/os/Handler;

.field protected final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/blelib/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/ifengyu/blelib/c/d;

.field private final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/ifengyu/blelib/utils/a;

.field private x:[B

.field private y:[B

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/b;->b:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/w0;->D:Ljava/util/UUID;

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/j/b;->c:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/w0;->E:Ljava/util/UUID;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/j/b;->d:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/w0;->F:Ljava/util/UUID;

    const-string v0, "0000AECB-0000-1000-8000-00805f9b34fb"

    .line 4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/i/w0;->G:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->r:Landroid/os/Handler;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->s:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/l/b/d/b;

    invoke-direct {p1}, Lcom/ifengyu/intercom/l/b/d/b;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->t:Lcom/ifengyu/blelib/c/d;

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Integer;

    const/16 v1, 0x4e21

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x4e22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/i/w0;->u:Ljava/util/Set;

    new-array p1, p1, [Ljava/lang/Integer;

    const/16 v0, 0x4e23

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const/16 v0, 0x4e24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->v:Ljava/util/Set;

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/i/y;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/i/y;-><init>(Lcom/ifengyu/intercom/i/w0;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->B:Ljava/lang/Runnable;

    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->C:Ljava/util/Map;

    return-void
.end method

.method private A0(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/blelib/b/a;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/ifengyu/blelib/b/a;->a(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result p1

    const/16 v0, 0x4e2e

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getConfigInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getShareLoc()Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->ON:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    if-ne p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string p2, "\u5f00\u542f\u5171\u4eab\u672a\u77e5\u901a\u77e5"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method private B0([B)[B
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->y0([B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "parse received pack-->invalid crc"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/ifengyu/intercom/h/b/a/c;->b([B)I

    move-result v0

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/h/b/a/c;->i([B)I

    move-result v2

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/h/b/a/c;->g([B)I

    move-result v3

    .line 6
    invoke-static {p1}, Lcom/ifengyu/intercom/h/b/a/c;->d([B)[B

    move-result-object v4

    .line 7
    invoke-static {p1}, Lcom/ifengyu/intercom/h/b/a/c;->h([B)I

    move-result p1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse received pack-->cmdId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", version: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", seq: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v4}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v5, :cond_3

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/i/w0;->x:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->y:[B

    invoke-static {v4, p1, v0}, Lcom/ifengyu/blelib/utils/b;->b([B[B[B)[B

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->C0([B)[B

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse received pack-->decrypted data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 18
    :cond_3
    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/i/w0;->C0([B)[B

    move-result-object p1

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "parse receive pack-->data is null"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    return-object p1
.end method

.method private C0([B)[B
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unpack, real data length < 2, data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/ifengyu/intercom/h/b/a/c;->e([B)I

    move-result v0

    .line 4
    array-length v3, p1

    add-int/lit8 v4, v0, 0x2

    if-ge v3, v4, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unpack, real data length < dataLen + 2, data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6
    :cond_1
    invoke-static {p1, v2, v0}, Lcom/ifengyu/intercom/h/b/a/c;->a([BII)[B

    move-result-object p1

    return-object p1
.end method

.method private E1(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[B)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/i/x;-><init>(Lcom/ifengyu/intercom/i/w0;Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[B)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/i/b0;->a:Lcom/ifengyu/intercom/i/b0;

    sget-object v0, Lcom/ifengyu/intercom/i/s0;->a:Lcom/ifengyu/intercom/i/s0;

    .line 4
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private G0(Lcom/ifengyu/blelib/c/c;I)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x4e53

    if-ne v1, v4, :cond_3

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/i/w0;->C:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v4, p0, Lcom/ifengyu/intercom/i/w0;->C:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_1
    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ifengyu/blelib/c/c;->e(Ljava/util/List;)V

    .line 8
    invoke-virtual {p1, v2}, Lcom/ifengyu/blelib/c/c;->f(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->C:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/blelib/b/b;->g(I)Lcom/ifengyu/blelib/b/c;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p2, p1}, Lcom/ifengyu/blelib/b/c;->d(Lcom/ifengyu/blelib/c/c;)V

    return v3

    :cond_2
    if-nez v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1, v1}, Lcom/ifengyu/blelib/c/c;->e(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->C:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/blelib/b/b;->g(I)Lcom/ifengyu/blelib/b/c;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p2, p1}, Lcom/ifengyu/blelib/b/c;->d(Lcom/ifengyu/blelib/c/c;)V

    return v3

    .line 17
    :cond_3
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/blelib/b/b;->g(I)Lcom/ifengyu/blelib/b/c;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p2, p1}, Lcom/ifengyu/blelib/b/c;->d(Lcom/ifengyu/blelib/c/c;)V

    return v3

    :cond_4
    return v2
.end method

.method private H0(Lcom/ifengyu/blelib/c/c;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result v0

    const/16 v1, 0x4e24

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->I0(Lcom/ifengyu/blelib/c/c;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private I0(Lcom/ifengyu/blelib/c/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/i/w0;->r:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ifengyu/intercom/i/w0;->B:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "Allow to connect"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/w0;->v1([B)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getIv()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/w0;->u1([B)V

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/w0;->w1([B)V

    .line 8
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/w0;->E0()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/w0;->D0()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/w0;->F0()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/w0;->d1(I)V

    .line 15
    new-instance v1, Lcom/ifengyu/intercom/i/w0$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/w0$a;-><init>(Lcom/ifengyu/intercom/i/w0;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/i/w0;->g1(Lcom/ifengyu/blelib/b/c;)V

    const/16 v1, 0xe

    .line 16
    invoke-static {v1}, Lcom/ifengyu/intercom/p/d0;->A0(I)V

    .line 17
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/d0;->i0(Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->x0(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;->getDeviceType()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/b;->a(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "waiting confirm connection"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->d1(I)V

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/i/w0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->B:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, device low power"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/i/w0;->d1(I)V

    .line 25
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 26
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, device forbidden"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/i/w0;->d1(I)V

    .line 28
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_0

    .line 29
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, other reason"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 30
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->d1(I)V

    .line 31
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    :goto_0
    return-void
.end method

.method private J0(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result p1

    const/16 v0, 0x4e67

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result p1

    const/16 v0, 0x4e68

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private K0(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private L0(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->v:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic M0(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableNotifications onRequestFailed-->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", status: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic O0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableNotifications onRequestCompleted-->device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic Q0()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/w0;->d1(I)V

    .line 2
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/q2;->f()V

    return-void
.end method

.method static synthetic S0(Lcom/ifengyu/blelib/b/c;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/ifengyu/blelib/b/b;->h(ILcom/ifengyu/blelib/b/c;)V

    :cond_0
    return-void
.end method

.method private synthetic T0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data success, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic V0(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data failed, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", status: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ifengyu/blelib/b/b;->g(I)Lcom/ifengyu/blelib/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p3}, Lcom/ifengyu/blelib/b/c;->c(I)V

    :cond_0
    return-void
.end method

.method private synthetic X0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "send data failed, invalid request"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/blelib/b/b;->g(I)Lcom/ifengyu/blelib/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x4

    .line 3
    invoke-virtual {p1, v0}, Lcom/ifengyu/blelib/b/c;->c(I)V

    :cond_0
    return-void
.end method

.method private synthetic Z0(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[BLcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/models/DeviceModel;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getConfigInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getName()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/h0;->a(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    const/16 p1, 0xe

    .line 7
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    .line 9
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getVerHw()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionHw(I)V

    .line 11
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getVerSoft()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionSoft(I)V

    .line 12
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getColor()Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$ColorType;->getNumber()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 13
    invoke-static {p2}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/DeviceModel;->getCreateTime()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-nez p3, :cond_1

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 17
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 18
    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/database/a/e;->h(Lcom/ifengyu/intercom/models/DeviceModel;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 21
    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/database/a/e;->j(Lcom/ifengyu/intercom/models/DeviceModel;)J

    :goto_0
    return-object v2

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b1(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p0

    new-instance v0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    sget v1, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->STATE_CONNECTED:I

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private d1(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic l0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m0(Lcom/ifengyu/intercom/i/w0;Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/w0;->E1(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[B)V

    return-void
.end method

.method private m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/w0;->w0(I[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/i/w0;->n1([BLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method static synthetic n0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method private o1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/w0;->F0()[B

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/w0$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/w0$c;-><init>(Lcom/ifengyu/intercom/i/w0;)V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/i/w0;->x1([BLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method static synthetic p0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method private p1([B)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/i/w0$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/w0$b;-><init>(Lcom/ifengyu/intercom/i/w0;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/i/w0;->y1([BLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method static synthetic q0(Lcom/ifengyu/intercom/i/w0;)Lcom/ifengyu/blelib/utils/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/w0;->w:Lcom/ifengyu/blelib/utils/a;

    return-object p0
.end method

.method static synthetic r0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s0(Lcom/ifengyu/intercom/i/w0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/i/w0;->o1()V

    return-void
.end method

.method static synthetic t0(Lcom/ifengyu/intercom/i/w0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u0(Lcom/ifengyu/intercom/i/w0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->d1(I)V

    return-void
.end method

.method static synthetic v0(Lcom/ifengyu/intercom/i/w0;Lcom/ifengyu/blelib/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->I0(Lcom/ifengyu/blelib/c/c;)V

    return-void
.end method

.method private w0(I[B)[B
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->K0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/w0;->x0([B)[B

    move-result-object p2

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->L0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/w0;->x0([B)[B

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->x:[B

    iget-object v2, p0, Lcom/ifengyu/intercom/i/w0;->y:[B

    invoke-static {p2, v0, v2}, Lcom/ifengyu/blelib/utils/b;->c([B[B[B)[B

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/w0;->x0([B)[B

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->x:[B

    iget-object v2, p0, Lcom/ifengyu/intercom/i/w0;->y:[B

    invoke-static {p2, v0, v2}, Lcom/ifengyu/blelib/utils/b;->c([B[B[B)[B

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string p2, "fina data is null"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_2
    new-instance v0, Lcom/ifengyu/intercom/h/b/a/b;

    invoke-direct {v0, p1, v1, p2}, Lcom/ifengyu/intercom/h/b/a/b;-><init>(II[B)V

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/h/b/a/b;->e()[B

    move-result-object p2

    .line 11
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send commend-->cmdId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", packet: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p2
.end method

.method private x0([B)[B
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/ifengyu/intercom/i/w0;->A:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    :cond_0
    iput-wide v0, p0, Lcom/ifengyu/intercom/i/w0;->A:J

    const/16 v2, 0x8

    .line 4
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 5
    array-length v1, p1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, v2

    array-length v3, v0

    add-int/2addr v1, v3

    .line 6
    new-array v1, v1, [B

    .line 7
    array-length v3, p1

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5, v2}, Lcom/ifengyu/intercom/h/b/a/c;->j([BJII)V

    .line 8
    array-length v3, p1

    invoke-static {p1, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length v3, v0

    int-to-long v3, v3

    array-length v6, p1

    add-int/2addr v6, v2

    invoke-static {v1, v3, v4, v6, v2}, Lcom/ifengyu/intercom/h/b/a/c;->j([BJII)V

    .line 10
    array-length p1, p1

    add-int/2addr p1, v2

    add-int/2addr p1, v2

    array-length v2, v0

    invoke-static {v0, v5, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private y0([B)Z
    .locals 2

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ifengyu/intercom/h/b/a/c;->a([BII)[B

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/h/b/a/c;->c([B)[B

    move-result-object p1

    .line 3
    invoke-static {v0}, Lcom/ifengyu/blelib/c/b;->b([B)[B

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/ifengyu/blelib/c/a;->c([B[B)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public A1(Lcom/ifengyu/intercom/protos/BleProtos$Channel;Lcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    const/16 v1, 0x4e41

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public B1(Lcom/ifengyu/intercom/models/ChannelModel;ILcom/ifengyu/blelib/b/c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/l/b/d/a;->o(Lcom/ifengyu/intercom/models/ChannelModel;I)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 p2, 0x4e41

    invoke-direct {v0, p2, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p3}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public C1(Ljava/lang/String;Lcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/d/a;->q(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 v1, 0x4e2c

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method protected D0()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->y:[B

    return-object v0
.end method

.method public D1(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;Lcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/d/a;->r(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 v1, 0x4e2c

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method protected E0()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->x:[B

    return-object v0
.end method

.method protected F0()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->z:[B

    return-object v0
.end method

.method public F1(Lcom/ifengyu/intercom/models/ChannelModel;Lcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/d/a;->p(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 v1, 0x4e3a

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public G1(ZLcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/d/a;->n(Z)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 v1, 0x4e2c

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public synthetic N0(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/w0;->M0(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method protected P(Lno/nordicsemi/android/ble/l2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/ble/w1;->o(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/u;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/u;-><init>(Lcom/ifengyu/intercom/i/w0;)V

    .line 2
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/i/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/w;-><init>(Lcom/ifengyu/intercom/i/w0;)V

    .line 3
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 4
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    return-void
.end method

.method public synthetic P0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->O0(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic R0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/i/w0;->Q0()V

    return-void
.end method

.method protected S()Lno/nordicsemi/android/ble/data/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/d/a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/d/a;-><init>()V

    return-object v0
.end method

.method protected U()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/w0;->F:Ljava/util/UUID;

    return-object v0
.end method

.method public synthetic U0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->T0(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected V()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/w0;->D:Ljava/util/UUID;

    return-object v0
.end method

.method protected W()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public synthetic W0(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/i/w0;->V0(ILandroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method protected Y()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/w0;->D:Ljava/util/UUID;

    return-object v0
.end method

.method public synthetic Y0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->X0(I)V

    return-void
.end method

.method protected Z()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/w0;->G:Ljava/util/UUID;

    return-object v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/blelib/b/b;->f()V

    .line 3
    new-instance v0, Lcom/ifengyu/blelib/utils/a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/utils/a;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->a()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/w0;->t1(Lcom/ifengyu/blelib/utils/a;)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->g(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/w0;->w1([B)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->p1([B)V

    return-void
.end method

.method public synthetic a1(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[BLcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/i/w0;->Z0(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[BLcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method protected b0()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/w0;->E:Ljava/util/UUID;

    return-object v0
.end method

.method protected c0(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 6

    .line 1
    invoke-static {p2}, Lcom/ifengyu/intercom/h/b/a/c;->g([B)I

    move-result v0

    .line 2
    invoke-static {p2}, Lcom/ifengyu/intercom/h/b/a/c;->b([B)I

    move-result v1

    .line 3
    invoke-static {p2}, Lcom/ifengyu/intercom/h/b/a/c;->f([B)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmdId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", seqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", responseCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/w0;->B0([B)[B

    move-result-object p2

    .line 6
    iget-object v3, p0, Lcom/ifengyu/intercom/i/w0;->t:Lcom/ifengyu/blelib/c/d;

    invoke-interface {v3, v1, p2}, Lcom/ifengyu/blelib/c/d;->a(I[B)Lcom/ifengyu/blelib/c/c;

    move-result-object p2

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/ifengyu/blelib/c/c;

    const/4 v3, 0x0

    invoke-direct {p2, v1, v3, v2}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2, v2}, Lcom/ifengyu/blelib/c/c;->f(I)V

    .line 9
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/ifengyu/intercom/i/w0;->G0(Lcom/ifengyu/blelib/c/c;I)Z

    .line 10
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/w0;->H0(Lcom/ifengyu/blelib/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/w0;->A0(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/w0;->J0(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V

    return-void
.end method

.method public c1([B)Lno/nordicsemi/android/ble/u2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/z0/d;->X()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/intercom/i/z0/d;->a0(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/i/z0/d;->d(Landroid/bluetooth/BluetoothDevice;I)V

    .line 2
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/blelib/b/b;->e()V

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/i/w0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->B:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;->k0(Landroid/bluetooth/BluetoothDevice;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->a()V

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/b;->g(Z)V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->a()V

    .line 8
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/a;->g(Z)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/w0;->t1(Lcom/ifengyu/blelib/utils/a;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/w0;->u1([B)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/w0;->v1([B)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/w0;->w1([B)V

    return-void
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/i/z0/d;->e(Landroid/bluetooth/BluetoothDevice;I)V

    const/4 p1, 0x7

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/w0;->d1(I)V

    return-void
.end method

.method public e1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/l/b/d/a;->l()Lcom/google/protobuf/Message;

    move-result-object v1

    const/16 v2, 0x4e3e

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public f1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/l/b/d/a;->j()Lcom/google/protobuf/Message;

    move-result-object v1

    const/16 v2, 0x4e52

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public g1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/l/b/d/a;->e()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v1

    const/16 v2, 0x4e2a

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public h1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/l/b/d/a;->a()Lcom/google/protobuf/Message;

    move-result-object v1

    const/16 v2, 0x4e54

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public i1(IILcom/ifengyu/blelib/b/c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/l/b/d/a;->m(II)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 p2, 0x4e34

    invoke-direct {v0, p2, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p3}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public j1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/l/b/d/a;->k()Lcom/google/protobuf/Message;

    move-result-object v1

    const/16 v2, 0x4e52

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public k1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/l/b/d/a;->b()Lcom/google/protobuf/Message;

    move-result-object v1

    const/16 v2, 0x4e54

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public l1(Lcom/ifengyu/blelib/b/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected n1([BLcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "send data failed, device may be disconnected"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p2, p1}, Lcom/ifengyu/blelib/b/c;->c(I)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/ifengyu/intercom/h/b/a/c;->g([B)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, p1, v2}, Lno/nordicsemi/android/ble/w1;->K(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/u2;->V()Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/i/t;

    invoke-direct {v1, p2, v0}, Lcom/ifengyu/intercom/i/t;-><init>(Lcom/ifengyu/blelib/b/c;I)V

    .line 7
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/ble/u2;->I(Lno/nordicsemi/android/ble/v2/b;)Lno/nordicsemi/android/ble/u2;

    new-instance p2, Lcom/ifengyu/intercom/i/a0;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/i/a0;-><init>(Lcom/ifengyu/intercom/i/w0;)V

    .line 8
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance p2, Lcom/ifengyu/intercom/i/z;

    invoke-direct {p2, p0, v0}, Lcom/ifengyu/intercom/i/z;-><init>(Lcom/ifengyu/intercom/i/w0;I)V

    .line 9
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance p2, Lcom/ifengyu/intercom/i/v;

    invoke-direct {p2, p0, v0}, Lcom/ifengyu/intercom/i/v;-><init>(Lcom/ifengyu/intercom/i/w0;I)V

    .line 10
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->O(Lno/nordicsemi/android/ble/v2/f;)Lno/nordicsemi/android/ble/u2;

    .line 11
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method

.method public q1(Lcom/ifengyu/intercom/bean/BeanUserLocation;Lcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/d/a;->f(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 v1, 0x4e66

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public r1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/l/b/d/a;->g()Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;

    move-result-object v1

    const/16 v2, 0x4e5c

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public s1(ILcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/d/a;->h(I)Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;

    move-result-object p1

    const/16 v1, 0x4e5c

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public t1(Lcom/ifengyu/blelib/utils/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->w:Lcom/ifengyu/blelib/utils/a;

    return-void
.end method

.method public u1([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->y:[B

    return-void
.end method

.method public v1([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->x:[B

    return-void
.end method

.method public w1([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/w0;->z:[B

    return-void
.end method

.method public x1([BLcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/d/a;->c([B)Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;

    move-result-object p1

    const/16 v1, 0x4e23

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public y1([BLcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/d/a;->i([B)Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;

    move-result-object p1

    const/16 v1, 0x4e21

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public z0(IILcom/ifengyu/blelib/b/c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/l/b/d/a;->d(II)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 p2, 0x4e3a

    invoke-direct {v0, p2, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p3}, Lcom/ifengyu/intercom/i/w0;->m1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public z1(Lcom/ifengyu/blelib/b/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w0;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
