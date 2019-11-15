.class public abstract Lcom/ifengyu/im/DB/entity/PeerEntity;
.super Ljava/lang/Object;
.source "PeerEntity.java"


# instance fields
.field public avatar:Ljava/lang/String;

.field public created:J

.field public mainName:Ljava/lang/String;

.field public peerId:I

.field public updated:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->created:J

    return-wide v0
.end method

.method public getMainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->mainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->peerId:I

    return v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->peerId:I

    invoke-virtual {p0}, Lcom/ifengyu/im/DB/entity/PeerEntity;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/protobuf/helper/EntityChangeEngine;->getSessionKey(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public getUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->updated:J

    return-wide v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCreated(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->created:J

    return-void
.end method

.method public setMainName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->mainName:Ljava/lang/String;

    return-void
.end method

.method public setPeerId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->peerId:I

    return-void
.end method

.method public setUpdated(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/DB/entity/PeerEntity;->updated:J

    return-void
.end method
