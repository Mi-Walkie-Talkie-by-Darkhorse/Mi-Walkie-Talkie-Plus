.class public Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;
.super Ljava/lang/Object;
.source "DnsInfo.java"


# instance fields
.field protected currAltDns:Ljava/lang/String;

.field protected currPreDns:Ljava/lang/String;

.field protected wifiAltDns:Ljava/lang/String;

.field protected wifiPreDns:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "none"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currPreDns:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currAltDns:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiPreDns:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiAltDns:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrAltDns()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currAltDns:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrPreDns()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currPreDns:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiAltDns()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiAltDns:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiPreDns()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiPreDns:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrAltDns(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currAltDns:Ljava/lang/String;

    return-void
.end method

.method public setCurrPreDns(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currPreDns:Ljava/lang/String;

    return-void
.end method

.method public setWifiAltDns(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiAltDns:Ljava/lang/String;

    return-void
.end method

.method public setWifiPreDns(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiPreDns:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currPreDns:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "none"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currAltDns:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "none"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiPreDns:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "none"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiAltDns:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "none"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currPreDns:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->currAltDns:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiPreDns:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;->wifiAltDns:Ljava/lang/String;

    goto :goto_3
.end method
