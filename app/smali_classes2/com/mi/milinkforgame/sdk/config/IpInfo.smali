.class public Lcom/mi/milinkforgame/sdk/config/IpInfo;
.super Ljava/lang/Object;
.source "IpInfo.java"


# instance fields
.field public ip:Ljava/lang/String;

.field public operator:I

.field public port:I

.field public remark:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->port:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->remark:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->operator:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->ip:Ljava/lang/String;

    iput p2, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->port:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->remark:Ljava/lang/String;

    iput p3, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->type:I

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->operator:I

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->IPv4ToStr([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->ip:Ljava/lang/String;

    iput p2, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->port:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->remark:Ljava/lang/String;

    iput p3, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->type:I

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->port:I

    return v0
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->port:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->operator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " port = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mi/milinkforgame/sdk/config/IpInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
