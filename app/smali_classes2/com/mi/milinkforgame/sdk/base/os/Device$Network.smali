.class public Lcom/mi/milinkforgame/sdk/base/os/Device$Network;
.super Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Network"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;,
        Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;,
        Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Dns;,
        Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;-><init>()V

    return-void
.end method

.method public static getCurrentNetworkDetailInfo()Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;
    .locals 2

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;-><init>()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getApnType()I

    move-result v1

    iput v1, v0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnType:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getApnNameOrWifiOrEthernet()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->apnName:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;->getWifiInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->wifiInfo:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getCellLevel()I

    move-result v1

    iput v1, v0, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->cellLevel:I

    return-object v0
.end method
