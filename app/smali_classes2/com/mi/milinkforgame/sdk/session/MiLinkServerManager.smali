.class public Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;
.super Ljava/lang/Object;
.source "MiLinkServerManager.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/IServerManager;


# static fields
.field private static final DEFAULT_SESSION_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiLinkServerManager"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;


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

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerListIndex:I

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

    const-string v0, "MiLinkServerManager"

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

.method public static getInstance()Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->sInstance:Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;

    return-object v0
.end method

.method private getNextTcpProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 3

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerListIndex:I

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerListIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerListIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    goto :goto_0
.end method


# virtual methods
.method public getNext(Lcom/mi/milinkforgame/sdk/session/ServerProfile;I)[Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "MiLinkServerManager"

    const-string v2, "getNext, serverProfile == null!!!"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "MiLinkServerManager"

    const-string v2, "getNext, Network is not available!!!"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "MiLinkServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNext, failserver info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",failReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    new-array v0, v6, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    :goto_1
    if-ge v1, v6, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->getNextTcpProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "MiLinkServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNext, recently tcp failed, and has no rencently http server,so try 4, server No."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerListIndex:I

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    const-string v1, "MiLinkServerManager"

    const-string v2, "getNext no tcp server to try"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-array v0, v5, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->getNextTcpProfile()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "MiLinkServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNext get tcp server,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isNeedReset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset(Z)[Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 11

    const/4 v4, 0x1

    const/4 v10, 0x4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    iput v3, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerListIndex:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getTestBackupIp()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v2, Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v5, v2

    move v0, v3

    :goto_0
    if-ge v0, v5, :cond_6

    aget v6, v2, v0

    new-instance v7, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-direct {v7, v1, v6, v4, v10}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    iget-object v6, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getRecentlyServerData()Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->getRecentlyServer()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getCurrentApnOptimumServerData()Lcom/mi/milinkforgame/sdk/session/OptimumServerData;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/OptimumServerData;->getOptimumServers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v4

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget-object v8, Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v8, v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-direct {p0, v5, v0}, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V

    :goto_4
    sget-object v5, Lcom/mi/milinkforgame/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v6, v5

    move v0, v3

    :goto_5
    if-ge v0, v6, :cond_4

    aget v7, v5, v0

    new-instance v8, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getDefaultServer()Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7, v4, v10}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    iget-object v7, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getBackupServerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v5, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-direct {p0, v0, v5}, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V

    :cond_5
    if-eqz v2, :cond_6

    new-array v0, v4, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    aput-object v1, v0, v3

    const-string v2, "MiLinkServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset isBackgroud = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",has recently tcp server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-object v0

    :cond_6
    new-array v1, v10, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move v2, v3

    :goto_7
    if-ge v2, v10, :cond_7

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    iget v4, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerListIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/mi/milinkforgame/sdk/session/MiLinkServerManager;->mTcpServerListIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_7
    :goto_8
    array-length v0, v1

    if-ge v3, v0, :cond_8

    const-string v0, "MiLinkServerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset isBackgroud = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", has no recently server, so try "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", server No."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    move-object v0, v1

    goto :goto_6

    :cond_9
    move v2, v3

    goto/16 :goto_4

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
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
