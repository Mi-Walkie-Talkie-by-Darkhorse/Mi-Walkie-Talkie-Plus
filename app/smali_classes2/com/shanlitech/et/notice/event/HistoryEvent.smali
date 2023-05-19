.class public Lcom/shanlitech/et/notice/event/HistoryEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "HistoryEvent.java"


# instance fields
.field gid:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/HistoryEvent;->gid:J

    return-void
.end method


# virtual methods
.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/HistoryEvent;->gid:J

    return-wide v0
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/HistoryEvent;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getHistory()Lcom/shanlitech/et/model/HistoryList;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/HistoryEvent;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/n;->b(J)Lcom/shanlitech/et/model/HistoryList;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentGroup()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/HistoryEvent;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/shanlitech/et/notice/event/HistoryEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "gid="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/HistoryEvent;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
