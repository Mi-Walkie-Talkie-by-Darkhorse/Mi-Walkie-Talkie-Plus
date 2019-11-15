.class public Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;
.super Ljava/lang/Object;
.source "NetworkDash.java"


# static fields
.field private static final OBSERVER:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;

.field private static final OBSERVER_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mi/milinkforgame/sdk/base/os/info/NetworkStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

.field private static sImsiProvider:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

.field private static sLastState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

.field private static sMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sImsiProvider:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->updateNetworkState()Z

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->startListen()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->notifyNetworkStateChange()V

    return-void
.end method

.method public static addListener(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkStateListener;)V
    .locals 3

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAccessPoint()Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getAccessPoint()Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    goto :goto_0
.end method

.method public static getApnName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getApnName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getApnNameOrWifi()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getApnName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getApnNameOrWifiOrEthernet()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isEthernet()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ethernet"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getApnName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getApnType()I
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getApnType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCellLevel()I
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;->getCellLevel()I

    move-result v0

    return v0
.end method

.method public static getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    return-object v0
.end method

.method public static getDeviceIdBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string v0, "NetworkDash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceIdBySlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-ltz p1, :cond_0

    if-gt p1, v4, :cond_0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v2, "android.telephony.TelephonyManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v4, "getSimOperatorGemini"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getDeviceIdBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getDeviceIdBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "NetworkDash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIMSIProvider()Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sImsiProvider:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->updateIMSIProvider()Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sImsiProvider:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    return-object v0
.end method

.method protected static getLastState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sLastState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    return-object v0
.end method

.method public static getProvider()Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getAccessPoint()Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->getProvider()Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    goto :goto_0
.end method

.method public static getProvider(Z)Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;
    .locals 2

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getIMSIProvider()Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    move-result-object v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getProvider()Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public static getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    goto :goto_0
.end method

.method public static is2G()Z
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_2G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static is3G()Z
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_3G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->updateNetworkState()Z

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->isAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEthernet()Z
    .locals 2

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->ETHERNET:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMobile()Z
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_3G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->MOBILE_2G:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWap()Z
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getAccessPoint()Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->isWap()Z

    move-result v0

    return v0
.end method

.method public static isWifi()Z
    .locals 2

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->WIFI:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static notifyNetworkStateChange()V
    .locals 5

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkStateListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getLastState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCurrState()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkStateListener;->onNetworkStateChanged(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static removeListener(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkStateListener;)V
    .locals 5

    sget-object v3, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkStateListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->OBSERVER_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method protected static setCurrState(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;)Z
    .locals 5

    const/4 v0, 0x1

    const-class v2, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    if-nez v3, :cond_0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    sput-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sLastState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    sput-object p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move v1, v0

    :cond_0
    sget-object v3, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    invoke-virtual {v3, p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    sput-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sLastState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    sput-object p0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "NetworkObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAST -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sLastState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NetworkObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURR -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sCurrState:Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static updateIMSIProvider()Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;
    .locals 4

    :try_start_0
    const-class v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->fromIMSI(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    move-result-object v2

    sput-object v2, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sImsiProvider:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    const-string v2, "NetworkObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sImsiProvider:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sImsiProvider:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    monitor-exit v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    goto :goto_0
.end method

.method public static updateNetworkState()Z
    .locals 4

    const/4 v1, 0x0

    const-class v2, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;

    monitor-enter v2

    :try_start_0
    const-string v0, "connectivity"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v0

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;->fromNetworkInfo(Landroid/net/NetworkInfo;)Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->setCurrState(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->updateIMSIProvider()Lcom/mi/milinkforgame/sdk/base/os/info/ServiceProvider;

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sMainHandler:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->sMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash$2;

    invoke-direct {v3}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash$2;-><init>()V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
