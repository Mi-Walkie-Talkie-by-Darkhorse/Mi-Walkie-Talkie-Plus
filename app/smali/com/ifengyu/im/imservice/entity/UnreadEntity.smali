.class public Lcom/ifengyu/im/imservice/entity/UnreadEntity;
.super Ljava/lang/Object;
.source "UnreadEntity.java"


# instance fields
.field private isForbidden:Z

.field private laststMsgId:I

.field private latestMsgData:Ljava/lang/String;

.field private peerId:I

.field private sessionKey:Ljava/lang/String;

.field private sessionType:I

.field private unReadCnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->isForbidden:Z

    return-void
.end method


# virtual methods
.method public buildSessionKey()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionType:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->peerId:I

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SessionEntity buildSessionKey error,cause by some params <=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->peerId:I

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionType:I

    invoke-static {v0, v1}, Lcom/ifengyu/im/protobuf/helper/EntityChangeEngine;->getSessionKey(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLaststMsgId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->laststMsgId:I

    return v0
.end method

.method public getLatestMsgData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->latestMsgData:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->peerId:I

    return v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionType:I

    return v0
.end method

.method public getUnReadCnt()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->unReadCnt:I

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->isForbidden:Z

    return v0
.end method

.method public setForbidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->isForbidden:Z

    return-void
.end method

.method public setLaststMsgId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->laststMsgId:I

    return-void
.end method

.method public setLatestMsgData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->latestMsgData:Ljava/lang/String;

    return-void
.end method

.method public setPeerId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->peerId:I

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionType:I

    return-void
.end method

.method public setUnReadCnt(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->unReadCnt:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnreadEntity{sessionKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->sessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unReadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->unReadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", laststMsgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->laststMsgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latestMsgData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->latestMsgData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isForbidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->isForbidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
