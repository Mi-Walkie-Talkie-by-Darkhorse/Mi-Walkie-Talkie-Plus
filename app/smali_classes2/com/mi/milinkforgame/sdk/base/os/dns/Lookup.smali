.class public Lcom/mi/milinkforgame/sdk/base/os/dns/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# instance fields
.field private dnsServerAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/Lookup;->dnsServerAddress:Ljava/lang/String;

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/Lookup;->dnsServerAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;J)[Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;,
            Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException;,
            Ljava/net/UnknownHostException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;

    invoke-direct {v1, p1}, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->getQueryData()[B

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v3, Lcom/mi/milinkforgame/sdk/base/os/dns/UdpClient;

    invoke-direct {v3}, Lcom/mi/milinkforgame/sdk/base/os/dns/UdpClient;-><init>()V

    invoke-virtual {v3, p2, p3}, Lcom/mi/milinkforgame/sdk/base/os/dns/UdpClient;->setTimeout(J)V

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/Lookup;->dnsServerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/mi/milinkforgame/sdk/base/os/dns/UdpClient;->sendrecv(Ljava/lang/String;[B)[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/mi/milinkforgame/sdk/base/os/dns/ResponsePacket;

    new-instance v4, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;

    invoke-direct {v4, v2}, Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;-><init>([B)V

    invoke-direct {v3, v4, p1}, Lcom/mi/milinkforgame/sdk/base/os/dns/ResponsePacket;-><init>(Lcom/mi/milinkforgame/sdk/base/os/dns/DNSInput;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/base/os/dns/ResponsePacket;->getReqId()I

    move-result v2

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/base/os/dns/RequestPacket;->getReqId()I

    move-result v1

    if-ne v2, v1, :cond_0

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/base/os/dns/ResponsePacket;->getByAddress()[Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->getInstance()Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/base/os/dns/ResponsePacket;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->addCache(Ljava/lang/String;[Ljava/net/InetAddress;J)V
    :try_end_0
    .catch Lcom/mi/milinkforgame/sdk/base/os/dns/WireParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public setDnsAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/Lookup;->dnsServerAddress:Ljava/lang/String;

    return-void
.end method
