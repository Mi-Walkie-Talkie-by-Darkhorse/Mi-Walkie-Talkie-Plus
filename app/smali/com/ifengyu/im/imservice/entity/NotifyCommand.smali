.class public Lcom/ifengyu/im/imservice/entity/NotifyCommand;
.super Ljava/lang/Object;
.source "NotifyCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;
    }
.end annotation


# instance fields
.field public commandId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "command_id"
    .end annotation
.end field

.field public displayContent:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg_body"
    .end annotation
.end field

.field public msgOrigin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg_origin"
    .end annotation
.end field

.field public msgSeq:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg_seq"
    .end annotation
.end field

.field public msgType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg_type"
    .end annotation
.end field

.field public serviceId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_id"
    .end annotation
.end field

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommandId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    return v0
.end method

.method public getDisplayContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgBody()Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    return-object v0
.end method

.method public getMsgOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgSeq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgSeq:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgType:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->serviceId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->status:I

    return v0
.end method

.method public setCommandId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    return-void
.end method

.method public setDisplayContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setMsgBody(Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    return-void
.end method

.method public setMsgOrigin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgOrigin:Ljava/lang/String;

    return-void
.end method

.method public setMsgSeq(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgSeq:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgType:I

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->serviceId:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyCommand{commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->commandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgBody:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgOrigin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->serviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->displayContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
