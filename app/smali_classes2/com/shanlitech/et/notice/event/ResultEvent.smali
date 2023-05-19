.class public Lcom/shanlitech/et/notice/event/ResultEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "ResultEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;
    }
.end annotation


# instance fields
.field protected code:I

.field protected gid:J

.field protected isFromUserChange:Z

.field protected msg:Ljava/lang/String;

.field protected result:Z

.field protected type:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field protected uid:J


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;JZ)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->result:Z

    .line 10
    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NON:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    iput-object v1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->type:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 11
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->isFromUserChange:Z

    .line 12
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->type:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 13
    iput-boolean p4, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->result:Z

    .line 14
    iput-wide p2, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->uid:J

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->result:Z

    .line 3
    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NON:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    iput-object v1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->type:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 4
    iput-boolean v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->isFromUserChange:Z

    .line 5
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->type:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 6
    iput-boolean p2, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->result:Z

    .line 7
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->uid:J

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->code:I

    return v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->gid:J

    return-wide v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->type:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->uid:J

    return-wide v0
.end method

.method public isFromUserChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->isFromUserChange:Z

    return v0
.end method

.method public setCode(I)Lcom/shanlitech/et/notice/event/ResultEvent;
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->code:I

    return-object p0
.end method

.method public setGid(J)Lcom/shanlitech/et/notice/event/ResultEvent;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->gid:J

    return-object p0
.end method

.method public setIsFromUserChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->isFromUserChange:Z

    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/ResultEvent;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->result:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultEvent{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->type:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isFromUserChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->isFromUserChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/ResultEvent;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
