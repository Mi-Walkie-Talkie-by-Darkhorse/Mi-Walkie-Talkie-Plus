.class public Lcom/mi/milinkforgame/sdk/session/ServerProfile;
.super Ljava/lang/Object;
.source "ServerProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7c4c84be4bb677c0L


# instance fields
.field private mPorxyPort:I

.field private mProtocol:I

.field private mProxyIP:Ljava/lang/String;

.field private mServerIP:Ljava/lang/String;

.field private mServerPort:I

.field private mServerType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerIP:Ljava/lang/String;

    iput p2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerPort:I

    iput-object p3, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    iput p4, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mPorxyPort:I

    iput p5, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProtocol:I

    iput p6, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerType:I

    return-void
.end method


# virtual methods
.method public equals(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerIP:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerPort:I

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerIP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerPort:I

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerPort()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProxyIP()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProxyIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProxyIP()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProxyIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mPorxyPort:I

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getPorxyPort()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getPorxyPort()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mPorxyPort:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProtocol:I

    return v0
.end method

.method public getProxyIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    return-object v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerIP:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerPort:I

    return v0
.end method

.method public getServerType()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerType:I

    return v0
.end method

.method public isBetterThan(Lcom/mi/milinkforgame/sdk/session/ServerProfile;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerIP:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerPort:I

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProtocol:I

    if-ne v2, v0, :cond_4

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerType:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->getServerType()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public setPorxyPort(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mPorxyPort:I

    return-void
.end method

.method public setProtocol(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProtocol:I

    return-void
.end method

.method public setProxyIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    return-void
.end method

.method public setServerIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerIP:Ljava/lang/String;

    return-void
.end method

.method public setServerPort(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerPort:I

    return-void
.end method

.method public setServerType(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sIP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pIP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProxyIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mPorxyPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mProtocol:I

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/session/SessionConst;->getProtocol(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ServerProfile;->mServerType:I

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/session/SessionConst;->getSeverType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
