.class public Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;
.super Ljava/lang/Object;
.source "MiLinkIpInfoManager.java"


# static fields
.field private static final APN_ISP_FILE_NAME:Ljava/lang/String; = "game_apnisps"

.field private static final BACK_UP_SERVER_FILE_NAME:Ljava/lang/String; = "game_backupservers"

.field private static final DEFAULT_OPTIMUM_SERVER_KEY:Ljava/lang/String; = "game_other"

.field private static final GAME_DEFAULT_BACKUP_IP_LIST:[Lcom/mi/milinkforgame/sdk/session/ServerProfile;

.field private static final GAME_DEFAULT_HOST:Ljava/lang/String; = "game.chat.mi.com"

.field private static final OPTIMUM_SERVER_FILE_NAME:Ljava/lang/String; = "game_optservers"

.field private static final RECENTLY_SERVER_FILE_NAME:Ljava/lang/String; = "game_recentlyservers"

.field private static final TAG:Ljava/lang/String; = "MiLinkIpInfoManager"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;


# instance fields
.field private mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupIPList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/session/OptimumServerData;",
            ">;"
        }
    .end annotation
.end field

.field private mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    new-instance v1, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const-string v2, "120.134.33.203"

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const-string v2, "124.243.204.31"

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const-string v3, "123.59.39.90"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const-string v3, "120.131.6.91"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->GAME_DEFAULT_BACKUP_IP_LIST:[Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    new-instance v0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->sInstance:Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getCurrentApn()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getApnName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return-object v1

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isEthernet()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ethernet"

    goto :goto_0

    :cond_2
    const-string v0, "MiLinkIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is unkown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static getDefaultHost()Ljava/lang/String;
    .locals 1

    const-string v0, "game.chat.mi.com"

    return-object v0
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->sInstance:Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;

    return-object v0
.end method

.method private declared-synchronized getOptimumServerData(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/session/OptimumServerData;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiLinkIpInfoManager"

    const-string v1, "get optimum server list, the value of the key is empty, use default key"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "game_other"

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getOptimumIpMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/OptimumServerData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "MiLinkIpInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get optimum server list, key is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isDefaultHost(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "MiLinkIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "MiLinkIpInfoManager"

    const-string v2, "load object Global.getApplicationContext() == null"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MiLinkIpInfoManager"

    const-string v3, "closeObject Exception"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "MiLinkIpInfoManager"

    const-string v2, "load object FileNotFoundException"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_1
    const-string v4, "MiLinkIpInfoManager"

    const-string v5, "load readObject Exception"

    invoke-static {v4, v5, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "MiLinkIpInfoManager"

    const-string v3, "closeObject Exception"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private declared-synchronized saveApnIspMap()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "game_apnisps"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveBackupServerList()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;

    const-string v1, "game_backupservers"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MiLinkIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MiLinkIpInfoManager"

    const-string v2, "save object Global.getApplicationContext() == null"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    const-string v2, "MiLinkIpInfoManager"

    const-string v3, "writeObject Exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MiLinkIpInfoManager"

    const-string v2, "closeObject Exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method private declared-synchronized saveOptimumServerMap()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "game_optservers"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveRecentlyServerMap()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "game_recentlyservers"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getApnIspMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "game_apnisps"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBackupServerList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "game_backupservers"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->GAME_DEFAULT_BACKUP_IP_LIST:[Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getCurrentApnOptimumServerData()Lcom/mi/milinkforgame/sdk/session/OptimumServerData;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "game_other"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getApnIspMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    const-string v2, "MiLinkIpInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get current apn optimum server list, apnKey is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ispKey is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getOptimumServerData(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/session/OptimumServerData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultServer()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 5

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public declared-synchronized getOptimumIpMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/session/OptimumServerData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "game_optservers"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRcentlyIpMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "game_recentlyservers"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecentlyServerData()Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiLinkIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get recently server list, apnKey is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getRcentlyIpMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTestBackupIp()Lcom/mi/milinkforgame/sdk/session/ServerProfile;
    .locals 5

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    const-string v1, "124.243.204.48"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public declared-synchronized setBackupServerList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->mBackupIPList:Ljava/util/List;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->saveBackupServerList()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOptmumServerList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/session/ServerProfile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiLinkIpInfoManager"

    const-string v1, "set optimum server list, but key is empty, use default key"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "game_other"

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getApnIspMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->saveApnIspMap()Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getOptimumServerData(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/session/OptimumServerData;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/OptimumServerData;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/session/OptimumServerData;-><init>()V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/mi/milinkforgame/sdk/session/OptimumServerData;->setOptimumServers(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/session/OptimumServerData;->setTimeStamp(J)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getOptimumIpMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->saveOptimumServerMap()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecentlyServer(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getRecentlyServerData()Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->setRecentlyServer(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/session/RecentlyServerData;->setTimeStamp(J)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getRcentlyIpMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->saveRecentlyServerMap()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v0, "MiLinkIpInfoManager"

    const-string v1, "set recently server list, but key is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
