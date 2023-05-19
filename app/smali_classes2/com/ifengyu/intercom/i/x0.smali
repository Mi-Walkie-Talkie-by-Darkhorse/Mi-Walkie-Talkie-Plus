.class public Lcom/ifengyu/intercom/i/x0;
.super Lcom/ifengyu/intercom/i/z0/d;
.source "SealBleManager.java"


# static fields
.field public static final w:Ljava/util/UUID;

.field public static final x:Ljava/util/UUID;

.field public static final y:Ljava/util/UUID;

.field private static z:I


# instance fields
.field private final r:Landroid/os/Handler;

.field private s:Z

.field private t:Z

.field private final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/b;->b:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/x0;->w:Ljava/util/UUID;

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/j/b;->c:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/x0;->x:Ljava/util/UUID;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/j/b;->d:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/x0;->y:Ljava/util/UUID;

    const/4 v0, 0x1

    .line 4
    sput v0, Lcom/ifengyu/intercom/i/x0;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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

    iput-object p1, p0, Lcom/ifengyu/intercom/i/x0;->r:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/x0;->s:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/x0;->t:Z

    .line 5
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/x0;->u:Ljava/util/HashMap;

    .line 6
    new-instance p1, Lcom/ifengyu/intercom/i/f0;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/i/f0;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/x0;->v:Ljava/lang/Runnable;

    return-void
.end method

