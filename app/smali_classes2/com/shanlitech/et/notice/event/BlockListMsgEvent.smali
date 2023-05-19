.class public Lcom/shanlitech/et/notice/event/BlockListMsgEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "BlockListMsgEvent.java"


# instance fields
.field public expired:J

.field public msg:Ljava/lang/String;

.field public operator:J

.field public reason:J

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->uid:J

    .line 4
    iput-wide p3, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->expired:J

    .line 5
    iput-wide p5, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->reason:J

    .line 6
    iput-object p7, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->msg:Ljava/lang/String;

    .line 7
    iput-wide p8, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->operator:J

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->expired:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockListMsgEvent{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->expired:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->reason:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;->operator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
