.class public Lcom/shanlitech/et/web/model/UserInfo;
.super Lcom/shanlitech/et/web/b/c/h;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private account:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private bannedEndTime:J

.field private bannedReason:Ljava/lang/String;

.field private curTime:J

.field private expire:J

.field private failNum:I

.field private isOriginalPwd:I

.field private isTest:I

.field private lockAccountCount:I

.field private lockTime:Ljava/lang/String;

.field private loginType:I

.field private name:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;

.field private platformId:I

.field private pwd:Ljava/lang/String;

.field private pwdExpireDays:I

.field private pwdUpTime:J

.field private pwdWnDays:I

.field private sex:I

.field private sourceType:I

.field private subType:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/h;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBannedEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->bannedEndTime:J

    return-wide v0
.end method

.method public getBannedReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->bannedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCurTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->curTime:J

    return-wide v0
.end method

.method public getExpire()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->expire:J

    return-wide v0
.end method

.method public getFailNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->failNum:I

    return v0
.end method

.method public getIsOriginalPwd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->isOriginalPwd:I

    return v0
.end method

.method public getIsTest()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->isTest:I

    return v0
.end method

.method public getLockAccountCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->lockAccountCount:I

    return v0
.end method

.method public getLockTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->lockTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->loginType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->platformId:I

    return v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getPwdExpireDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdExpireDays:I

    return v0
.end method

.method public getPwdUpTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdUpTime:J

    return-wide v0
.end method

.method public getPwdWnDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdWnDays:I

    return v0
.end method

.method public getSex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->sex:I

    return v0
.end method

.method public getSourceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->sourceType:I

    return v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/model/UserInfo;->uid:J

    return-wide v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->account:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBannedEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->bannedEndTime:J

    return-void
.end method

.method public setBannedReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->bannedReason:Ljava/lang/String;

    return-void
.end method

.method public setCurTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->curTime:J

    return-void
.end method

.method public setExpire(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->expire:J

    return-void
.end method

.method public setFailNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->failNum:I

    return-void
.end method

.method public setIsOriginalPwd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->isOriginalPwd:I

    return-void
.end method

.method public setIsTest(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->isTest:I

    return-void
.end method

.method public setLockAccountCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->lockAccountCount:I

    return-void
.end method

.method public setLockTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->lockTime:Ljava/lang/String;

    return-void
.end method

.method public setLoginType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->loginType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public setPlatformId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->platformId:I

    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwd:Ljava/lang/String;

    return-void
.end method

.method public setPwdExpireDays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdExpireDays:I

    return-void
.end method

.method public setPwdUpTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdUpTime:J

    return-void
.end method

.method public setPwdWnDays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdWnDays:I

    return-void
.end method

.method public setSex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->sex:I

    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->sourceType:I

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->subType:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/model/UserInfo;->uid:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pwd=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expire="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->expire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->sex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOriginalPwd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->isOriginalPwd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockAccountCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->lockAccountCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->subType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", failNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->failNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->lockTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isTest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->isTest:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bannedEndTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->bannedEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", bannedReason=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/model/UserInfo;->bannedReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", loginType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->loginType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->sourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", platformId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->platformId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pwdUpTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdUpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", curTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->curTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pwdWnDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdWnDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pwdExpireDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/model/UserInfo;->pwdExpireDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
