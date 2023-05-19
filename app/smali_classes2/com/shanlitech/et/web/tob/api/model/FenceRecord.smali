.class public Lcom/shanlitech/et/web/tob/api/model/FenceRecord;
.super Ljava/lang/Object;
.source "FenceRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private alarmTime:Ljava/lang/Long;

.field private efId:I

.field private efName:Ljava/lang/String;

.field private id:I

.field private relieveAlarmTime:Ljava/lang/Long;

.field private type:I

.field private uLatGcj:D

.field private uLon84:D

.field private uLonBd:D

.field private uLonGcj:D

.field private uNLat84:D

.field private uNLatBd:D

.field private uNLatGcj:D

.field private uNLon84:D

.field private uNLonBd:D

.field private uNLonGcj:D

.field private uid:Ljava/lang/String;

.field private ulat84:D

.field private ulatBd:D

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->alarmTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getEfId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->efId:I

    return v0
.end method

.method public getEfName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->efName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->id:I

    return v0
.end method

.method public getRelieveAlarmTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->relieveAlarmTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUlat84()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->ulat84:D

    return-wide v0
.end method

.method public getUlatBd()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->ulatBd:D

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getuLatGcj()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLatGcj:D

    return-wide v0
.end method

.method public getuLon84()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLon84:D

    return-wide v0
.end method

.method public getuLonBd()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLonBd:D

    return-wide v0
.end method

.method public getuLonGcj()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLonGcj:D

    return-wide v0
.end method

.method public getuNLat84()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLat84:D

    return-wide v0
.end method

.method public getuNLatBd()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLatBd:D

    return-wide v0
.end method

.method public getuNLatGcj()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLatGcj:D

    return-wide v0
.end method

.method public getuNLon84()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLon84:D

    return-wide v0
.end method

.method public getuNLonBd()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLonBd:D

    return-wide v0
.end method

.method public getuNLonGcj()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLonGcj:D

    return-wide v0
.end method

.method public setAlarmTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->alarmTime:Ljava/lang/Long;

    return-void
.end method

.method public setEfId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->efId:I

    return-void
.end method

.method public setEfName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->efName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->id:I

    return-void
.end method

.method public setRelieveAlarmTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->relieveAlarmTime:Ljava/lang/Long;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUlat84(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->ulat84:D

    return-void
.end method

.method public setUlatBd(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->ulatBd:D

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->userName:Ljava/lang/String;

    return-void
.end method

.method public setuLatGcj(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLatGcj:D

    return-void
.end method

.method public setuLon84(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLon84:D

    return-void
.end method

.method public setuLonBd(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLonBd:D

    return-void
.end method

.method public setuLonGcj(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLonGcj:D

    return-void
.end method

.method public setuNLat84(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLat84:D

    return-void
.end method

.method public setuNLatBd(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLatBd:D

    return-void
.end method

.method public setuNLatGcj(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLatGcj:D

    return-void
.end method

.method public setuNLon84(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLon84:D

    return-void
.end method

.method public setuNLonBd(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLonBd:D

    return-void
.end method

.method public setuNLonGcj(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLonGcj:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmRecord{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", efId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->efId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", efName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->efName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", alarmTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->alarmTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relieveAlarmTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->relieveAlarmTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uLonBd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLonBd:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ulatBd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->ulatBd:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uLon84="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLon84:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ulat84="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->ulat84:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uLonGcj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLonGcj:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uLatGcj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uLatGcj:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uNLonBd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLonBd:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uNLatBd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLatBd:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uNLon84="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLon84:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uNLat84="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLat84:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uNLonGcj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLonGcj:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", uNLatGcj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->uNLatGcj:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/FenceRecord;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
