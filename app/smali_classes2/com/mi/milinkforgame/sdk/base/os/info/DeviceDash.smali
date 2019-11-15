.class public Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;
.super Ljava/lang/Object;
.source "DeviceDash.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/base/os/info/NetworkStateListener;


# static fields
.field private static final instance:Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDeviceInfo:Ljava/lang/String;

.field private mDeviceSimplifiedInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->instance:Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->addListener(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkStateListener;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->instance:Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;

    return-object v0
.end method

.method private getStorageInfo()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageDash;->getInnerInfo()Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageDash;->getExternalInfo()Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;

    move-result-object v1

    const-string v2, "{IN : %s |EXT: %s}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string v0, "N/A"

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x1

    if-nez v1, :cond_1

    const-string v0, "N/A"

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->updateDeviceInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceSimplifiedInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->updateDeviceInfo()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    return-object v0
.end method

.method public onNetworkStateChanged(Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;Lcom/mi/milinkforgame/sdk/base/os/info/NetworkState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->updateDeviceInfo()Ljava/lang/String;

    return-void
.end method

.method public updateDeviceInfo()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x26

    const-string v0, "window"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "phone"

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "wifi"

    :goto_1
    const-string v4, "imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "model="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "os="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "apilevel="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "network="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "display="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "manu="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "versioncode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "wifi="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/WifiDash;->getWifiInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "cell="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getCellLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsDash;->getLocalDns()Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsDash;->updateLocalDns()Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    move-result-object v0

    :cond_0
    const-string v1, "dns="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_5

    const-string v0, "N/A"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "N/A"

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->is2G()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "2G"

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->is3G()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "3G"

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isEthernet()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ethernet"

    goto/16 :goto_1

    :cond_4
    const-string v1, "wan"

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
