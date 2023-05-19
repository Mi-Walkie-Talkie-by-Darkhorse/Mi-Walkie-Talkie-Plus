.class public Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "AudioPlayProgressEvent.java"


# instance fields
.field private currentFrames:I

.field private progress:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput p1, p0, Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;->progress:I

    .line 3
    iput p2, p0, Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;->currentFrames:I

    return-void
.end method


# virtual methods
.method public getCurrentFrames()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;->currentFrames:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;->progress:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioPlayProgressEvent{progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/AudioPlayProgressEvent;->currentFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/BaseEvent;->evenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
