.class public Lcom/shanlitech/et/web/tob/model/TerminalStatus;
.super Ljava/lang/Object;
.source "TerminalStatus.java"


# instance fields
.field private battery:I

.field private imei:Ljava/lang/String;

.field private signal:I

.field private time:J

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBattery()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->battery:I

    return v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getSignal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->signal:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->time:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->uid:J

    return-wide v0
.end method

.method public setBattery(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->battery:I

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->imei:Ljava/lang/String;

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->signal:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->time:J

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->uid:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TerminalStatus{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->signal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imei=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/model/TerminalStatus;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
