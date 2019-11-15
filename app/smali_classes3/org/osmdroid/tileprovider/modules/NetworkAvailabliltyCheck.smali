.class public Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;
.super Ljava/lang/Object;
.source "NetworkAvailabliltyCheck.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;


# instance fields
.field private final mConnectionManager:Landroid/net/ConnectivityManager;

.field private final mHasNetworkStatePermission:Z

.field private final mIsX86:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    const-string v0, "Android-x86"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mIsX86:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mHasNetworkStatePermission:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCellularDataNetworkAvailable()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mHasNetworkStatePermission:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getNetworkAvailable()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mHasNetworkStatePermission:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mIsX86:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getRouteToPathExists(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1, p1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0, p1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public getWiFiNetworkAvailable()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mHasNetworkStatePermission:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
