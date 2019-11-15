.class public Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;
.super Ljava/lang/Object;
.source "MsgServerAddrsEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;
    }
.end annotation


# instance fields
.field private as_info_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private discovery:Ljava/lang/String;

.field private msfsBackup:Ljava/lang/String;

.field private msfsPrior:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAs_info_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->as_info_list:Ljava/util/List;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->code:I

    return v0
.end method

.method public getDiscovery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->discovery:Ljava/lang/String;

    return-object v0
.end method

.method public getMsfsBackup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msfsBackup:Ljava/lang/String;

    return-object v0
.end method

.method public getMsfsPrior()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msfsPrior:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setAs_info_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->as_info_list:Ljava/util/List;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->code:I

    return-void
.end method

.method public setDiscovery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->discovery:Ljava/lang/String;

    return-void
.end method

.method public setMsfsBackup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msfsBackup:Ljava/lang/String;

    return-void
.end method

.method public setMsfsPrior(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msfsPrior:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgServerAddrsEntity{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discovery=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->discovery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msfsBackup=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msfsBackup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msfsPrior=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msfsPrior:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", as_info_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->as_info_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
