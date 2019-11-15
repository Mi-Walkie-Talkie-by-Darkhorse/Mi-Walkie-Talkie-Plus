.class public Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;
.super Ljava/lang/Object;
.source "LoginSp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/DB/sp/LoginSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpLoginIdentity"
.end annotation


# instance fields
.field private b2Token:Ljava/lang/String;

.field private loginId:I

.field private publicId:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field final synthetic this$0:Lcom/ifengyu/im/DB/sp/LoginSp;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/DB/sp/LoginSp;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->this$0:Lcom/ifengyu/im/DB/sp/LoginSp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->pwd:Ljava/lang/String;

    iput p3, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->loginId:I

    iput-object p4, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->publicId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->publicKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->b2Token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getB2Token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->b2Token:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->loginId:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public setB2Token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->b2Token:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->loginId:I

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->pwd:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpLoginIdentity{, pwd=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->loginId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publicId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->publicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publicKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->publicKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b2Token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->b2Token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
