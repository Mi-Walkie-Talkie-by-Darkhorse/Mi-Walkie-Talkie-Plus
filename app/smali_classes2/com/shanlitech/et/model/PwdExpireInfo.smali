.class public Lcom/shanlitech/et/model/PwdExpireInfo;
.super Ljava/lang/Object;
.source "PwdExpireInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private curTime:J

.field private pwdExpireDays:I

.field private pwdUpTime:J

.field private pwdWnDays:I


# direct methods
.method public constructor <init>(JJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdUpTime:J

    .line 3
    iput-wide p3, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->curTime:J

    .line 4
    iput p5, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdWnDays:I

    .line 5
    iput p6, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdExpireDays:I

    return-void
.end method


# virtual methods
.method public getCurTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->curTime:J

    return-wide v0
.end method

.method public getPwdExpireDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdExpireDays:I

    return v0
.end method

.method public getPwdUpTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdUpTime:J

    return-wide v0
.end method

.method public getPwdWnDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdWnDays:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PwdExpireInfo{pwdUpTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdUpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", curTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->curTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pwdWnDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdWnDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pwdExpireDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/PwdExpireInfo;->pwdExpireDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
