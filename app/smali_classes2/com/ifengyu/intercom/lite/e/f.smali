.class public Lcom/ifengyu/intercom/lite/e/f;
.super Lcom/ifengyu/blelib/b/e;
.source "LiteBleClient.java"

# interfaces
.implements Lcom/ifengyu/blelib/c/b;


# static fields
.field public static final A:Ljava/util/UUID;

.field public static final B:Ljava/util/UUID;

.field public static final C:Ljava/util/UUID;

.field public static final D:Ljava/util/UUID;

.field public static final E:Ljava/util/UUID;

.field private static volatile F:Lcom/ifengyu/intercom/lite/e/f;


# instance fields
.field private w:Landroid/os/Handler;

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000FDAB-0000-1000-8000-00805f9b34fb"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/e/f;->A:Ljava/util/UUID;

    const-string v0, "0000AEC7-0000-1000-8000-00805f9b34fb"

    .line 2
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/e/f;->B:Ljava/util/UUID;

    const-string v0, "0000AEC8-0000-1000-8000-00805f9b34fb"

    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/e/f;->C:Ljava/util/UUID;

    const-string v0, "00010203-0405-0607-0809-0a0b0c0d1912"

    .line 4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/e/f;->D:Ljava/util/UUID;

    const-string v0, "00010203-0405-0607-0809-0a0b0c0d2b12"

    .line 5
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/e/f;->E:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/blelib/b/e;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/f;->w:Landroid/os/Handler;

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/lite/e/b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/lite/e/b;-><init>(Lcom/ifengyu/intercom/lite/e/f;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/f;->z:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;
    .locals 2

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/lite/e/f;->F:Lcom/ifengyu/intercom/lite/e/f;

    if-nez v0, :cond_1

    .line 7
    const-class v0, Lcom/ifengyu/intercom/lite/e/f;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/lite/e/f;->F:Lcom/ifengyu/intercom/lite/e/f;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/lite/e/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/e/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ifengyu/intercom/lite/e/f;->F:Lcom/ifengyu/intercom/lite/e/f;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lcom/ifengyu/intercom/lite/e/f;->F:Lcom/ifengyu/intercom/lite/e/f;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/ifengyu/blelib/d/c;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/e/f;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    .line 77
    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    .line 78
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/e/f;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "Connection is allowed, no need to call repeatedly"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(Z)V

    const v0, 0x8f03

    .line 82
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 83
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->e(Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->i(Z)V

    const-wide/16 v1, 0x3e8

    .line 85
    invoke-virtual {p0, v1, v2}, Lno/nordicsemi/android/ble/u1;->a(J)Lno/nordicsemi/android/ble/o2;

    move-result-object v1

    invoke-virtual {v1}, Lno/nordicsemi/android/ble/Request;->a()V

    .line 86
    new-instance v1, Lcom/ifengyu/intercom/lite/e/f$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/e/f$d;-><init>(Lcom/ifengyu/intercom/lite/e/f;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/lite/e/f;->b(Lcom/ifengyu/blelib/c/e;)V

    .line 87
    iget-object v1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v2, "Allow to connect"

    invoke-static {v1, v2}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 89
    invoke-static {v0}, Lcom/ifengyu/intercom/lite/utils/e;->a(I)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "waiting confirm connection"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 92
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 93
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/e/f;->w:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f;->z:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->LOWPOWER:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "connect failed, device low power"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 96
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 97
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/p2;->a()V

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->REFUSE:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne p1, v0, :cond_4

    .line 99
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "connect failed, device refused"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 100
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 101
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/p2;->a()V

    goto :goto_0

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "connect failed, other reason"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 103
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 104
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/p2;->a()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/e/f;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/e/f;Lcom/ifengyu/blelib/d/c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/blelib/d/c;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/e/f;Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/e/f;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getVersionHw()I

    move-result p0

    .line 71
    invoke-static {}, Lcom/ifengyu/intercom/lite/g/s;->b()Lcom/ifengyu/intercom/lite/g/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/lite/g/s;->a(I)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;)V
    .locals 3

    .line 105
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    .line 106
    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->p()Lcom/ifengyu/blelib/utils/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/blelib/utils/a;->a([B)V

    .line 109
    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generate secret key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->p()Lcom/ifengyu/blelib/utils/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/blelib/utils/a;->e()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->u()[B

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/e/f$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/e/f$e;-><init>(Lcom/ifengyu/intercom/lite/e/f;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/lite/e/f;->b([BLcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/e/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/lite/e/d;-><init>(Lcom/ifengyu/intercom/lite/e/f;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V

    .line 46
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 47
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/lite/e/c;->a:Lcom/ifengyu/intercom/lite/e/c;

    new-instance v0, Lcom/ifengyu/intercom/lite/e/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/e/e;-><init>(Lcom/ifengyu/intercom/lite/e/f;)V

    .line 48
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private a(Ljava/lang/String;[B)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 73
    invoke-virtual {p0, v0, v1}, Lno/nordicsemi/android/ble/u1;->a(J)Lno/nordicsemi/android/ble/o2;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->a()V

    .line 74
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Ljava/lang/String;[B)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 p2, 0x4e21

    invoke-direct {v0, p2, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    new-instance p1, Lcom/ifengyu/intercom/lite/e/f$c;

    const-wide/16 v1, 0x4e20

    invoke-direct {p1, p0, v1, v2}, Lcom/ifengyu/intercom/lite/e/f$c;-><init>(Lcom/ifengyu/intercom/lite/e/f;J)V

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/ifengyu/blelib/d/c;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/e/f;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/e/f;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "Connection is allowed, no need to call repeatedly"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/lite/e/f;->d(Z)V

    const v1, 0x8f03

    .line 14
    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    .line 15
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/i/d0;->e(Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->i(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getKey()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ifengyu/blelib/b/e;->c([B)V

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getIv()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ifengyu/blelib/b/e;->b([B)V

    .line 19
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/blelib/b/e;->d([B)V

    .line 20
    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->r()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", iv: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->q()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->u()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 22
    invoke-virtual {p0, v2, v3}, Lno/nordicsemi/android/ble/u1;->a(J)Lno/nordicsemi/android/ble/o2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->a()V

    .line 23
    new-instance p1, Lcom/ifengyu/intercom/lite/e/f$f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/lite/e/f$f;-><init>(Lcom/ifengyu/intercom/lite/e/f;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->b(Lcom/ifengyu/blelib/c/e;)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v2, "Allow to connect"

    invoke-static {p1, v2}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 26
    invoke-static {v1}, Lcom/ifengyu/intercom/lite/utils/e;->a(I)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_3

    .line 28
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "waiting confirm connection"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 29
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/e/f;->w:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f;->z:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->LOWPOWER:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_4

    .line 32
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "connect failed, device low power"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 33
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 34
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/p2;->a()V

    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->REFUSE:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne p1, v0, :cond_5

    .line 36
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "connect failed, device refused"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 37
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 38
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/p2;->a()V

    goto :goto_0

    .line 39
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v0, "connect failed, other reason"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 40
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 41
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/p2;->a()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/e/f;Lcom/ifengyu/blelib/d/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->b(Lcom/ifengyu/blelib/d/c;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method private d(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/event/b;

    sget v2, Lcom/ifengyu/intercom/lite/event/b;->c:I

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/lite/event/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/event/a;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/lite/event/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/blelib/c/b;

    .line 8
    instance-of v2, v1, Lcom/ifengyu/intercom/lite/e/g/a;

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, Lcom/ifengyu/intercom/lite/e/g/a;

    .line 10
    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/lite/e/g/a;->a(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/lite/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method private j(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/e/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/e/a;-><init>(Lcom/ifengyu/intercom/lite/e/f;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/e/f$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/e/f$a;-><init>(Lcom/ifengyu/intercom/lite/e/f;)V

    new-instance v1, Lcom/ifengyu/intercom/lite/e/f$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/e/f$b;-><init>(Lcom/ifengyu/intercom/lite/e/f;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/lite/e/f;->x:Z

    return v0
.end method

.method public synthetic B()V
    .locals 2

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/e/f;->d(I)V

    .line 2
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->c()Lno/nordicsemi/android/ble/d2;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/p2;->a()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v1, "connect failed, timeout"

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[BLcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/lite/models/DeviceModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-direct {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;-><init>()V

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setName(Ljava/lang/String;)V

    const p1, 0x8f03

    .line 55
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceType(I)V

    const/4 p1, 0x1

    .line 56
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setConnected(Z)V

    .line 57
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVerHw()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionHw(I)V

    .line 59
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVerSoft()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionSoft(I)V

    .line 60
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVerVoice()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionVoice(I)V

    .line 61
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDeviceColor()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setDeviceColor(I)V

    .line 62
    invoke-static {p2}, Lcom/ifengyu/blelib/d/a;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setToken(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setUpdateTime(J)V

    .line 65
    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/lite/f/e;->b(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setCreateTime(J)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setUpdateTime(J)V

    .line 68
    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/lite/f/e;->a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)J

    :goto_0
    return-object v2

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(IIIIILcom/ifengyu/blelib/c/e;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/ifengyu/intercom/lite/e/h/a;->a(IIIII)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p1

    const/16 p2, 0x4e2c

    invoke-direct {v0, p2, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p6}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a(ILcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 13
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->a(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p1

    const/16 v1, 0x4e27

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-super {p0, p1}, Lcom/ifengyu/blelib/b/e;->a(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/lite/e/f;->d(Z)V

    .line 34
    new-instance v0, Lcom/ifengyu/blelib/utils/a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/utils/a;-><init>()V

    .line 35
    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->a()V

    .line 36
    invoke-virtual {p0, v0}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/utils/a;)V

    .line 37
    invoke-static {}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->o()Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/blelib/d/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ifengyu/blelib/b/e;->d([B)V

    .line 39
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->d()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 40
    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->d()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1, p2}, Lcom/ifengyu/blelib/b/e;->a(Landroid/bluetooth/BluetoothDevice;I)V

    .line 42
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/e/f;->w:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/f;->z:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->j(Landroid/bluetooth/BluetoothDevice;)V

    .line 44
    invoke-static {}, Lcom/ifengyu/intercom/lite/a/a;->a()V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/d/c;)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ifengyu/blelib/d/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->a()I

    move-result p1

    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_0

    .line 20
    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    .line 21
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-eq p1, v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->y()Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/blelib/d/c;)V

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->a()I

    move-result p1

    const/16 v0, 0x4e38

    if-ne p1, v0, :cond_1

    .line 25
    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;

    .line 26
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-eq p1, v0, :cond_3

    .line 27
    invoke-virtual {p0}, Lcom/ifengyu/blelib/b/e;->y()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 28
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/e/f;->b(Lcom/ifengyu/blelib/d/c;)V

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->a()I

    move-result p1

    const/16 v0, 0x4e36

    if-ne p1, v0, :cond_3

    .line 30
    invoke-virtual {p2}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;

    .line 31
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/e/f;->c(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/ifengyu/blelib/c/e;)V
    .locals 3

    .line 12
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {}, Lcom/ifengyu/intercom/lite/e/h/a;->c()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object v1

    const/16 v2, 0x4e29

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;Lcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p1

    const/16 v1, 0x4e2c

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;Lcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 16
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 18
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->l:Ljava/lang/String;

    const-string v1, "update device param failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public a(ZLcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 17
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->a(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public b(ILcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->b(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public b(Lcom/ifengyu/blelib/c/e;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {}, Lcom/ifengyu/intercom/lite/e/h/a;->d()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v1

    const/16 v2, 0x4e23

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public b(ZLcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->b(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public b([BLcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->a([B)Lcom/google/protobuf/Message;

    move-result-object p1

    const/16 v1, 0x4e37

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public c(ILcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->c(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public c(Lcom/ifengyu/blelib/c/e;)V
    .locals 3

    .line 5
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {}, Lcom/ifengyu/intercom/lite/e/h/a;->a()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;

    move-result-object v1

    const/16 v2, 0x4e32

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/e/f;->y:Z

    return-void
.end method

.method public c(ZLcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->c(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/e;)V
    .locals 3

    .line 4
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {}, Lcom/ifengyu/intercom/lite/e/h/a;->a()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;

    move-result-object v1

    const/16 v2, 0x4e34

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/e/f;->x:Z

    return-void
.end method

.method public d(ZLcom/ifengyu/blelib/c/e;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/h/a;->d(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public e([B)Lno/nordicsemi/android/ble/t2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/blelib/b/e;->p:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/blelib/b/e;->b(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/t2;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/ifengyu/blelib/c/e;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/ifengyu/blelib/d/c;

    invoke-static {}, Lcom/ifengyu/intercom/lite/e/h/a;->b()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v1

    const/16 v2, 0x4e2e

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/d/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/blelib/b/e;->a(Lcom/ifengyu/blelib/d/c;Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method public synthetic i(Landroid/bluetooth/BluetoothDevice;)Lcom/ifengyu/intercom/lite/models/DeviceModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/u1;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-direct {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;-><init>()V

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setConnected(Z)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setUpdateTime(J)V

    .line 6
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/e;->b(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V

    return-object p1
.end method

.method public n()Lcom/ifengyu/blelib/d/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/e/i/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/e/i/a;-><init>()V

    return-object v0
.end method

.method protected o()Lcom/ifengyu/blelib/d/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected s()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/e/f;->C:Ljava/util/UUID;

    return-object v0
.end method

.method protected t()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/e/f;->A:Ljava/util/UUID;

    return-object v0
.end method

.method protected v()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/e/f;->D:Ljava/util/UUID;

    return-object v0
.end method

.method protected w()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/e/f;->E:Ljava/util/UUID;

    return-object v0
.end method

.method protected x()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/e/f;->B:Ljava/util/UUID;

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/lite/e/f;->y:Z

    return v0
.end method
