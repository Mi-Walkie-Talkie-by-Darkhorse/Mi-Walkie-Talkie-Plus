.class public Lcom/autonavi/ae/gmap/maploader/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# static fields
.field private static volatile mNetworkState:Lcom/autonavi/ae/gmap/maploader/NetworkState;


# instance fields
.field private volatile isConnected:Z

.field private mNetWorkChanggeListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

.field private mNetworkInitFlag:Z

.field private mNetworkInitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkInitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetWorkChanggeListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/ae/gmap/maploader/NetworkState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->resetNetwork(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/autonavi/ae/gmap/maploader/NetworkState;
    .locals 2

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkState:Lcom/autonavi/ae/gmap/maploader/NetworkState;

    if-nez v0, :cond_1

    const-class v1, Lcom/autonavi/ae/gmap/maploader/NetworkState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkState:Lcom/autonavi/ae/gmap/maploader/NetworkState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/NetworkState;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/maploader/NetworkState;-><init>()V

    sput-object v0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkState:Lcom/autonavi/ae/gmap/maploader/NetworkState;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkState:Lcom/autonavi/ae/gmap/maploader/NetworkState;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initNetworkReceiver(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkInitFlag:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkInitLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkInitFlag:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/autonavi/ae/gmap/maploader/NetworkState$1;

    invoke-direct {v2, p0}, Lcom/autonavi/ae/gmap/maploader/NetworkState$1;-><init>(Lcom/autonavi/ae/gmap/maploader/NetworkState;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->resetNetwork(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetworkInitFlag:Z

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetNetwork(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetWorkChanggeListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->isConnected:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetWorkChanggeListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLong()V

    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->isConnected:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->isConnected:Z

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->isConnected:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->isConnected:Z

    goto :goto_2
.end method


# virtual methods
.method public isInternetConnected(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->initNetworkReceiver(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->isConnected:Z

    return v0
.end method

.method public setNetWorkChangeListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/NetworkState;->mNetWorkChanggeListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    return-void
.end method
