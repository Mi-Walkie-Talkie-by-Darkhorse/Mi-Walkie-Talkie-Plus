.class public Lcom/ifengyu/im/protobuf/helper/EntityChangeEngine;
.super Ljava/lang/Object;
.source "EntityChangeEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSessionEntity(Lcom/ifengyu/im/imservice/model/MessageEntity;)Lcom/ifengyu/im/imservice/model/SessionEntity;
    .locals 4

    new-instance v0, Lcom/ifengyu/im/imservice/model/SessionEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgData(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setTime(J)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgId(J)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setTalkId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setSessionType(I)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgType(I)V

    return-object v0
.end method

.method public static getSessionKey(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static spiltSessionKey(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spiltSessionKey error,cause by empty sessionKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "_"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