.method private A0(Lcom/google/protobuf/Message;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private B0(Lcom/google/protobuf/Message;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerOn()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerOn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "powerOnCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFactoryReset()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFactoryReset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "factoryResetCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDeviceIdQuery()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDeviceIdQuery()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deviceIdQueryCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getKeyLock()I

    move-result v1

    if-lez v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getKeyLock()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyLockCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerLevelQuery()I

    move-result v1

    if-lez v1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getPowerLevelQuery()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getPowerLevelQuery"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFmOpen()I

    move-result v1

    if-lez v1, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getFmOpen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fmOpenCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getConnBtEar()I

    move-result v1

    if-lez v1, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getConnBtEar()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "connBtEarCount"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v1, "Seal_Device_Event"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method static synthetic E0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result p0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic F0()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->U0(I)V

    .line 2
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/q2;->f()V

    return-void
.end method

.method private F1([BIII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 1
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    .line 2
    aput-byte v0, p1, v0

    int-to-long v0, p2

    const/4 p2, 0x2

    .line 3
    invoke-static {p1, v0, v1, p2, p2}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->g([BJII)V

    int-to-long v0, p3

    const/4 p3, 0x4

    .line 4
    invoke-static {p1, v0, v1, p3, p2}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->g([BJII)V

    int-to-long p3, p4

    const/4 v0, 0x6

    .line 5
    invoke-static {p1, p3, p4, v0, p2}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->g([BJII)V

    return-void
.end method

.method private synthetic H0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data success, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private H1(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/x0;->r:Landroid/os/Handler;

    new-instance v1, Lcom/ifengyu/intercom/i/x0$e;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/i/x0$e;-><init>(Lcom/ifengyu/intercom/i/x0;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private I1(Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/i/c0;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/i/c0;-><init>(Lcom/ifengyu/intercom/i/x0;I)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/i/h0;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/i/h0;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    new-instance v0, Lcom/ifengyu/intercom/i/d0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/d0;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    .line 4
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic J0(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data failed, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", status: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic L0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "send data failed, invalid request"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic N0(ILjava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->b()Lcom/ifengyu/intercom/device/oldDevice/v/b;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/device/oldDevice/v/a;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    move-object v3, v2

    move-object v6, p2

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/ifengyu/intercom/device/oldDevice/v/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->g(Z)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/v/b;->c(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    return-object v2

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic P0(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    sget v1, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->STATE_CONNECTED:I

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/x0;->t:Z

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/z0/d;->q:Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/i/x0;->u:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private synthetic R0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v1, "update device param failed"

    invoke-static {v0, v1, p1}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private T0([B)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->c([B)I

    move-result v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "received pack length error"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->p0([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "parse received pack-->invalid crc"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->f([B)I

    move-result v0

    .line 7
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->a([B)I

    move-result v1

    .line 8
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->e([B)I

    move-result v3

    .line 9
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/c;->d([B)[B

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    iget-object v4, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse received pack-->cmdId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", seq: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    :try_start_0
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;->c([BI)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v2
.end method

.method private U0(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private W0(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;->SEAL_USERDEF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$SEAL_CHTYPE;

    if-eq v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/i/x0$f;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne p1, v1, :cond_4

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/x0;->q0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne p1, v1, :cond_4

    .line 7
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/x0;->V0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne p1, v1, :cond_4

    .line 9
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/x0;->V0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private X0(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVerHw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerHw()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->N0(I)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVerSoft()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVerSoft()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->O0(I)V

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasDeviceName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getDeviceName()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "GB2312"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->j0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasActivate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getActivate()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/x0;->E1(Z)V

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->H0(Z)V

    .line 10
    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasBtAudio()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getBtAudio()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->m0(I)V

    .line 12
    :cond_7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVoiceAlert()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVoiceAlert()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->G0(Z)V

    .line 14
    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasIsAllPublic()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getIsAllPublic()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->F0(Z)V

    .line 16
    :cond_b
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasPwsaveMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getPwsaveMode()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->L0(I)V

    .line 18
    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasVoiceType()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 19
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getVoiceType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->X0(I)V

    .line 20
    :cond_d
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChSq()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChSq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->M0(I)V

    .line 23
    :cond_e
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChVox()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChVox()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->P0(I)V

    .line 24
    :cond_f
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChElim()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 25
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChElim()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->E0(Z)V

    .line 26
    :cond_11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChBand()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChBand()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->C0(I)V

    .line 27
    :cond_12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChPolite()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChPolite()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne p1, v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    invoke-static {v1}, Lcom/ifengyu/intercom/p/d0;->K0(Z)V

    :cond_14
    return-void
.end method

.method private Y0(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)[B
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->a()I

    move-result p1

    .line 3
    array-length v1, v0

    add-int/lit8 v2, v1, 0x8

    add-int/lit8 v3, v2, 0x2

    .line 4
    new-array v4, v2, [B

    .line 5
    sget v5, Lcom/ifengyu/intercom/i/x0;->z:I

    invoke-direct {p0, v4, v3, p1, v5}, Lcom/ifengyu/intercom/i/x0;->F1([BIII)V

    const/4 p1, 0x0

    const/16 v5, 0x8

    .line 6
    invoke-static {v0, p1, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-array v0, v3, [B

    .line 8
    invoke-static {v4, p1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/i/x0;->r0([B)[B

    move-result-object v1

    const/4 v3, 0x2

    .line 10
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    sget p1, Lcom/ifengyu/intercom/i/x0;->z:I

    add-int/lit8 p1, p1, 0x1

    const v1, 0xffff

    rem-int/2addr p1, v1

    sput p1, Lcom/ifengyu/intercom/i/x0;->z:I

    return-object v0
.end method

.method private i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->Y0(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/x0;->Z0([B)V

    return-void
.end method

.method static synthetic l0(Lcom/ifengyu/intercom/i/x0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m0(Lcom/ifengyu/intercom/i/x0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n0(Lcom/ifengyu/intercom/i/x0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o0(Lcom/ifengyu/intercom/i/x0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method private p0([B)Z
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/ifengyu/blelib/c/f;->a([BII)[B

    move-result-object v0

    .line 2
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v2, v1}, Lcom/ifengyu/blelib/c/f;->a([BII)[B

    move-result-object p1

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/x/b;->a([B)[B

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/ifengyu/blelib/c/a;->c([B[B)Z

    move-result p1

    return p1
.end method

.method private r0([B)[B
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/x/b;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method private t0(Landroid/bluetooth/BluetoothDevice;Lcom/google/protobuf/Message;)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/x0;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/x0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    check-cast p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    .line 4
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getConnCode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getLanguage()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v0, v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v2, "Allow to connect"

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getDeviceId()I

    move-result v0

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->a()V

    const/4 v2, 0x5

    .line 10
    invoke-static {v2}, Lcom/ifengyu/intercom/p/d0;->A0(I)V

    .line 11
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->i0(Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->D0(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;->getNumber()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mcu_language_type_chinese"

    goto :goto_0

    :cond_0
    const-string p1, "mcu_language_type_english"

    :goto_0
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->I0(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->U0(I)V

    .line 15
    invoke-static {v2}, Lcom/ifengyu/intercom/l/a/d/b;->a(I)V

    .line 16
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->hasColor()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getColor()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/i/x0;->I1(Ljava/lang/String;I)V

    goto :goto_2

    .line 18
    :cond_2
    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v0, p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string p2, "waiting confirm connection"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 20
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->U0(I)V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/i/x0;->r:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ifengyu/intercom/i/x0;->v:Ljava/lang/Runnable;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 22
    :cond_3
    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v0, p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string p2, "connect failed, device low power"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 24
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->U0(I)V

    .line 25
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_2

    .line 26
    :cond_4
    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v0, p1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string p2, "connect failed, device refused"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 28
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->U0(I)V

    .line 29
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_2

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string p2, "connect failed, other reason"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 31
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->U0(I)V

    .line 32
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    :cond_6
    :goto_2
    return-void
.end method

.method private u0(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/u/a;->a()I

    move-result v1

    const/16 v2, 0x4e22

    if-eq v1, v2, :cond_8

    const/16 p1, 0x4e25

    if-eq v1, p1, :cond_7

    const/16 p1, 0x4e28

    if-eq v1, p1, :cond_6

    const/16 p1, 0x4e2b

    if-eq v1, p1, :cond_5

    const/16 p1, 0x4e2e

    if-eq v1, p1, :cond_4

    const/16 p1, 0x4e30

    if-eq v1, p1, :cond_3

    const/16 p1, 0x4e33

    if-eq v1, p1, :cond_2

    const/16 p1, 0x4e35

    if-eq v1, p1, :cond_1

    const/16 p1, 0x4e39

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->B0(Lcom/google/protobuf/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->w0(Lcom/google/protobuf/Message;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->v0(Lcom/google/protobuf/Message;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->A0(Lcom/google/protobuf/Message;)V

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->a()Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->b(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    goto :goto_0

    .line 8
    :cond_5
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->x0(Lcom/google/protobuf/Message;)V

    goto :goto_0

    .line 9
    :cond_6
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->y0(Lcom/google/protobuf/Message;)V

    goto :goto_0

    .line 10
    :cond_7
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->z0(Lcom/google/protobuf/Message;)V

    goto :goto_0

    .line 11
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/i/x0;->t0(Landroid/bluetooth/BluetoothDevice;Lcom/google/protobuf/Message;)V

    :goto_0
    return-void
.end method

.method private v0(Lcom/google/protobuf/Message;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private w0(Lcom/google/protobuf/Message;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private x0(Lcom/google/protobuf/Message;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->W0(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    :cond_0
    return-void
.end method

.method private y0(Lcom/google/protobuf/Message;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private z0(Lcom/google/protobuf/Message;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_2

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->X0(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/service/ShareLocationService;->e()Lcom/ifengyu/intercom/service/ShareLocationService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/service/ShareLocationService;->e()Lcom/ifengyu/intercom/service/ShareLocationService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    .line 10
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/otto/b;->i(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public A1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->m()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v1

    const/16 v2, 0x4e38

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public B1(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->t(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public C0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/i/x0;->s:Z

    return v0
.end method

.method public C1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public D0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/i/x0;->t:Z

    return v0
.end method

.method public D1(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->x(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public E1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/x0;->s:Z

    return-void
.end method

.method public synthetic G0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/i/x0;->F0()V

    return-void
.end method

.method public G1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/x0;->t:Z

    return-void
.end method

.method public synthetic I0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->H0(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic K0(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/x0;->J0(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public synthetic M0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/i/x0;->L0()V

    return-void
.end method

.method public synthetic O0(ILjava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/x0;->N0(ILjava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object p1

    return-object p1
.end method

.method protected P(Lno/nordicsemi/android/ble/l2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    if-lez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/ble/w1;->o(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/i/x0$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/x0$b;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v2, Lcom/ifengyu/intercom/i/x0$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/x0$a;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    .line 3
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 4
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    :cond_0
    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/ble/w1;->n(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/x0$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/x0$d;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/i/x0$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/x0$c;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    .line 6
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 7
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    :cond_1
    return-void
.end method

.method public synthetic Q0(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->P0(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    return-void
.end method

.method protected S()Lno/nordicsemi/android/ble/data/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/d/a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/d/a;-><init>()V

    return-object v0
.end method

.method public synthetic S0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->R0(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected U()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/x0;->y:Ljava/util/UUID;

    return-object v0
.end method

.method protected V()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/x0;->w:Ljava/util/UUID;

    return-object v0
.end method

.method public V0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/i/x0;->u:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method protected W()I
    .locals 1

    const/16 v0, 0xa3

    return v0
.end method

.method protected Z0([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "send data failed, device may be disconnected"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p1}, Lno/nordicsemi/android/ble/w1;->J(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/u2;->V()Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/i/e0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/e0;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    .line 5
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/i/i0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/i0;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    .line 6
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/i/j0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/j0;-><init>(Lcom/ifengyu/intercom/i/x0;)V

    .line 7
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->O(Lno/nordicsemi/android/ble/v2/f;)Lno/nordicsemi/android/ble/u2;

    .line 8
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->H1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->H1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_DELETE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->b(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p1

    const/16 v1, 0x4e2a

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method protected b0()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/x0;->x:Ljava/util/UUID;

    return-object v0
.end method

.method public b1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_INSERT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->b(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p1

    const/16 v1, 0x4e2a

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method protected c0(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/x0;->T0([B)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/x0;->u0(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public c1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_MODIFY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->b(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p1

    const/16 v1, 0x4e2a

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/i/z0/d;->d(Landroid/bluetooth/BluetoothDevice;I)V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/i/x0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/i/x0;->v:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;->k0(Landroid/bluetooth/BluetoothDevice;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public d1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->b(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p1

    const/16 v1, 0x4e29

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

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
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/x0;->U0(I)V

    return-void
.end method

.method public e1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->c(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object v1

    const/16 v2, 0x4e29

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public f1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->d(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p1

    const/16 v1, 0x4e29

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public g1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->e(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object v1

    const/16 v2, 0x4e26

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public h1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_UPDATE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->e(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object p1

    const/16 v1, 0x4e27

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public j1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startConnectRequest deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object p1

    const/16 v1, 0x4e21

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public k1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->a()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e24

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public l1(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->o(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public m1(Lcom/ifengyu/intercom/bean/BtEarBean;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->i(Lcom/ifengyu/intercom/bean/BtEarBean;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object p1

    const/16 v1, 0x4e32

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public n1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->n()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v1

    const/16 v2, 0x4e31

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public o1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->j()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object v1

    const/16 v2, 0x4e32

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public p1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->k()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v1

    const/16 v2, 0x4e34

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public q0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/i/x0;->u:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public q1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->l()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v1

    const/16 v2, 0x4e34

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public r1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->g()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    const/16 v2, 0x4e23

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public s0()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/x0;->u:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/i/g0;->a:Lcom/ifengyu/intercom/i/g0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public s1(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->q(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public t1(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->h(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    move-result-object p1

    const/16 v1, 0x4e30

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public u1(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->s(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public v1(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->r(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public w1(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->p(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public x1(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->u(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public y1(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->v(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method

.method public z1(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/b;->w(Z)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p1

    const/16 v1, 0x4e24

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/x0;->i1(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;)V

    return-void
.end method
