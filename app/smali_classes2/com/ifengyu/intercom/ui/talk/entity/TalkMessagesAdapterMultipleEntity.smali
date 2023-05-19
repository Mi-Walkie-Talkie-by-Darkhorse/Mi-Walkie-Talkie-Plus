.class public Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;
.super Ljava/lang/Object;
.source "TalkMessagesAdapterMultipleEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUDIO_STATE_HISTORY_PALING:I = 0x2

.field public static final AUDIO_STATE_NORMAL:I = 0x1

.field public static final AUDIO_STATE_SPEAKING:I = 0x3

.field public static final TYPE_EVENT:I = 0x67

.field public static final TYPE_OTHER_AUDIO_MSG:I = 0x65

.field public static final TYPE_SELF_AUDIO_MSG:I = 0x66


# instance fields
.field private audioDuration:J

.field private audioSid:J

.field private audioState:I

.field private audioUid:J

.field private historyEntity:Lcom/ifengyu/talk/models/HistoryMsgModel;

.field private msgTime:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getMsgTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->compareTo(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getType()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x67

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getType()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getId()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioSid()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioSid()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public getAudioDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->audioDuration:J

    return-wide v0
.end method

.method public getAudioSid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->audioSid:J

    return-wide v0
.end method

.method public getAudioState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->audioState:I

    return v0
.end method

.method public getAudioUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->audioUid:J

    return-wide v0
.end method

.method public getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->historyEntity:Lcom/ifengyu/talk/models/HistoryMsgModel;

    return-object v0
.end method

.method public getMsgTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->msgTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->type:I

    return v0
.end method

.method public setAudioDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->audioDuration:J

    return-void
.end method

.method public setAudioSid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->audioSid:J

    return-void
.end method

.method public setAudioState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->audioState:I

    return-void
.end method

.method public setAudioUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->audioUid:J

    return-void
.end method

.method public setHistoryEntity(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->historyEntity:Lcom/ifengyu/talk/models/HistoryMsgModel;

    return-void
.end method

.method public setMsgTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->msgTime:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->type:I

    return-void
.end method
