.class public Lcom/ifengyu/talk/models/HistoryMsgModel;
.super Ljava/lang/Object;
.source "HistoryMsgModel.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "history_msg"
.end annotation


# static fields
.field public static final MSG_TYPE_AUDIO_FILE:I = 0x4

.field public static final MSG_TYPE_AUDIO_SPEECH:I = 0x3

.field public static final MSG_TYPE_CHANGE_GROUP_AVATAR:I = 0xe

.field public static final MSG_TYPE_CHANGE_GROUP_NAME:I = 0xf

.field public static final MSG_TYPE_INVITE_TO_GROUP:I = 0x5

.field public static final MSG_TYPE_JOIN_GROUP_BY_TOKEN:I = 0x6

.field public static final MSG_TYPE_LOCATION:I = 0xb

.field public static final MSG_TYPE_ONE_TO_ONE_GROUP:I = 0x9

.field public static final MSG_TYPE_PIC:I = 0x2

.field public static final MSG_TYPE_QUIT_GROUP:I = 0x7

.field public static final MSG_TYPE_SESSION_STATE:I = 0xc

.field public static final MSG_TYPE_SPEECH_ACTION_FINISH:I = 0xf69b6

.field public static final MSG_TYPE_SPEECH_ACTION_ING:I = 0xf69b5

.field public static final MSG_TYPE_TEXT:I = 0x1

.field public static final MSG_TYPE_TRANS_GROUP:I = 0x8

.field public static final MSG_TYPE_VIDEO:I = 0xd

.field public static final MSG_TYPE_VIDEO_FILE:I = 0xa


# instance fields
.field private account:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private bodyParse:Ljava/lang/Object;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private gid:J

.field private id:J
    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private msgTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "msg_time"
    .end annotation
.end field

.field private msgType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "msg_type"
    .end annotation
.end field

.field private receiver:J

.field private receiverType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "receiver_type"
    .end annotation
.end field

.field private sender:J

.field private senderType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "sender_type"
    .end annotation
.end field

.field private speechTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "speech_time"
    .end annotation
.end field

.field private toWord:Ljava/lang/String;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private uname:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "u_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyParse()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->bodyParse:Ljava/lang/Object;

    return-object v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->gid:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->id:J

    return-wide v0
.end method

.method public getMsgTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->msgTime:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->msgType:I

    return v0
.end method

.method public getReceiver()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->receiver:J

    return-wide v0
.end method

.method public getReceiverType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->receiverType:I

    return v0
.end method

.method public getSender()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->sender:J

    return-wide v0
.end method

.method public getSenderType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->senderType:I

    return v0
.end method

.method public getSpeechTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->speechTime:J

    return-wide v0
.end method

.method public getToWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->toWord:Ljava/lang/String;

    return-object v0
.end method

.method public getUname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->uname:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->account:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->body:Ljava/lang/String;

    return-void
.end method

.method public setBodyParse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->bodyParse:Ljava/lang/Object;

    return-void
.end method

.method public setGid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->gid:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->id:J

    return-void
.end method

.method public setMsgTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->msgTime:J

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->msgType:I

    return-void
.end method

.method public setReceiver(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->receiver:J

    return-void
.end method

.method public setReceiverType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->receiverType:I

    return-void
.end method

.method public setSender(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->sender:J

    return-void
.end method

.method public setSenderType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->senderType:I

    return-void
.end method

.method public setSpeechTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->speechTime:J

    return-void
.end method

.method public setToWord(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->toWord:Ljava/lang/String;

    return-void
.end method

.method public setUname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->uname:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryMsgEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msgTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->msgTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", sender="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->sender:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", receiver="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->receiver:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", senderType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->senderType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", receiverType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->receiverType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", speechTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->speechTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->uname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", account=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/models/HistoryMsgModel;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
