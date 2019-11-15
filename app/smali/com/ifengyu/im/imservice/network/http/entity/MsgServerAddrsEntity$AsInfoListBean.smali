.class public Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;
.super Ljava/lang/Object;
.source "MsgServerAddrsEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsInfoListBean"
.end annotation


# instance fields
.field private backupIP:Ljava/lang/String;

.field private id:I

.field private port:I

.field private priorIP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->backupIP:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->id:I

    return v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->port:I

    return v0
.end method

.method public getPriorIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->priorIP:Ljava/lang/String;

    return-object v0
.end method

.method public setBackupIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->backupIP:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->id:I

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->port:I

    return-void
.end method

.method public setPriorIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->priorIP:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsInfoListBean{backupIP=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->backupIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priorIP=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->priorIP:Ljava/lang/String;

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
