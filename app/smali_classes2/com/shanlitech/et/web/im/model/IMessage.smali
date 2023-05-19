.class public Lcom/shanlitech/et/web/im/model/IMessage;
.super Lcom/shanlitech/et/web/im/a/c;
.source "IMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private duration:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private endTime:J

.field private isCollect:I

.field private localFilePath:Ljava/lang/String;

.field private mMsgId:J

.field private msg:Ljava/lang/String;

.field private msgParas:Ljava/lang/String;

.field private msgResourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;",
            ">;"
        }
    .end annotation
.end field

.field private msgResourceListJson:Ljava/lang/String;

.field private msgType:I

.field private msgUUID:Ljava/lang/String;

.field private path:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private read:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "readed"
    .end annotation
.end field

.field private readCount:I

.field private remark:Ljava/lang/String;

.field private sPath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sendTime:J

.field private server:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private targetId:J

.field private targetType:I

.field private tbMessageRecordId:J

.field private title:Ljava/lang/String;

.field private unreadCount:I

.field private userAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userAcct"
    .end annotation
.end field

.field private userId:J

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/im/a/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->read:I

    .line 3
    iput v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->isCollect:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->duration:J

    return-void
.end method

.method public static toHistoryMessage(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/im/model/IMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/push/HistoryMessage;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 28
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/web/im/model/IMessage;

    .line 30
    invoke-virtual {v1}, Lcom/shanlitech/et/web/im/model/IMessage;->toHistoryMessage()Lcom/shanlitech/et/model/push/HistoryMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public fixMsgResourceList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;

    invoke-direct {v0}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;-><init>()V

    .line 6
    iget-wide v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->setDuration(J)V

    .line 7
    iget-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->setPath(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->setServer(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->setSPath(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->setFileSuffix(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceList:Ljava/util/List;

    if-nez v1, :cond_2

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceList:Ljava/util/List;

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->duration:J

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->path:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->server:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sPath:Ljava/lang/String;

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDuration()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMessageResourceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;

    invoke-virtual {v0}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->endTime:J

    return-wide v0
.end method

.method public getIsCollect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->isCollect:I

    return v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMMsgId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->mMsgId:J

    return-wide v0
.end method

.method public getMessageResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->fixMsgResourceList()V

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceList:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgParas()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgParas:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgResourceListJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceListJson:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgType:I

    return v0
.end method

.method public getMsgUUID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMessageResourceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;

    invoke-virtual {v0}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getRead()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->read:I

    return v0
.end method

.method public getReadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->readCount:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sendTime:J

    return-wide v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMessageResourceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;

    invoke-virtual {v0}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->getServer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getStoreID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->tbMessageRecordId:J

    return-wide v0
.end method

.method public getTargetId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->targetId:J

    return-wide v0
.end method

.method public getTargetType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->targetType:I

    return v0
.end method

.method public getTbMessageRecordId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->tbMessageRecordId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->unreadCount:I

    return v0
.end method

.method public getUserAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userId:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getmMsgId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->mMsgId:J

    return-wide v0
.end method

.method public getsPath()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMessageResourceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;

    invoke-virtual {v0}, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->getSPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isCollected()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->isCollect:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMyMessage()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userId:J

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRead()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userId:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->m(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/shanlitech/et/web/im/model/IMessage;->read:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public msgResourceJsonToList()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/im/model/IMessage$1;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/web/im/model/IMessage$1;-><init>(Lcom/shanlitech/et/web/im/model/IMessage;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceListJson:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/h;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/web/im/model/IMessage;->setMsgResourceList(Ljava/util/List;)V

    return-void
.end method

.method public msgResourceListToJson()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMessageResourceList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/blankj/utilcode/util/h;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/web/im/model/IMessage;->setMsgResourceListJson(Ljava/lang/String;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->duration:J

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->endTime:J

    return-void
.end method

.method public setIsCollect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->isCollect:I

    return-void
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->localFilePath:Ljava/lang/String;

    return-void
.end method

.method public setMMsgId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->mMsgId:J

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msg:Ljava/lang/String;

    return-void
.end method

.method public setMsgParas(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgParas:Ljava/lang/String;

    return-void
.end method

.method public setMsgResourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceList:Ljava/util/List;

    return-void
.end method

.method public setMsgResourceListJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceListJson:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgType:I

    return-void
.end method

.method public setMsgUUID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgUUID:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->path:Ljava/lang/String;

    return-void
.end method

.method public setRead(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->read:I

    return-void
.end method

.method public setReadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->readCount:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sPath:Ljava/lang/String;

    return-void
.end method

.method public setSendTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sendTime:J

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->server:Ljava/lang/String;

    return-void
.end method

.method public setTargetId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->targetId:J

    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->targetType:I

    return-void
.end method

.method public setTbMessageRecordId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->tbMessageRecordId:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->title:Ljava/lang/String;

    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->unreadCount:I

    return-void
.end method

.method public setUserAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userAccount:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userId:J

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userName:Ljava/lang/String;

    return-void
.end method

.method public setmMsgId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->mMsgId:J

    return-void
.end method

.method public setsPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sPath:Ljava/lang/String;

    return-void
.end method

.method public toHistoryMessage()Lcom/shanlitech/et/model/push/HistoryMessage;
    .locals 7

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/push/HistoryMessage;

    invoke-direct {v0}, Lcom/shanlitech/et/model/push/HistoryMessage;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setAccount(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setUname(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/blankj/utilcode/util/h;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setBody(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setAccount(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setUname(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getStoreID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/model/push/HistoryMessage;->setId(J)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setIsFavorite(I)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setIsRead(I)V

    .line 10
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getSendTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgTime(J)V

    .line 11
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getTargetId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/model/push/HistoryMessage;->setReceiver(J)V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setReceiverType(I)V

    .line 13
    iget v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgType:I

    invoke-virtual {v0, v2}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    .line 14
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/shanlitech/et/model/push/HistoryMessage;->setSender(J)V

    .line 15
    iget v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->targetType:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v2, v1, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v5}, Lcom/shanlitech/et/model/push/HistoryMessage;->setSenderType(I)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0, v3}, Lcom/shanlitech/et/model/push/HistoryMessage;->setSenderType(I)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setSenderType(I)V

    .line 19
    :goto_0
    sget-object v2, Lcom/shanlitech/et/web/im/model/IMessage$2;->$SwitchMap$com$shanlitech$et$web$im$MessageType:[I

    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMsgType()I

    move-result v6

    invoke-static {v6}, Lcom/shanlitech/et/web/im/MessageType;->a(I)Lcom/shanlitech/et/web/im/MessageType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v1, :cond_7

    if-eq v2, v3, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v1, 0x5

    if-eq v2, v1, :cond_3

    .line 20
    sget-object v1, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->NONE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    goto :goto_1

    .line 21
    :cond_3
    sget-object v1, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_VIDEO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    goto :goto_1

    .line 22
    :cond_4
    sget-object v1, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_PIC:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    goto :goto_1

    .line 23
    :cond_5
    sget-object v1, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_AUDIO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    goto :goto_1

    .line 24
    :cond_6
    sget-object v1, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_LOC:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    goto :goto_1

    .line 25
    :cond_7
    sget-object v1, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_TXT:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    .line 26
    :goto_1
    invoke-virtual {v0}, Lcom/shanlitech/et/model/push/HistoryMessage;->initUUIDFromMsgBody()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMessage{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userAccount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", targetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->targetId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", targetType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->targetType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMsgId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->mMsgId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", msgUUID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgUUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msgType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msgParas=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgParas:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", server=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->server:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sendTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->sendTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", endTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", read="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->read:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", readCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->readCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unreadCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->unreadCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/im/model/IMessage;->remark:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isCollect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->isCollect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msgResourceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/im/model/IMessage;->msgResourceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
