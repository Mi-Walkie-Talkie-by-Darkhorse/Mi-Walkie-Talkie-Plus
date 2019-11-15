.class public Lcom/ifengyu/im/imservice/model/SessionEntity;
.super Ljava/lang/Object;
.source "SessionEntity.java"

# interfaces
.implements Lcom/ifengyu/im/imservice/model/RecentContact;


# instance fields
.field public avatar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public latestMsgData:Ljava/lang/String;

.field public latestMsgId:J

.field public latestMsgType:I

.field public name:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public sessionKey:Ljava/lang/String;

.field public sessionType:I

.field public tag:J

.field public talkId:Ljava/lang/String;

.field public time:J

.field public unreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;IIJLjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    iput p3, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionType:I

    iput p4, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgType:I

    iput-wide p5, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgId:J

    iput-object p7, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgData:Ljava/lang/String;

    iput p8, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->unreadCount:I

    iput-object p9, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    iput-wide p10, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->time:J

    iput-wide p12, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->tag:J

    iput-object p14, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    iput-object p15, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->talkId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildSessionKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/ifengyu/im/imservice/model/SessionEntity;

    iget v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionType:I

    iget v3, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgType:I

    iget v3, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgType:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgId:J

    iget-wide v4, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->unreadCount:I

    iget v3, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->unreadCount:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->time:J

    iget-wide v4, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->tag:J

    iget-wide v4, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->tag:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->name:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/ifengyu/im/imservice/model/SessionEntity;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_1
.end method

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

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->avatar:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLatestMsgData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgData:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgId:J

    return-wide v0
.end method

.method public getLatestMsgType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionType:I

    return v0
.end method

.method public getTag()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->tag:J

    return-wide v0
.end method

.method public getTalkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->talkId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->time:J

    return-wide v0
.end method

.method public getUnreadCount()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->unreadCount:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgId:J

    iget-wide v4, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->unreadCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->time:J

    iget-wide v4, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->time:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->tag:J

    iget-wide v4, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->tag:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
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

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->avatar:Ljava/util/List;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLatestMsgData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgData:Ljava/lang/String;

    return-void
.end method

.method public setLatestMsgId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgId:J

    return-void
.end method

.method public setLatestMsgType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->latestMsgType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->sessionType:I

    return-void
.end method

.method public setTag(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->tag:J

    return-void
.end method

.method public setTalkId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->talkId:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->time:J

    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/model/SessionEntity;->unreadCount:I

    return-void
.end method
