.class public Lcom/shanlitech/et/model/HistoryAudio;
.super Lcom/shanlitech/et/web/b/c/d;
.source "HistoryAudio.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryAudio"


# instance fields
.field private duration:J

.field private gid:J

.field private payload:I

.field private sid:J

.field private startTime:J

.field private stopTime:J

.field private uid:J

.field private webPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/d;-><init>()V

    const/16 v0, 0x65

    .line 11
    iput v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->payload:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->duration:J

    .line 13
    iput-wide p1, p0, Lcom/shanlitech/et/model/HistoryAudio;->sid:J

    .line 14
    iput-wide p5, p0, Lcom/shanlitech/et/model/HistoryAudio;->uid:J

    .line 15
    iput-wide p3, p0, Lcom/shanlitech/et/model/HistoryAudio;->gid:J

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/d;-><init>()V

    const/16 v0, 0x65

    .line 17
    iput v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->payload:I

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->duration:J

    .line 19
    iput-wide p1, p0, Lcom/shanlitech/et/model/HistoryAudio;->sid:J

    .line 20
    iput-wide p5, p0, Lcom/shanlitech/et/model/HistoryAudio;->uid:J

    .line 21
    iput-wide p3, p0, Lcom/shanlitech/et/model/HistoryAudio;->gid:J

    .line 22
    iput-wide p7, p0, Lcom/shanlitech/et/model/HistoryAudio;->startTime:J

    .line 23
    iput-wide p9, p0, Lcom/shanlitech/et/model/HistoryAudio;->stopTime:J

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/notice/event/SpeakEvent;Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/d;-><init>()V

    const/16 v0, 0x65

    .line 2
    iput v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->payload:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->duration:J

    .line 4
    invoke-virtual {p2}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->sid:J

    .line 5
    invoke-virtual {p2}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->gid:J

    .line 6
    invoke-virtual {p2}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getUID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->uid:J

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/BaseEvent;->getEvenTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->startTime:J

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/shanlitech/et/notice/event/BaseEvent;->getEvenTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->stopTime:J

    .line 9
    invoke-virtual {p2}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getDuration()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shanlitech/et/model/HistoryAudio;->duration:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/d;-><init>()V

    const/16 v0, 0x65

    .line 25
    iput v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->payload:I

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->duration:J

    const-string v0, "speech_id"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->sid:J

    const-string v0, "gid"

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->gid:J

    const-string v0, "uid"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->uid:J

    const-string v0, "t_start"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->startTime:J

    const-string v0, "t_end"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->stopTime:J

    const-string v0, "payload"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->payload:I

    const-string v0, "speech_index"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/model/HistoryAudio;->webPath:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCachePath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/n;->c(Lcom/shanlitech/et/model/HistoryAudio;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->stopTime:J

    iget-wide v2, p0, Lcom/shanlitech/et/model/HistoryAudio;->startTime:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->gid:J

    return-wide v0
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryAudio;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->payload:I

    return v0
.end method

.method public getSid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->sid:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->startTime:J

    return-wide v0
.end method

.method public getStopTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->stopTime:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->uid:J

    return-wide v0
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryAudio;->uid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getWebPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/HistoryAudio;->webPath:Ljava/lang/String;

    return-object v0
.end method

.method public isMyAudio()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryAudio;->uid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->m(J)Z

    move-result v0

    return v0
.end method

.method public setWebPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/HistoryAudio;->webPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/shanlitech/et/model/HistoryAudio;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " uid="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryAudio;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " me="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " sid="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryAudio;->sid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " gid="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryAudio;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " start="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryAudio;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " stop="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryAudio;->stopTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
