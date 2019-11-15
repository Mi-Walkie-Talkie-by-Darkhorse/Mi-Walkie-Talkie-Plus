.class public Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;
.super Ljava/lang/Object;
.source "MiLinkBackupServerManager.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/IServerManager;


# static fields
.field private static final DEFAULT_SESSION_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiLinkBackupServerManager"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;


# instance fields
.field private mTcpServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpServerListIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerListIndex:I

    return-void
.end method

.method private addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x4

    sget-object v2, Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v2, v2

    if-eq v2, v1, :cond_1

    const-string v0, "MiLinkBackupServerManager"

    const-string v1, "PORT_ARRAY.length != 4"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-array v3, v1, [[I

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    aput-object v2, v3, v0

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    aput-object v2, v3, v6

    const/4 v2, 0x2

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    aput-object v4, v3, v2

    const/4 v2, 0x3

    new-array v4, v1, [I

    fill-array-data v4, :array_3

    aput-object v4, v3, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    move v2, v1

    :cond_2
    if-gt v2, v1, :cond_0

    if-lez v2, :cond_0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    add-int/lit8 v0, v2, -0x1

    aget-object v0, v3, v0

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    aget v5, v5, v1

    invoke-direct {v4, v0, v5, v6, v6}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;

    return-object v0
.end method

.method private getNextTcpProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 3

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerListIndex:I

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerListIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerListIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    goto :goto_0
.end method


# virtual methods
.method public getNext(Lcom/mi/milinkforgame/sdk/session/ServerProfile;I)[Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "MiLinkBackupServerManager"

    const-string v2, "getNext, serverProfile == null!!!"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MiLinkBackupServerManager"

    const-string v2, "getNext, Network is not available!!!"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "MiLinkBackupServerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNext, failserver info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",failReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerListIndex:I

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string v1, "MiLinkBackupServerManager"

    const-string v2, "getNext no tcp server to try"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array v0, v5, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->getNextTcpProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "MiLinkBackupServerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNext get tcp server,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isNeedReset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset(Z)[Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    iput v1, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerListIndex:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getTestBackupIp()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v3, Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget v5, v3, v0

    new-instance v6, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const/4 v7, 0x4

    invoke-direct {v6, v2, v5, v8, v7}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    iget-object v5, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getBackupServerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-array v2, v8, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move v3, v1

    :goto_2
    if-ge v3, v8, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    iget v4, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerListIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkBackupServerManager;->mTcpServerListIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    aput-object v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_4

    const-string v1, "MiLinkBackupServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset , so try backuplist1, server No."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public save(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->getInstance()Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->queryDomainIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->setServerIP(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    new-instance v2, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerPort()I

    move-result v4

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v2}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->setRecentlyServer(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)V

    move v0, v1

    goto :goto_0
.end method
