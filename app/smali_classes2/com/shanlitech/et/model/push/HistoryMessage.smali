.class public Lcom/shanlitech/et/model/push/HistoryMessage;
.super Lcom/shanlitech/et/web/b/c/e;
.source "HistoryMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;,
        Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "History"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private account:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private id:J

.field private idInDB:Ljava/lang/Long;

.field private isFavorite:I

.field private isRead:I

.field private localUUId:Ljava/lang/String;

.field private msgTime:J

.field private msgType:I

.field private receiver:J

.field private receiverType:I

.field private sendStatus:I

.field private sender:J

.field private senderType:I

.field private uname:Ljava/lang/String;

.field private uuiId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/e;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sendStatus:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJIJILjava/lang/String;Ljava/lang/String;III)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/e;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->sendStatus:I

    move-wide v1, p1

    .line 4
    iput-wide v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->id:J

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->idInDB:Ljava/lang/Long;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->uuiId:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->localUUId:Ljava/lang/String;

    move v1, p6

    .line 8
    iput v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->body:Ljava/lang/String;

    move-wide v1, p8

    .line 10
    iput-wide v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgTime:J

    move-wide v1, p10

    .line 11
    iput-wide v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiver:J

    move v1, p12

    .line 12
    iput v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiverType:I

    move-wide/from16 v1, p13

    .line 13
    iput-wide v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->sender:J

    move/from16 v1, p15

    .line 14
    iput v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->uname:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->account:Ljava/lang/String;

    move/from16 v1, p18

    .line 17
    iput v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->isFavorite:I

    move/from16 v1, p19

    .line 18
    iput v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->isRead:I

    move/from16 v1, p20

    .line 19
    iput v1, v0, Lcom/shanlitech/et/model/push/HistoryMessage;->sendStatus:I

    return-void
.end method

.method public static buildUUID(JJILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const/4 p0, 0x3

    aput-object p5, v0, p0

    const-string p0, "%s_%s_%s_%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "History"

    return-object v0
.end method

.method public static toIMessageList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/push/HistoryMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/im/model/IMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/push/HistoryMessage;

    .line 4
    invoke-virtual {v1}, Lcom/shanlitech/et/web/b/c/e;->buildIMessageBody()Lcom/shanlitech/et/web/im/model/IMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shanlitech/et/model/push/HistoryMessage;

    .line 3
    iget-wide v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->id:J

    iget-wide v4, p1, Lcom/shanlitech/et/model/push/HistoryMessage;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    iget v3, p1, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiver:J

    iget-wide v4, p1, Lcom/shanlitech/et/model/push/HistoryMessage;->receiver:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiverType:I

    iget v3, p1, Lcom/shanlitech/et/model/push/HistoryMessage;->receiverType:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sender:J

    iget-wide v4, p1, Lcom/shanlitech/et/model/push/HistoryMessage;->sender:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    iget p1, p1, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public fixHistorySessionType()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->buildHistorySessionStatus()Lcom/shanlitech/et/model/push/HistorySessionStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/push/HistorySessionStatus;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/push/HistorySessionStatus;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_LEAVE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/shanlitech/et/model/push/HistorySessionStatus;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_SESSION_QUIT:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/push/HistoryMessage;->setMsgType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->id:J

    return-wide v0
.end method

.method public getIdInDB()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->idInDB:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFavorite()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->isFavorite:I

    return v0
.end method

.method public getIsRead()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->isRead:I

    return v0
.end method

.method public getLocalUUId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->localUUId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    invoke-static {v0}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->access$000(I)Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    move-result-object v0

    return-object v0
.end method

.method public getMsgSendStatus()Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sendStatus:I

    invoke-static {v0}, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->build(I)Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMsgTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgTime:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    return v0
.end method

.method public getReceiver()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiver:J

    return-wide v0
.end method

.method public getReceiverType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiverType:I

    return v0
.end method

.method public getSendStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sendStatus:I

    return v0
.end method

.method public getSender()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sender:J

    return-wide v0
.end method

.method public getSenderType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    return v0
.end method

.method public getUname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->uname:Ljava/lang/String;

    return-object v0
.end method

.method public getUuiId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->uuiId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiver:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiverType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sender:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initUUIDFromMsgBody()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->buildIMessageBody()Lcom/shanlitech/et/web/im/model/IMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMsgUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMsgUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/web/im/model/IMessage;->getMsgUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/push/HistoryMessage;->setAllUUID(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sender:J

    iget-wide v3, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiver:J

    iget v5, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    invoke-virtual {p0}, Lcom/shanlitech/et/model/push/HistoryMessage;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/shanlitech/et/model/push/HistoryMessage;->buildUUID(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/push/HistoryMessage;->setAllUUID(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isSameMsg(Lcom/shanlitech/et/model/push/HistoryMessage;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->uuiId:Ljava/lang/String;

    iget-object v1, p1, Lcom/shanlitech/et/model/push/HistoryMessage;->uuiId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->localUUId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/shanlitech/et/model/push/HistoryMessage;->localUUId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/push/HistoryMessage;->getLocalUUId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/push/HistoryMessage;->getLocalUUId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isUseless()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->buildHistorySessionStatus()Lcom/shanlitech/et/model/push/HistorySessionStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/push/HistorySessionStatus;->getType()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/push/HistorySessionStatus;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public post()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->account:Ljava/lang/String;

    return-void
.end method

.method public setAllUUID(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setUuiId(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setLocalUUId(Ljava/lang/String;)V

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->body:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->id:J

    return-void
.end method

.method public setIdInDB(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->idInDB:Ljava/lang/Long;

    return-void
.end method

.method public setIsFavorite(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->isFavorite:I

    return-void
.end method

.method public setIsRead(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->isRead:I

    return-void
.end method

.method public setLocalUUId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->localUUId:Ljava/lang/String;

    return-void
.end method

.method public setMsgSendStatus(Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->access$100(Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;)I

    move-result p1

    iput p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sendStatus:I

    return-void
.end method

.method public setMsgTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgTime:J

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    return-void
.end method

.method public setReceiver(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiver:J

    return-void
.end method

.method public setReceiverType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiverType:I

    return-void
.end method

.method public setSendStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sendStatus:I

    return-void
.end method

.method public setSender(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sender:J

    return-void
.end method

.method public setSenderType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    return-void
.end method

.method public setUname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->uname:Ljava/lang/String;

    return-void
.end method

.method public setUuiId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->uuiId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryMessage{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msgTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->msgTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", sender="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->sender:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", receiver="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiver:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", receiverType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->receiverType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", senderType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->senderType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isFavorite="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->isFavorite:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->uname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", account=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/push/HistoryMessage;->isRead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
