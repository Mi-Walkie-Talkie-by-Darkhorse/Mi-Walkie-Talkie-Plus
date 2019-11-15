.class public Lcom/ifengyu/im/imservice/model/MessageEntity;
.super Ljava/lang/Object;
.source "MessageEntity.java"

# interfaces
.implements Lcom/ifengyu/im/imservice/model/IMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;
    }
.end annotation


# instance fields
.field public attachStatus:I

.field public attachment:Lcom/ifengyu/im/imservice/model/MsgAttachment;

.field public command:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

.field public content:Ljava/lang/String;

.field public direct:I

.field public fromId:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public msgId:J

.field private msgSeq:J

.field public msgType:I

.field public sessionType:I

.field public status:I

.field public time:J

.field public toId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JJLjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;JLcom/ifengyu/im/imservice/model/MsgAttachment;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->id:Ljava/lang/Long;

    iput-wide p2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    iput-wide p4, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgSeq:J

    iput-object p6, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->fromId:Ljava/lang/String;

    iput-object p7, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    iput p8, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->sessionType:I

    iput p9, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgType:I

    iput p10, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->status:I

    iput p11, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->direct:I

    iput-object p12, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->content:Ljava/lang/String;

    iput-wide p13, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->time:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->attachment:Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move/from16 v0, p16

    iput v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->attachStatus:I

    return-void
.end method

.method public static getMessageEntity(ILcom/mi/mimsgsdk/service/aidl/MiMessage;Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 6

    new-instance v2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-direct {v2}, Lcom/ifengyu/im/imservice/model/MessageEntity;-><init>()V

    iget-wide v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setMsgId(J)V

    iget-wide v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setMsgSeq(J)V

    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setDirect(I)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setFromId(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setToId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ifengyu/im/imservice/constant/MsgType;->getMsgType(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setMsgType(I)V

    invoke-static {p0}, Lcom/ifengyu/im/imservice/constant/SessionType;->getSessionType(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setSessionType(I)V

    iget v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    if-lez v0, :cond_2

    iget v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setTime(J)V

    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    instance-of v1, v0, Lcom/mi/mimsgsdk/message/AudioBody;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/mi/mimsgsdk/message/AudioBody;

    new-instance v1, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    invoke-direct {v1}, Lcom/ifengyu/im/imservice/model/AudioAttachment;-><init>()V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/message/AudioBody;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/message/AudioBody;->getLength()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->setDuration(J)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setAttachment(Lcom/ifengyu/im/imservice/model/MsgAttachment;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setAttachStatus(I)V

    :cond_0
    :goto_2
    return-object v2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/mi/mimsgsdk/message/TextBody;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/mi/mimsgsdk/message/TextBody;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/message/TextBody;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setContent(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    instance-of v1, v0, Lcom/mi/mimsgsdk/message/CustomBody;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mi/mimsgsdk/message/CustomBody;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/message/CustomBody;->codeBody()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setContent(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getSessionKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildSessionKey()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->direct:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getPeerId(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, p1, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    iget-wide v4, p1, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgSeq:J

    iget-wide v4, p1, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgSeq:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAttachStatus()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->attachStatus:I

    return v0
.end method

.method public getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->attachment:Lcom/ifengyu/im/imservice/model/MsgAttachment;

    return-object v0
.end method

.method public getCommand()Lcom/ifengyu/im/imservice/entity/NotifyCommand;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->command:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDirect()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->direct:I

    return v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->fromId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessageDisplay()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    const-string v0, "[\u672a\u77e5\u6d88\u606f]"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "[\u8bed\u97f3]"

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->content:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v0, "[\u56fe\u7247]"

    goto :goto_0

    :pswitch_4
    const-string v0, "[\u7cfb\u7edf\u6d88\u606f]"

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/MessageParseEngine;->parseGroupNotifyMsg(Ljava/lang/String;)Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    return-wide v0
.end method

.method public getMsgSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgSeq:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgType:I

    return v0
.end method

.method public getPeerId(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->fromId:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->fromId:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSessionType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->sessionType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->status:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->time:J

    return-wide v0
.end method

.method public getToId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isSend(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->fromId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTheSame(Lcom/ifengyu/im/imservice/model/IMessage;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ifengyu/im/imservice/model/IMessage;->getMsgId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttachStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->attachStatus:I

    return-void
.end method

.method public setAttachment(Lcom/ifengyu/im/imservice/model/MsgAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->attachment:Lcom/ifengyu/im/imservice/model/MsgAttachment;

    return-void
.end method

.method public setCommand(Lcom/ifengyu/im/imservice/entity/NotifyCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->command:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setDirect(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->direct:I

    return-void
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->fromId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMsgId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    return-void
.end method

.method public setMsgSeq(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgSeq:J

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgType:I

    return-void
.end method

.method public setSessionType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->sessionType:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->status:I

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->time:J

    return-void
.end method

.method public setToId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->fromId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->sessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->direct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->attachment:Lcom/ifengyu/im/imservice/model/MsgAttachment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/model/MessageEntity;->attachStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
