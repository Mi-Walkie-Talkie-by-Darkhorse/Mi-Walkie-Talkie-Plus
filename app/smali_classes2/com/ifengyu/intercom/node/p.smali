.class public Lcom/ifengyu/intercom/node/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/p$d;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "p"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/node/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/node/f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private g:Ljava/io/InputStream;

.field private h:Ljava/io/OutputStream;

.field private i:Lcom/ifengyu/intercom/node/transport/j;

.field private j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "writer-watchdog"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/ifengyu/intercom/node/p$d;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p0, p1}, Lcom/ifengyu/intercom/node/p$d;-><init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/p;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;)Lcom/ifengyu/intercom/node/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "getBtKeyConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a()Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    move-result-object p2

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->e:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    if-ne p2, v0, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "allow to connect"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/ifengyu/intercom/node/d;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/ifengyu/intercom/node/d;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x6

    invoke-static {p2}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->f:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_1
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom is low power"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getConnCode()Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->ALLOW:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "allow to connect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a()V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/node/d;

    invoke-direct {p2, p1, v0}, Lcom/ifengyu/intercom/node/d;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Support min version is 1, but got version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->c:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    new-instance p1, Lcom/ifengyu/intercom/node/VersionMismatchException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/VersionMismatchException;-><init>()V

    throw p1

    :cond_1
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-eq v0, p2, :cond_4

    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->WAIT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v0, p2, :cond_2

    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Need confirm connection on your intercom screen!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/p;->b(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE_LOWPOWER:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-eq v0, p2, :cond_3

    :goto_0
    const/4 p2, 0x0

    :goto_1
    return-object p2

    :cond_3
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom is low power"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1

    :cond_4
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "getSealConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getVersion()I

    move-result v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getDeviceId()I

    move-result v1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getConnCode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getLanguage()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v2, v4, :cond_2

    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v4, "allow to connect"

    invoke-static {v2, v4}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a()V

    new-instance v2, Lcom/ifengyu/intercom/node/d;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/ifengyu/intercom/node/d;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->m(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;->getNumber()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mcu_language_type_chinese"

    goto :goto_0

    :cond_0
    const-string v0, "mcu_language_type_english"

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->n(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getColor()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    goto :goto_3

    :cond_2
    sget-object p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-eq v2, p2, :cond_6

    sget-object p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v2, p2, :cond_3

    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Need confirm connection on your intercom screen!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/p;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-eq v2, p2, :cond_5

    sget-object p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_BUSY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v2, p2, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/q/d;->c(Ljava/lang/String;)V

    :cond_4
    :goto_2
    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_5
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom is low power"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1

    :cond_6
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "getSharkConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getVersion()I

    move-result v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getDeviceId()I

    move-result v1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getConnCode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getLanguage()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    move-result-object p2

    sget-object v3, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v2, v3, :cond_1

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "allow to connect"

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->a()V

    new-instance p1, Lcom/ifengyu/intercom/node/d;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Lcom/ifengyu/intercom/node/d;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->o(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;->getNumber()I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "mcu_language_type_chinese"

    goto :goto_0

    :cond_0
    const-string p2, "mcu_language_type_english"

    :goto_0
    invoke-static {p2}, Lcom/ifengyu/intercom/i/d0;->p(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    goto :goto_2

    :cond_1
    sget-object p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-eq v2, p2, :cond_5

    sget-object p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v2, p2, :cond_2

    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Need confirm connection on your intercom screen!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/p;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-eq v2, p2, :cond_4

    sget-object p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_BUSY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v2, p2, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/q/d;->c(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return-object p1

    :cond_4
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom is low power"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1

    :cond_5
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/node/p;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {p1}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw p1
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "doBtKeyHandshake: start..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v0

    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)[B

    move-result-object v1

    const/4 v8, 0x6

    const/16 v2, 0x4e21

    invoke-static {v8, v1, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(I[BI)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p2, v6, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    new-instance v9, Lcom/ifengyu/intercom/node/p$b;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/ifengyu/intercom/node/p$b;-><init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p5, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v8}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    invoke-static {v0, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/ifengyu/intercom/node/btkey/a;

    move-result-object p1

    invoke-virtual {p5, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    instance-of p2, p1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;

    if-nez p2, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "error, device didn\'t start with a connectResponse message"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    check-cast p1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;

    invoke-direct {p0, p3, p1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ConnectQuery"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectResp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ConnectResp"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasHeartbeat()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Heartbeat"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasControl()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Control"

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "ParamQuery"

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamResp()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "ParamResp"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamUpdate()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "ParamUpdate"

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateQuery()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "StateQuery"

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateResp()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "StateResp"

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationSync()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "LocationSync"

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationCtl()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "LocationCtl"

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileReq()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "FileReq"

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFilePack()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "FilePack"

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileResp()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "FileResponse"

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasUpdateResponse()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "UpdateResponse"

    return-object p0

    :cond_e
    const-string p0, "UnknownType"

    return-object p0
.end method

.method private a(Lcom/ifengyu/intercom/node/i;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/g;->a(Lcom/ifengyu/intercom/node/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Ljava/lang/String;Lcom/ifengyu/intercom/node/d;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p6

    if-eqz v11, :cond_2

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected to device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", nodeId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v3, "first connect"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v2

    iget-object v2, v2, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/node/q/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v3, "can not get node id."

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v12, Lcom/ifengyu/intercom/node/o;

    move-object/from16 v8, p2

    invoke-direct {v12, v8, v11, v10}, Lcom/ifengyu/intercom/node/o;-><init>(Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/d;Lcom/ifengyu/intercom/node/transport/j;)V

    new-instance v2, Lcom/ifengyu/intercom/node/c;

    invoke-direct {v2, v9, v1, v12}, Lcom/ifengyu/intercom/node/c;-><init>(Lcom/ifengyu/intercom/node/p;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    iget-object v3, v9, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v13

    new-instance v2, Lcom/ifengyu/intercom/node/k;

    move-object/from16 v7, p1

    invoke-direct {v2, v9, v7, v11, v10}, Lcom/ifengyu/intercom/node/k;-><init>(Lcom/ifengyu/intercom/node/p;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/d;Lcom/ifengyu/intercom/node/transport/j;)V

    new-instance v3, Lcom/ifengyu/intercom/node/c;

    invoke-direct {v3, v9, v1, v2}, Lcom/ifengyu/intercom/node/c;-><init>(Lcom/ifengyu/intercom/node/p;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    iget-object v1, v9, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    iget-object v15, v9, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v6, Lcom/ifengyu/intercom/node/f;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v12

    move-object v5, v13

    move-object v0, v6

    move-object v6, v14

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/ifengyu/intercom/node/f;-><init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/o;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v1, v9, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {v9, v12}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/i;)V

    invoke-virtual/range {p4 .. p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/utils/e;->a(I)V

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "blocking until processing loop finishes..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v1, 0x1

    :try_start_3
    invoke-interface {v14}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    :try_start_4
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Rx thread was cancelled"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    :try_start_6
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Tx thread was cancelled"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Process loop is finished."

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/ifengyu/intercom/node/transport/j;->c()V

    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/ifengyu/intercom/node/p;->c(Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_3
    invoke-interface {v14, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :goto_4
    :try_start_8
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tx or Rx thread threw a exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Process loop is finished."

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/ifengyu/intercom/node/transport/j;->c()V

    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/ifengyu/intercom/node/p;->c(Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    :goto_5
    sget-object v2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v3, "Process loop is finished."

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/ifengyu/intercom/node/transport/j;->c()V

    invoke-virtual/range {p6 .. p6}, Lcom/ifengyu/intercom/node/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/ifengyu/intercom/node/p;->c(Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-interface {v14, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0

    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "connect failed, close."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/ifengyu/intercom/node/transport/j;->c()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    return-void

    :catch_3
    move-exception v0

    sget-object v1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    invoke-interface {v1, p1, p2}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "doDolphinHandshake: start..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v8, 0x1

    invoke-static {v8, v2, v3}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v6

    invoke-static {v0, p2, v6, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    new-instance v9, Lcom/ifengyu/intercom/node/p$c;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/ifengyu/intercom/node/p$c;-><init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p5, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v8}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object p2

    invoke-static {v0, p1, p2, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/transport/j;)I

    invoke-virtual {p5, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->hasConnectResp()Z

    move-result p5

    if-nez p5, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error, device didn\'t start with a connectResponse message, found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p5

    invoke-virtual {p5}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result p5

    const/4 v2, 0x2

    invoke-static {v2, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    sput p5, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p5

    invoke-direct {p0, p3, p5}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/d;

    move-result-object p5

    sget-object v3, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doDolphinHandshake: isWaitingConfirm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v0, p1, p2, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/transport/j;)I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->hasConnectResp()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    :try_start_2
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "connect failed, refused or timeout"

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object p5, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p5, p1

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_3
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "error while waiting for confirm"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-object p5

    :catch_2
    move-exception p1

    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "error while connecting to device:"

    invoke-static {p2, p3, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    sget-object p5, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "doSealHandshake: start..."

    invoke-static {p5, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object p5

    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x4e21

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p5, p2, v0, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    invoke-static {p5, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object p2

    instance-of v0, p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    if-nez v0, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "error, device didn\'t start with a connectResponse message"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    check-cast p2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    invoke-direct {p0, p3, p2}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSealHandshake: isWaitingConfirm = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/p;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {p5, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object p1

    instance-of p4, p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    if-eqz p4, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    invoke-direct {p0, p3, p1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    :try_start_2
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "connect failed, refused or timeout"

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p1

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_3
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "error while waiting for confirm"

    invoke-static {p1, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-object p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v2
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    sget-object p5, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v0, "doSharkHandshake: start..."

    invoke-static {p5, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object p5

    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/g;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x4e21

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p5, p2, v0, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    invoke-static {v1}, Lcom/ifengyu/intercom/i/d0;->e(I)V

    invoke-static {p5, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->c(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object p2

    instance-of v0, p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    if-nez v0, :cond_0

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "error, device didn\'t start with a connectResponse message"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    check-cast p2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    invoke-direct {p0, p3, p2}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSharkHandshake: isWaitingConfirm = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ifengyu/intercom/node/p;->f:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/p;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {p5, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->c(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object p1

    instance-of p4, p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    if-eqz p4, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    check-cast p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    invoke-direct {p0, p3, p1}, Lcom/ifengyu/intercom/node/p;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    :try_start_2
    sget-object p2, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "connect failed, refused or timeout"

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p1

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_3
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p3, "error while waiting for confirm"

    invoke-static {p1, p3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-object p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v2
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/node/transport/j;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/node/transport/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->c:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/transport/j;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/node/g;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;ILandroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "startProcessLoop()"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    iput-object p4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput p5, p0, Lcom/ifengyu/intercom/node/p;->k:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/p;->c()V

    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lcom/ifengyu/intercom/node/p$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/node/p$a;-><init>(Lcom/ifengyu/intercom/node/p;)V

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/node/p;->a:Ljava/util/concurrent/ExecutorService;

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p1, Lcom/ifengyu/intercom/node/transport/j;->a:Ljava/lang/Thread;

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "before doHandshake()"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p1

    iget-object p1, p1, Lcom/ifengyu/intercom/node/q/d;->d:Lcom/ifengyu/intercom/node/q/a;

    iget-object p2, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/node/q/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/ifengyu/intercom/node/p;->l:Ljava/lang/String;

    iget-object p4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p4

    if-ne p4, p3, :cond_4

    :cond_2
    iget-object p4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(I)V

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcom/ifengyu/intercom/node/p;->l:Ljava/lang/String;

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object p4, p0, Lcom/ifengyu/intercom/node/p;->l:Ljava/lang/String;

    invoke-virtual {p1, p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(I)V

    :cond_5
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "config.getDeviceType : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p5}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p1

    if-eq p1, p3, :cond_9

    const/4 p3, 0x4

    if-eq p1, p3, :cond_8

    const/4 p3, 0x5

    if-eq p1, p3, :cond_7

    const/4 p3, 0x6

    if-eq p1, p3, :cond_6

    :goto_1
    move-object v6, p2

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/p;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/p;->c(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/p;->d(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/p;->b(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;

    move-result-object p2

    goto :goto_1

    :goto_2
    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string p2, "doHandshake end"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p;->g:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p;->h:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p;->i:Lcom/ifengyu/intercom/node/transport/j;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/p;->j:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v5, p0, Lcom/ifengyu/intercom/node/p;->l:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/node/p;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Ljava/lang/String;Lcom/ifengyu/intercom/node/d;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallableEnded: nodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/f;

    :try_start_0
    iget-object v1, v0, Lcom/ifengyu/intercom/node/f;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Got exception while close inputStream"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/ifengyu/intercom/node/f;->d:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object v1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "Got exception while close outputStream"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    iget-object v1, v0, Lcom/ifengyu/intercom/node/f;->b:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ifengyu/intercom/node/f;->a:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v1, "onCallableEnded - both reader and writer threads are already closed"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/p;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, v0, Lcom/ifengyu/intercom/node/f;->b:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "onCallableEnded - stopping rx thread"

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/ifengyu/intercom/node/f;->b:Ljava/util/concurrent/Future;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object p1, v0, Lcom/ifengyu/intercom/node/f;->a:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/ifengyu/intercom/node/p;->m:Ljava/lang/String;

    const-string v2, "onCallableEnded - stopping tx thread"

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/ifengyu/intercom/node/f;->a:Ljava/util/concurrent/Future;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/p;->k:I

    return v0
.end method
