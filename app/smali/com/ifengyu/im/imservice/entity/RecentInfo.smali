.class public Lcom/ifengyu/im/imservice/entity/RecentInfo;
.super Ljava/lang/Object;
.source "RecentInfo.java"


# instance fields
.field private avatar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isForbidden:Z

.field private isTalk:Z

.field private isTop:Z

.field private latestMsgData:Ljava/lang/String;

.field private latestMsgId:J

.field private latestMsgType:I

.field private name:Ljava/lang/String;

.field private peerId:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;

.field private sessionType:I

.field private unReadCnt:I

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTop:Z

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isForbidden:Z

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTalk:Z

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/im/imservice/model/SessionEntity;Lcom/ifengyu/im/DB/entity/GroupEntity;Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTop:Z

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isForbidden:Z

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTalk:Z

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->peerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionType()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->sessionType:I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getLatestMsgType()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgType:I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getLatestMsgId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgId:J

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getLatestMsgData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgData:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->updateTime:J

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getUnReadCnt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->unReadCnt:I

    :cond_0
    if-eqz p2, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isForbidden:Z

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getlistGroupMemberIds()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->findContact(I)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_2

    :cond_4
    iput-object v1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->avatar:Ljava/util/List;

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/im/imservice/model/SessionEntity;Lcom/ifengyu/im/DB/entity/UserEntity;Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTop:Z

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isForbidden:Z

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTalk:Z

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->sessionKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->peerId:Ljava/lang/String;

    iget v0, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionType:I

    iput v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->sessionType:I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getLatestMsgType()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgType:I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getLatestMsgId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgId:J

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getLatestMsgData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgData:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->updateTime:J

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getUnReadCnt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->unReadCnt:I

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->avatar:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->avatar:Ljava/util/List;

    return-object v0
.end method

.method public getLatestMsgData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgData:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgId:J

    return-wide v0
.end method

.method public getLatestMsgType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->sessionType:I

    return v0
.end method

.method public getUnReadCnt()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->unReadCnt:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->updateTime:J

    return-wide v0
.end method

.method public isForbidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isForbidden:Z

    return v0
.end method

.method public isTalk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTalk:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTop:Z

    return v0
.end method

.method public setAvatar(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->avatar:Ljava/util/List;

    return-void
.end method

.method public setForbidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isForbidden:Z

    return-void
.end method

.method public setLatestMsgData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgData:Ljava/lang/String;

    return-void
.end method

.method public setLatestMsgId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgId:J

    return-void
.end method

.method public setLatestMsgType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->latestMsgType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPeerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->peerId:Ljava/lang/String;

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->sessionKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->sessionType:I

    return-void
.end method

.method public setTalk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTalk:Z

    return-void
.end method

.method public setTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTop:Z

    return-void
.end method

.method public setUnReadCnt(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->unReadCnt:I

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/entity/RecentInfo;->updateTime:J

    return-void
.end method
