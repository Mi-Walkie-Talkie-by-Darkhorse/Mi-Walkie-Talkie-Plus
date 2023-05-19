.class public Lcom/shanlitech/et/notice/event/SpeakEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "SpeakEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;
    }
.end annotation


# static fields
.field private static soundGroup:Lcom/shanlitech/et/model/Group;

.field private static soundUser:Lcom/shanlitech/et/model/User;


# instance fields
.field _gid:J

.field _groupName:Ljava/lang/String;

.field private _speakType:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

.field _uid:J

.field _userName:Ljava/lang/String;

.field duration:J

.field reason:J

.field sid:J

.field size:I


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;I)V
    .locals 12

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JLcom/shanlitech/et/notice/event/SpeakEvent;I)V

    move/from16 v0, p8

    int-to-long v0, v0

    move-object v2, p0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->setReason(J)Lcom/shanlitech/et/notice/event/SpeakEvent;

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JI)V
    .locals 12

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v11, p10

    .line 4
    invoke-direct/range {v0 .. v11}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JLcom/shanlitech/et/notice/event/SpeakEvent;I)V

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JII)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_speakType:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 16
    iput-wide p2, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_uid:J

    .line 17
    iput-object p4, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_userName:Ljava/lang/String;

    .line 18
    iput-wide p5, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_gid:J

    .line 19
    iput-object p7, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_groupName:Ljava/lang/String;

    .line 20
    iput-wide p8, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->sid:J

    int-to-long p1, p10

    .line 21
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->duration:J

    .line 22
    iput p11, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->size:I

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;JLcom/shanlitech/et/notice/event/SpeakEvent;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_speakType:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 7
    iput-wide p2, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_uid:J

    .line 8
    iput-object p4, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_userName:Ljava/lang/String;

    .line 9
    iput-wide p5, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_gid:J

    .line 10
    iput-object p7, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_groupName:Ljava/lang/String;

    .line 11
    iput-wide p8, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->sid:J

    .line 12
    iput p11, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->size:I

    if-eqz p10, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;->getEvenTime()J

    move-result-wide p1

    invoke-virtual {p10}, Lcom/shanlitech/et/notice/event/BaseEvent;->getEvenTime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->duration:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/User;I)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/shanlitech/et/notice/event/SpeakEvent;-><init>(Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;JLjava/lang/String;JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/shanlitech/et/notice/event/SpeakEvent;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/shanlitech/et/notice/event/SpeakEvent;

    .line 3
    iget-wide v0, p1, Lcom/shanlitech/et/notice/event/SpeakEvent;->sid:J

    iget-wide v2, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->sid:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->duration:J

    return-wide v0
.end method

.method public getGID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_gid:J

    return-wide v0
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Lcom/shanlitech/et/model/Member;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_uid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/model/MemberList;->getMember(J)Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public getReason()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->reason:J

    return-wide v0
.end method

.method public getSid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->sid:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->size:I

    return v0
.end method

.method public getSoundUser()Lcom/shanlitech/et/model/User;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/s;->c()Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getSpeakType()Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_speakType:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    return-object v0
.end method

.method public getUID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_uid:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentGroupEvent()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v0

    return v0
.end method

.method public setReason(J)Lcom/shanlitech/et/notice/event/SpeakEvent;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->reason:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakEvent{_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", _userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", _gid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_gid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", _groupName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_groupName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->sid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->reason:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", _speakType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/SpeakEvent;->_speakType:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
