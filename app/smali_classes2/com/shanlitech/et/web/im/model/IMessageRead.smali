.class public Lcom/shanlitech/et/web/im/model/IMessageRead;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "IMessageRead.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private msgId:J

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/shanlitech/et/web/im/model/IMessageRead;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/web/im/model/IMessageRead;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/h;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/web/im/model/IMessageRead;

    return-object p0
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessageRead;->msgId:J

    return-wide v0
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/web/im/model/IMessageRead;->userId:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessageRead;->userId:J

    return-wide v0
.end method

.method public setMsgId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessageRead;->msgId:J

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessageRead;->userId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMessageRead{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/im/model/IMessageRead;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/im/model/IMessageRead;->msgId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
