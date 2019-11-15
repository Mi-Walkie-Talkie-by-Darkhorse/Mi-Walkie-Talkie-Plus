.class abstract Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkObserver.java"


# instance fields
.field private volatile cellLevel:I

.field private final cellListenEnabled:Z

.field private signalListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->cellLevel:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->cellListenEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->cellLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;Landroid/telephony/SignalStrength;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->getCellLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 8

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v6

    const/16 v7, -0x4b

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    const/16 v7, -0x5a

    if-lt v6, v7, :cond_4

    :goto_1
    if-ge v0, v1, :cond_8

    :goto_2
    return v0

    :cond_0
    const/16 v7, -0x55

    if-lt v0, v7, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/16 v7, -0x64

    if-lt v0, v7, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    const/16 v1, -0x6e

    if-lt v6, v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    const/16 v1, -0x82

    if-lt v6, v1, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    const/16 v1, -0x96

    if-lt v6, v1, :cond_7

    move v1, v4

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method private getCellLevel(Landroid/telephony/SignalStrength;)I
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->getGsmLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->getEvdoLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getEvdoLevel(Landroid/telephony/SignalStrength;)I
    .locals 8

    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v6

    const/16 v7, -0x41

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    const/4 v7, 0x7

    if-lt v6, v7, :cond_4

    :goto_1
    if-ge v0, v1, :cond_8

    :goto_2
    return v0

    :cond_0
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v7, -0x5a

    if-lt v0, v7, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/16 v7, -0x69

    if-lt v0, v7, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-lt v6, v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    if-lt v6, v2, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    if-lt v6, v4, :cond_7

    move v1, v4

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method private getGsmLevel(Landroid/telephony/SignalStrength;)I
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    if-le v1, v0, :cond_0

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0xc

    if-lt v1, v2, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initSignalListen()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->cellListenEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver$1;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver$1;-><init>(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->signalListener:Landroid/telephony/PhoneStateListener;

    const-string v0, "phone"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->signalListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->signalListener:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method


# virtual methods
.method public getCellLevel()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->cellLevel:I

    return v0
.end method

.method public abstract onNetworkChanged()V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->cellListenEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->signalListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->signalListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->initSignalListen()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->onNetworkChanged()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startListen()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, v0}, Lcom/mi/milinkforgame/sdk/base/Global;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopListen()V
    .locals 0

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/Global;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
