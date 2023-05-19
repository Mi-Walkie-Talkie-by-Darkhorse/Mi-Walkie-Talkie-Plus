.class public Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "HistoryAudioPlayEvent.java"


# instance fields
.field private sid:J

.field private status:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->status:J

    .line 3
    iput-wide p3, p0, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->sid:J

    return-void
.end method

.method public static build(JJ)Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public getSID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->sid:J

    return-wide v0
.end method

.method public getStatus()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->status:J

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->status:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->status:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->sid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
