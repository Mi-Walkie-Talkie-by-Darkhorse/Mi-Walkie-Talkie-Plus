.class public Lcom/mi/milinkforgame/sdk/base/os/info/DnsDash;
.super Ljava/lang/Object;
.source "DnsDash.java"


# static fields
.field private static localDnsInfo:Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsDash;->localDnsInfo:Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostByName(Ljava/lang/String;J)[Ljava/net/InetAddress;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/base/os/dns/DnsMain;->getBetterHostByName(Ljava/lang/String;J)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalDns()Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsDash;->localDnsInfo:Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLocalDns(Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;)V
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsDash;->localDnsInfo:Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateLocalDns()Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;
    .locals 6

    const-wide/16 v4, 0x5dc

    new-instance v1, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;-><init>()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->intToIPv4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->setWifiPreDns(Ljava/lang/String;)V

    iget v0, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->intToIPv4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->setWifiAltDns(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsDash;->setLocalDns(Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsDash;->getLocalDns()Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "getprop net.dns1"

    invoke-static {v0, v4, v5}, Lcom/mi/milinkforgame/sdk/base/os/Console;->execute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getprop net.dns2"

    invoke-static {v2, v4, v5}, Lcom/mi/milinkforgame/sdk/base/os/Console;->execute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->setCurrPreDns(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->setCurrAltDns(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
