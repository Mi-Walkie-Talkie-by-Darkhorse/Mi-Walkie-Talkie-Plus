.class public Lcom/ifengyu/intercom/node/q;
.super Ljava/lang/Object;
.source "WalkTalkTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/q$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/node/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/lang/Object;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/node/g;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Z

.field private i:Ljava/io/InputStream;

.field private j:Ljava/io/OutputStream;

.field private k:Lcom/ifengyu/intercom/node/transport/j;

.field private l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/q;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/q;->g:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "writer-watchdog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/ifengyu/intercom/node/q$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, p0, v0}, Lcom/ifengyu/intercom/node/q$a;-><init>(Lcom/ifengyu/intercom/node/q;Lcom/ifengyu/intercom/node/q;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/node/q;->f:Landroid/os/Handler;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;)Lcom/ifengyu/intercom/node/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "getBtKeyConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a()Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->d:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "allow to connect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/node/e;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/node/e;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/ifengyu/intercom/b/w;->n(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    :cond_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->e:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Intercom is low power"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/q;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw v0
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getConnCode()Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->ALLOW:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "allow to connect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->h()V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result v1

    if-ge v1, v3, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Support min version is 1, but got version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->c:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/q;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/VersionMismatchException;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/VersionMismatchException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/ifengyu/intercom/node/e;

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/node/e;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Lcom/ifengyu/intercom/b/w;->n(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/q;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->WAIT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "Need confirm connection on your intercom screen!"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/node/q;->b(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->REFUSE_LOWPOWER:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Intercom is low power"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/q;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw v0
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "getSealConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getVersion()I

    move-result v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getDeviceId()I

    move-result v3

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getConnCode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getLanguage()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_ALLOW:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v1, v5, :cond_3

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "allow to connect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->h()V

    new-instance v1, Lcom/ifengyu/intercom/node/e;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/intercom/node/e;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->n(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->c(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect$SEAL_LANGUAGETYPE;->getNumber()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mcu_language_type_chinese"

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->getColor()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    move-object v0, v1

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    const-string v0, "mcu_language_type_english"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_REFUSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v1, v2, :cond_4

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/q;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_WAIT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "Need confirm connection on your intercom screen!"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/node/q;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_LOWPOWER:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v1, v2, :cond_6

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Intercom is low power"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/q;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;->SEAL_BUSY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/node/a/d;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "getSharkConnectionInfo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getVersion()I

    move-result v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getDeviceId()I

    move-result v3

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getConnCode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->getLanguage()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_ALLOW:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v1, v5, :cond_2

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "allow to connect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->h()V

    new-instance v1, Lcom/ifengyu/intercom/node/e;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/intercom/node/e;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->n(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->e(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect$SHARK_LANGUAGETYPE;->getNumber()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mcu_language_type_chinese"

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "mcu_language_type_english"

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_REFUSE:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Intercom refuse connect request or waiting confrim timeout!!!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/q;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_WAIT:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "Need confirm connection on your intercom screen!"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/node/q;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_LOWPOWER:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v1, v2, :cond_5

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Intercom is low power"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/q;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionPermissionException;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;->SHARK_BUSY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/node/a/d;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x5

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "doSealHandshake: start..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v3

    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/f;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-static {v4, v0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    :try_start_0
    invoke-static {v3, p2, v0, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->n(I)V

    invoke-static {v3, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object v0

    instance-of v1, v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    if-nez v1, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "error, device didn\'t start with a connectResponse message"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    invoke-direct {p0, p3, v0}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/e;

    move-result-object v1

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSealHandshake: isWaitingConfirm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/q;->h:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v3, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object v0

    instance-of v3, v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    invoke-direct {p0, p3, v0}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;)Lcom/ifengyu/intercom/node/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_2
    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v3, "connect failed, refused or timeout"

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v3, "error while waiting for confirm"

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConnectQuery"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasConnectResp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConnectResp"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasHeartbeat()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Heartbeat"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasControl()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Control"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ParamQuery"

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamResp()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ParamResp"

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasParamUpdate()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ParamUpdate"

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateQuery()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "StateQuery"

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasStateResp()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "StateResp"

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationSync()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "LocationSync"

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasLocationCtl()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "LocationCtl"

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileReq()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "FileReq"

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFilePack()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "FilePack"

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasFileResp()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "FileResponse"

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->hasUpdateResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "UpdateResponse"

    goto :goto_0

    :cond_e
    const-string v0, "UnknownType"

    goto/16 :goto_0
.end method

.method private a(Lcom/ifengyu/intercom/node/j;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/h;->a(Lcom/ifengyu/intercom/node/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Ljava/lang/String;Lcom/ifengyu/intercom/node/e;)V
    .locals 9

    if-eqz p6, :cond_2

    :try_start_0
    invoke-virtual {p6}, Lcom/ifengyu/intercom/node/e;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected to device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "first connect"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Z)V

    :cond_0
    invoke-virtual {p4, v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    invoke-virtual {v1, p4}, Lcom/ifengyu/intercom/node/a/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    :goto_0
    new-instance v3, Lcom/ifengyu/intercom/node/p;

    invoke-direct {v3, p2, p6, p3}, Lcom/ifengyu/intercom/node/p;-><init>(Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/e;Lcom/ifengyu/intercom/node/transport/j;)V

    new-instance v1, Lcom/ifengyu/intercom/node/d;

    invoke-direct {v1, p0, v0, v3}, Lcom/ifengyu/intercom/node/d;-><init>(Lcom/ifengyu/intercom/node/q;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/q;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    new-instance v1, Lcom/ifengyu/intercom/node/l;

    invoke-direct {v1, p0, p1, p6, p3}, Lcom/ifengyu/intercom/node/l;-><init>(Lcom/ifengyu/intercom/node/q;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/e;Lcom/ifengyu/intercom/node/transport/j;)V

    new-instance v2, Lcom/ifengyu/intercom/node/d;

    invoke-direct {v2, p0, v0, v1}, Lcom/ifengyu/intercom/node/d;-><init>(Lcom/ifengyu/intercom/node/q;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    iget-object v8, p0, Lcom/ifengyu/intercom/node/q;->g:Ljava/util/Map;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/ifengyu/intercom/node/g;

    move-object v1, p0

    move-object v2, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/intercom/node/g;-><init>(Lcom/ifengyu/intercom/node/q;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/p;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->g:Ljava/util/Map;

    invoke-virtual {p6}, Lcom/ifengyu/intercom/node/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/j;)V

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "blocking until processing loop finishes..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Process loop is finished."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/transport/j;->b()V

    invoke-virtual {p6}, Lcom/ifengyu/intercom/node/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_3
    return-void

    :cond_1
    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "can not get node id."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "connect failed, close."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/transport/j;->b()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_8
    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Rx thread was cancelled"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_9
    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tx or Rx thread threw a exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Process loop is finished."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/transport/j;->b()V

    invoke-virtual {p6}, Lcom/ifengyu/intercom/node/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_b
    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "Tx thread was cancelled"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_c
    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "Process loop is finished."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/transport/j;->b()V

    invoke-virtual {p6}, Lcom/ifengyu/intercom/node/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/node/q;->c(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v4, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v1, 0x1

    invoke-interface {v5, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method private a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v0, p1, p2}, Lcom/ifengyu/intercom/node/h;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x4

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "doSharkHandshake: start..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v3

    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/g;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-static {v4, v0, v1}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v0

    :try_start_0
    invoke-static {v3, p2, v0, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->n(I)V

    invoke-static {v3, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object v0

    instance-of v1, v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    if-nez v1, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "error, device didn\'t start with a connectResponse message"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    invoke-direct {p0, p3, v0}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/e;

    move-result-object v1

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSharkHandshake: isWaitingConfirm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/q;->h:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v3, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;

    move-result-object v0

    instance-of v3, v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    invoke-direct {p0, p3, v0}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;)Lcom/ifengyu/intercom/node/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_2
    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v3, "connect failed, refused or timeout"

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v3, "error while waiting for confirm"

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/h;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/e;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v5, 0x6

    sget-object v2, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v3, "doBtKeyHandshake: start..."

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v4

    invoke-static {p3}, Lcom/ifengyu/intercom/node/transport/a;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)[B

    move-result-object v2

    const/16 v3, 0x4e21

    invoke-static {v5, v2, v3}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(I[BI)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v6

    :try_start_0
    invoke-static {v4, p2, v6, p4}, Lcom/ifengyu/intercom/node/transport/i;->b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    new-instance v2, Lcom/ifengyu/intercom/node/q$2;

    move-object v3, p0

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/ifengyu/intercom/node/q$2;-><init>(Lcom/ifengyu/intercom/node/q;Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {p5, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/ifengyu/intercom/b/w;->n(I)V

    invoke-static {v4, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->c(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/ifengyu/intercom/node/btkey/a;

    move-result-object v3

    invoke-virtual {p5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    instance-of v2, v3, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;

    if-nez v2, :cond_0

    sget-object v2, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v3, "error, device didn\'t start with a connectResponse message"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    :goto_0
    return-object v2

    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;

    move-object v2, v0

    invoke-direct {p0, p3, v2}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;)Lcom/ifengyu/intercom/node/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v2, v8

    goto :goto_0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/e;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/ConnectionPermissionException;,
            Lcom/ifengyu/intercom/node/VersionMismatchException;
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "doDolphinHandshake: start..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/i;->a()Lcom/ifengyu/intercom/node/transport/h;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ifengyu/intercom/node/transport/d;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-static {v1, v0, v3}, Lcom/ifengyu/intercom/node/SendDataWrap;->a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;

    move-result-object v4

    invoke-static {v2, p2, v4, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    new-instance v0, Lcom/ifengyu/intercom/node/q$3;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/q$3;-><init>(Lcom/ifengyu/intercom/node/q;Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {p5, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/w;->n(I)V

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v1

    invoke-static {v2, p1, v1, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/transport/j;)I

    invoke-virtual {p5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->hasConnectResp()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error, device didn\'t start with a connectResponse message, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doDolphinHandshake: isWaitingConfirm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/ifengyu/intercom/node/q;->h:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2, p1, v1, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/transport/j;)I

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->hasConnectResp()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getVersion()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/ifengyu/intercom/b/w;->a:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/ifengyu/intercom/node/q;->a(Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "connect failed, refused or timeout"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "error while waiting for confirm"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "error while connecting to device:"

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/node/transport/j;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/node/transport/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->f:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/transport/j;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/node/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

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

    const/4 v6, 0x0

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "startProcessLoop()"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q;->i:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/q;->j:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/q;->k:Lcom/ifengyu/intercom/node/transport/j;

    iput-object p4, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput p5, p0, Lcom/ifengyu/intercom/node/q;->m:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/q;->c()V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/node/q$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/q$1;-><init>(Lcom/ifengyu/intercom/node/q;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/q;->d:Ljava/util/concurrent/ExecutorService;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->k:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, Lcom/ifengyu/intercom/node/transport/j;->a:Ljava/lang/Thread;

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "before doHandshake()"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->d:Lcom/ifengyu/intercom/node/a/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/a;->a(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/node/q;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config.getDeviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "doHandshake end"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->i:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/q;->j:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/q;->k:Lcom/ifengyu/intercom/node/transport/j;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v5, p0, Lcom/ifengyu/intercom/node/q;->n:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/node/q;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Ljava/lang/String;Lcom/ifengyu/intercom/node/e;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iput-object v6, p0, Lcom/ifengyu/intercom/node/q;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->i:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/q;->j:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/q;->k:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/q;->d(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/e;

    move-result-object v6

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->i:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/q;->j:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/q;->k:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/q;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/e;

    move-result-object v6

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->i:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/q;->j:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/q;->k:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/q;->b(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/e;

    move-result-object v6

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/ifengyu/intercom/node/q;->i:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/q;->j:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/q;->l:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/q;->k:Lcom/ifengyu/intercom/node/transport/j;

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/node/q;->c(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/e;

    move-result-object v6

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallableEnded: nodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/g;

    :try_start_0
    iget-object v1, v0, Lcom/ifengyu/intercom/node/g;->f:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/ifengyu/intercom/node/g;->g:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, v0, Lcom/ifengyu/intercom/node/g;->e:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ifengyu/intercom/node/g;->d:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v1, "onCallableEnded - both reader and writer threads are already closed"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/q;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v1

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "Got exception while close inputStream"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "Got exception while close outputStream"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v1, v0, Lcom/ifengyu/intercom/node/g;->e:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "onCallableEnded - stopping rx thread"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/ifengyu/intercom/node/g;->e:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object v1, v0, Lcom/ifengyu/intercom/node/g;->d:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/node/q;->c:Ljava/lang/String;

    const-string v2, "onCallableEnded - stopping tx thread"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/ifengyu/intercom/node/g;->d:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/q;->m:I

    return v0
.end method
