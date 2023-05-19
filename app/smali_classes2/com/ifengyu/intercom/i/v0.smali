.class public Lcom/ifengyu/intercom/i/v0;
.super Lcom/ifengyu/intercom/i/z0/d;
.source "LiteBleManager.java"


# static fields
.field public static final F:Ljava/util/UUID;

.field public static final G:Ljava/util/UUID;

.field public static final H:Ljava/util/UUID;

.field public static final I:Ljava/util/UUID;

.field public static final J:Ljava/util/UUID;


# instance fields
.field private A:[B

.field private B:[B

.field private C:[B

.field private D:J

.field private final E:Ljava/lang/Runnable;

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

.field private u:Z

.field private v:Z

.field private w:Z

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/ifengyu/blelib/utils/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/b;->b:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/v0;->F:Ljava/util/UUID;

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/j/b;->c:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/v0;->G:Ljava/util/UUID;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/j/b;->d:Ljava/util/UUID;

    sput-object v0, Lcom/ifengyu/intercom/i/v0;->H:Ljava/util/UUID;

    const-string v0, "00010203-0405-0607-0809-0a0b0c0d1912"

    .line 4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/i/v0;->I:Ljava/util/UUID;

    const-string v0, "00010203-0405-0607-0809-0a0b0c0d2b12"

    .line 5
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/i/v0;->J:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
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

    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0;->r:Landroid/os/Handler;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0;->s:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/device/lite/c/b/a;

    invoke-direct {p1}, Lcom/ifengyu/intercom/device/lite/c/b/a;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0;->t:Lcom/ifengyu/blelib/c/d;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/v0;->w:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    const/16 v3, 0x4e21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const/16 v3, 0x4e22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/i/v0;->x:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x4e37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/16 p1, 0x4e38

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/i/v0;->y:Ljava/util/List;

    .line 8
    new-instance p1, Lcom/ifengyu/intercom/i/p;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/i/p;-><init>(Lcom/ifengyu/intercom/i/v0;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0;->E:Ljava/lang/Runnable;

    return-void
.end method

.method private E0(Lcom/ifengyu/blelib/c/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/v0;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_1

    .line 5
    iget-boolean p1, p0, Lcom/ifengyu/intercom/i/v0;->v:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "Connection is allowed, no need to call repeatedly"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/v0;->v:Z

    const/16 v0, 0x9

    .line 8
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->A0(I)V

    .line 9
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/d0;->i0(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->x0(Z)V

    .line 11
    new-instance v1, Lcom/ifengyu/intercom/i/v0$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/v0$d;-><init>(Lcom/ifengyu/intercom/i/v0;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/i/v0;->f1(Lcom/ifengyu/blelib/b/c;)V

    .line 12
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v2, "Allow to connect"

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 14
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/b;->a(I)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "waiting confirm connection"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 17
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/i/v0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->E:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->LOWPOWER:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, device low power"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 21
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 22
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->REFUSE:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne p1, v0, :cond_4

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, device refused"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 25
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 26
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_0

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, other reason"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 28
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 29
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    :goto_0
    return-void
.end method

.method private F0(Lcom/ifengyu/blelib/c/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/v0;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/i/v0;->v:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "Connection is allowed, no need to call repeatedly"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ifengyu/intercom/i/v0;->v:Z

    const/16 v1, 0x9

    .line 8
    invoke-static {v1}, Lcom/ifengyu/intercom/p/d0;->A0(I)V

    .line 9
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/p/d0;->i0(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->x0(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getKey()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/i/v0;->s1([B)V

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getIv()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/i/v0;->r1([B)V

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/v0;->t1([B)V

    .line 14
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->B0()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", iv: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->A0()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->C0()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 16
    invoke-virtual {p0, v2, v3}, Lno/nordicsemi/android/ble/w1;->I(J)Lno/nordicsemi/android/ble/p2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->f()V

    .line 17
    new-instance p1, Lcom/ifengyu/intercom/i/v0$f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/i/v0$f;-><init>(Lcom/ifengyu/intercom/i/v0;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/v0;->f1(Lcom/ifengyu/blelib/b/c;)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v2, "Allow to connect"

    invoke-static {p1, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 20
    invoke-static {v1}, Lcom/ifengyu/intercom/l/a/d/b;->a(I)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_3

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "waiting confirm connection"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 23
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/i/v0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->E:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->LOWPOWER:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v0, v1, :cond_4

    .line 26
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, device low power"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 27
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 28
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->REFUSE:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne p1, v0, :cond_5

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, device refused"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 31
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 32
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    goto :goto_0

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "connect failed, other reason"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 34
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 35
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    :goto_0
    return-void
.end method

.method private G0(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ifengyu/blelib/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result v0

    const/16 v1, 0x4e22

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->WAIT:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-eq v1, v2, :cond_5

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->I0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getConnectCode()Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;->ALLOW:Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;

    if-ne v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/v0;->m1(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/v0;->E0(Lcom/ifengyu/blelib/c/c;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/v0;->E0(Lcom/ifengyu/blelib/c/c;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result v0

    const/16 v1, 0x4e38

    if-ne v0, v1, :cond_3

    .line 10
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/v0;->F0(Lcom/ifengyu/blelib/c/c;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result v0

    const/16 v1, 0x4e36

    if-ne v0, v1, :cond_5

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;

    .line 13
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->ON:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/v0;->o1(Z)V

    .line 14
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/blelib/b/a;

    .line 15
    invoke-interface {v1, p1, p2}, Lcom/ifengyu/blelib/b/a;->a(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private H1(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/i/s;-><init>(Lcom/ifengyu/intercom/i/v0;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/i/r;->a:Lcom/ifengyu/intercom/i/r;

    new-instance v0, Lcom/ifengyu/intercom/i/q;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/q;-><init>(Lcom/ifengyu/intercom/i/v0;)V

    .line 4
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private J0(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->x:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private K0(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->y:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic L0()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    .line 2
    invoke-virtual {p0}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/q2;->f()V

    return-void
.end method

.method private synthetic N0(ILcom/ifengyu/blelib/b/c;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/v0;->w0(ILcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method private synthetic P0(Landroid/bluetooth/BluetoothDevice;)V
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

.method private synthetic R0(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data failed, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method private synthetic T0(I)V
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

.method private synthetic V0(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[BLcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/models/DeviceModel;
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
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 7
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    .line 9
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVerHw()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionHw(I)V

    .line 11
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVerSoft()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionSoft(I)V

    .line 12
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getVerVoice()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionVoice(I)V

    .line 13
    invoke-virtual {p3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDeviceColor()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 14
    invoke-static {p2}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setToken(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/DeviceModel;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/DeviceModel;->getCreateTime()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-nez p3, :cond_1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 18
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 19
    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/database/a/e;->h(Lcom/ifengyu/intercom/models/DeviceModel;)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 22
    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/database/a/e;->j(Lcom/ifengyu/intercom/models/DeviceModel;)J

    :goto_0
    return-object v2

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic X0(Lcom/ifengyu/intercom/models/DeviceModel;)V
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

.method private synthetic Y0(Ljava/lang/Throwable;)V
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

.method private b1([B)Lcom/ifengyu/blelib/c/c;
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->x0([B)Z

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
    invoke-static {p1}, Lcom/ifengyu/blelib/c/f;->b([B)I

    move-result v0

    .line 4
    invoke-static {p1}, Lcom/ifengyu/blelib/c/f;->h([B)I

    move-result v2

    .line 5
    invoke-static {p1}, Lcom/ifengyu/blelib/c/f;->g([B)I

    move-result v3

    .line 6
    invoke-static {p1}, Lcom/ifengyu/blelib/c/f;->d([B)[B

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse received pack-->cmdId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", seq: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->I0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/v0;->J0(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->y0([B)[B

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/v0;->K0(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/ifengyu/intercom/i/v0;->z:Lcom/ifengyu/blelib/utils/a;

    invoke-virtual {v2}, Lcom/ifengyu/blelib/utils/a;->d()[B

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/i/v0;->z:Lcom/ifengyu/blelib/utils/a;

    invoke-virtual {v3}, Lcom/ifengyu/blelib/utils/a;->c()[B

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/ifengyu/blelib/utils/b;->b([B[B[B)[B

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->y0([B)[B

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->B0()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->A0()[B

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/ifengyu/blelib/utils/b;->b([B[B[B)[B

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->y0([B)[B

    move-result-object p1

    .line 17
    :goto_0
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    iget-object v2, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse received pack-->decrypt data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    const-string v0, "parse receive pack-->data is null"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 20
    :cond_5
    iget-object v1, p0, Lcom/ifengyu/intercom/i/v0;->t:Lcom/ifengyu/blelib/c/d;

    invoke-interface {v1, v0, p1}, Lcom/ifengyu/blelib/c/d;->a(I[B)Lcom/ifengyu/blelib/c/c;

    move-result-object p1

    return-object p1
.end method

.method private c1(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/v0;->a1(Lcom/ifengyu/blelib/c/c;)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/i/v0;->k1([BLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method static synthetic l0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method private l1(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->r:Landroid/os/Handler;

    new-instance v1, Lcom/ifengyu/intercom/i/v0$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/i/v0$c;-><init>(Lcom/ifengyu/intercom/i/v0;Ljava/lang/String;[B)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic m0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method private m1(Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->z0()Lcom/ifengyu/blelib/utils/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/blelib/utils/a;->b([B)V

    .line 5
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generate secret key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->z0()Lcom/ifengyu/blelib/utils/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/blelib/utils/a;->f()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->C0()[B

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/i/v0$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/i/v0$e;-><init>(Lcom/ifengyu/intercom/i/v0;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/i/v0;->v1([BLcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method static synthetic n0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o0(Lcom/ifengyu/intercom/i/v0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    return-void
.end method

.method static synthetic p0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q0(Lcom/ifengyu/intercom/i/v0;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/v0;->H1(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V

    return-void
.end method

.method static synthetic r0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method private v0([BI)[B
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/ifengyu/intercom/i/v0;->D:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    :cond_0
    iput-wide v0, p0, Lcom/ifengyu/intercom/i/v0;->D:J

    const/16 v2, 0x8

    .line 4
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 5
    array-length v1, v0

    add-int/2addr v1, p2

    add-int/lit8 v2, v1, 0x2

    .line 6
    new-array v2, v2, [B

    int-to-long v3, v1

    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 7
    invoke-static {v2, v3, v4, v1, v5}, Lcom/ifengyu/blelib/c/f;->i([BJII)V

    .line 8
    invoke-static {p1, v1, v2, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v5

    .line 9
    array-length p1, v0

    invoke-static {v0, v1, v2, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private w0(ILcom/ifengyu/blelib/b/c;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/blelib/b/b;->h(ILcom/ifengyu/blelib/b/c;)V

    :cond_0
    return-void
.end method

.method private x0([B)Z
    .locals 2

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/ifengyu/blelib/c/f;->a([BII)[B

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/ifengyu/blelib/c/f;->c([B)[B

    move-result-object p1

    .line 3
    invoke-static {v0}, Lcom/ifengyu/blelib/c/b;->b([B)[B

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/ifengyu/blelib/c/a;->c([B[B)Z

    move-result p1

    return p1
.end method

.method private y0([B)[B
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
    invoke-static {p1}, Lcom/ifengyu/blelib/c/f;->e([B)I

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
    invoke-static {p1, v2, v0}, Lcom/ifengyu/blelib/c/f;->a([BII)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected A0()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->B:[B

    return-object v0
.end method

.method public A1(ZLcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->j(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method protected B0()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->A:[B

    return-object v0
.end method

.method public B1(ZLcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->m(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method protected C0()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->C:[B

    return-object v0
.end method

.method public C1(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;Lcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->n(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public D0([B)Lno/nordicsemi/android/ble/u2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/z0/d;->X()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/intercom/i/z0/d;->a0(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    return-object p1
.end method

.method public D1(Ljava/lang/String;Lcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->o(Ljava/lang/String;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public E1(ZLcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->p(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public F1(ILcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->q(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public G1(ZLcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->r(Z)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public H0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/i/v0;->u:Z

    return v0
.end method

.method protected I0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/i/v0;->w:Z

    return v0
.end method

.method public synthetic M0()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/i/v0;->L0()V

    return-void
.end method

.method public synthetic O0(ILcom/ifengyu/blelib/b/c;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/i/v0;->N0(ILcom/ifengyu/blelib/b/c;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected P(Lno/nordicsemi/android/ble/l2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/d;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/ble/w1;->o(Landroid/bluetooth/BluetoothGattCharacteristic;)Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/i/v0$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/v0$b;-><init>(Lcom/ifengyu/intercom/i/v0;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/i/v0$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/i/v0$a;-><init>(Lcom/ifengyu/intercom/i/v0;)V

    .line 2
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    .line 3
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/l2;->H(Lno/nordicsemi/android/ble/g2;)Lno/nordicsemi/android/ble/l2;

    return-void
.end method

.method public synthetic Q0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->P0(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected S()Lno/nordicsemi/android/ble/data/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/d/a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/d/a;-><init>()V

    return-object v0
.end method

.method public synthetic S0(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/i/v0;->R0(ILandroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method protected U()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/v0;->H:Ljava/util/UUID;

    return-object v0
.end method

.method public synthetic U0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->T0(I)V

    return-void
.end method

.method protected V()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/v0;->F:Ljava/util/UUID;

    return-object v0
.end method

.method protected W()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public synthetic W0(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[BLcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/i/v0;->V0(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[BLcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method protected Y()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/v0;->I:Ljava/util/UUID;

    return-object v0
.end method

.method protected Z()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/v0;->J:Ljava/util/UUID;

    return-object v0
.end method

.method public synthetic Z0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->Y0(Ljava/lang/Throwable;)V

    return-void
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

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/i/v0;->v:Z

    .line 4
    new-instance v0, Lcom/ifengyu/blelib/utils/a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/utils/a;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->a()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/i/v0;->p1(Lcom/ifengyu/blelib/utils/a;)V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/blelib/c/a;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/i/v0;->t1([B)V

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->e()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/i/v0;->l1(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/blelib/utils/a;->e()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/i/v0;->l1(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method protected a1(Lcom/ifengyu/blelib/c/c;)[B
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->a()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->I0()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/v0;->J0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/i/v0;->K0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->v0([BI)[B

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/i/v0;->z:Lcom/ifengyu/blelib/utils/a;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/utils/a;->d()[B

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/i/v0;->z:Lcom/ifengyu/blelib/utils/a;

    invoke-virtual {v2}, Lcom/ifengyu/blelib/utils/a;->c()[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/ifengyu/blelib/utils/b;->c([B[B[B)[B

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/i/v0;->v0([BI)[B

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->B0()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/i/v0;->A0()[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/ifengyu/blelib/utils/b;->c([B[B[B)[B

    move-result-object p1

    .line 11
    :cond_2
    :goto_0
    new-instance v1, Lcom/ifengyu/blelib/c/e;

    invoke-direct {v1, v0, p1}, Lcom/ifengyu/blelib/c/e;-><init>(I[B)V

    .line 12
    invoke-virtual {v1}, Lcom/ifengyu/blelib/c/e;->e()[B

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/ifengyu/intercom/i/z0/d;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send commend-->cmdId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packet: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/c/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p1
.end method

.method protected b0()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/v0;->G:Ljava/util/UUID;

    return-object v0
.end method

.method protected c0(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/ifengyu/blelib/c/f;->g([B)I

    move-result v0

    .line 2
    invoke-static {p2}, Lcom/ifengyu/blelib/c/f;->h([B)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/i/v0;->q1(Z)V

    .line 4
    invoke-static {}, Lcom/ifengyu/blelib/b/b;->d()Lcom/ifengyu/blelib/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/blelib/b/b;->g(I)Lcom/ifengyu/blelib/b/c;

    move-result-object v0

    .line 5
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/i/v0;->b1([B)Lcom/ifengyu/blelib/c/c;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, -0x4

    .line 6
    invoke-virtual {v0, p1}, Lcom/ifengyu/blelib/b/c;->c(I)V

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p2}, Lcom/ifengyu/blelib/b/c;->d(Lcom/ifengyu/blelib/c/c;)V

    .line 8
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/i/v0;->G0(Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/blelib/c/c;)V

    return-void
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
    iget-object p2, p0, Lcom/ifengyu/intercom/i/v0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->E:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/z0/d;->k0(Landroid/bluetooth/BluetoothDevice;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->a()V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/v0;->p1(Lcom/ifengyu/blelib/utils/a;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/v0;->r1([B)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/v0;->s1([B)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/i/v0;->t1([B)V

    return-void
.end method

.method public d1(ILcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->g(I)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p1

    const/16 v1, 0x4e27

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

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
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/i/v0;->c1(I)V

    return-void
.end method

.method public e1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/device/lite/c/a/a;->f()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object v1

    const/16 v2, 0x4e29

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public f1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/device/lite/c/a/a;->h()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v1

    const/16 v2, 0x4e23

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public g1(Lcom/ifengyu/blelib/b/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public i1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/device/lite/c/a/a;->a()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;

    move-result-object v1

    const/16 v2, 0x4e32

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public j1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/device/lite/c/a/a;->a()Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;

    move-result-object v1

    const/16 v2, 0x4e34

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method protected k1([BLcom/ifengyu/blelib/b/c;)V
    .locals 2

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
    invoke-static {p1}, Lcom/ifengyu/blelib/c/f;->g([B)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/i/z0/d;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v1, p1}, Lno/nordicsemi/android/ble/w1;->J(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/u2;->V()Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/i/o;

    invoke-direct {v1, p0, v0, p2}, Lcom/ifengyu/intercom/i/o;-><init>(Lcom/ifengyu/intercom/i/v0;ILcom/ifengyu/blelib/b/c;)V

    .line 7
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/ble/u2;->I(Lno/nordicsemi/android/ble/v2/b;)Lno/nordicsemi/android/ble/u2;

    new-instance p2, Lcom/ifengyu/intercom/i/n;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/i/n;-><init>(Lcom/ifengyu/intercom/i/v0;)V

    .line 8
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance p2, Lcom/ifengyu/intercom/i/m;

    invoke-direct {p2, p0, v0}, Lcom/ifengyu/intercom/i/m;-><init>(Lcom/ifengyu/intercom/i/v0;I)V

    .line 9
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    new-instance p2, Lcom/ifengyu/intercom/i/l;

    invoke-direct {p2, p0, v0}, Lcom/ifengyu/intercom/i/l;-><init>(Lcom/ifengyu/intercom/i/v0;I)V

    .line 10
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/u2;->O(Lno/nordicsemi/android/ble/v2/f;)Lno/nordicsemi/android/ble/u2;

    .line 11
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method

.method public n1(Lcom/ifengyu/blelib/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {}, Lcom/ifengyu/intercom/device/lite/c/a/a;->e()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v1

    const/16 v2, 0x4e2e

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public o1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/v0;->u:Z

    return-void
.end method

.method public p1(Lcom/ifengyu/blelib/utils/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0;->z:Lcom/ifengyu/blelib/utils/a;

    return-void
.end method

.method public q1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/i/v0;->w:Z

    return-void
.end method

.method public r1([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0;->B:[B

    return-void
.end method

.method public s1([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0;->A:[B

    return-void
.end method

.method public t1([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0;->C:[B

    return-void
.end method

.method public u1(Ljava/lang/String;[BLcom/ifengyu/blelib/b/c;)V
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

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/lite/c/a/a;->b(Ljava/lang/String;[B)Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest;

    move-result-object p1

    const/16 p2, 0x4e21

    invoke-direct {v0, p2, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p3}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public v1([BLcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->d([B)Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest;

    move-result-object p1

    const/16 v1, 0x4e37

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public w1(Lcom/ifengyu/blelib/b/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public x1(IIIIILcom/ifengyu/blelib/b/c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/ifengyu/intercom/device/lite/c/a/a;->k(IIIII)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p1

    const/16 p2, 0x4e2c

    invoke-direct {v0, p2, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p6}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method public y1(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;Lcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->l(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;

    move-result-object p1

    const/16 v1, 0x4e2c

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method protected z0()Lcom/ifengyu/blelib/utils/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0;->z:Lcom/ifengyu/blelib/utils/a;

    return-object v0
.end method

.method public z1(ILcom/ifengyu/blelib/b/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/c/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/c/a/a;->i(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object p1

    const/16 v1, 0x4e25

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/blelib/c/c;-><init>(ILcom/google/protobuf/Message;)V

    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/i/v0;->h1(Lcom/ifengyu/blelib/c/c;Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method
