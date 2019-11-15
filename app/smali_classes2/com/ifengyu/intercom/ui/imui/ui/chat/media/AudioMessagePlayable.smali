.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;
.super Ljava/lang/Object;
.source "AudioMessagePlayable.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;


# instance fields
.field private message:Lcom/ifengyu/im/imservice/model/MessageEntity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;->message:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;->message:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessage()Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;->message:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;->message:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioEqual(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)Z
    .locals 2

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;->message:Lcom/ifengyu/im/imservice/model/MessageEntity;

    check-cast p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;->getMessage()Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->isTheSame(Lcom/ifengyu/im/imservice/model/IMessage;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
