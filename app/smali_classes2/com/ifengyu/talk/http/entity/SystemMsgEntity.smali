.class public Lcom/ifengyu/talk/http/entity/SystemMsgEntity;
.super Ljava/lang/Object;
.source "SystemMsgEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ifengyu/talk/http/entity/SystemMsgEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final MSG_STATE_ACCEPTED:I = 0x1

.field public static final MSG_STATE_EXPIRED:I = 0x3

.field public static final MSG_STATE_REFUSED:I = 0x2

.field public static final MSG_STATE_UNPROCESSED:I = 0x0

.field public static final MSG_TYPE_APPLY_CONTACT:I = 0x1

.field public static final MSG_TYPE_APPLY_JOIN_GROUP:I = 0x2

.field public static final MSG_TYPE_GROUP_REMOVE:I = 0x4


# instance fields
.field private createTime:J

.field private desc:Ljava/lang/String;

.field private gid:J

.field private group:Lcom/shanlitech/et/model/Group;

.field private id:J

.field private inviteTime:J

.field private inviteeId:J

.field private inviterId:J

.field private msgType:I

.field private status:I

.field private updateTime:J

.field private user:Lcom/shanlitech/et/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ifengyu/talk/http/entity/SystemMsgEntity;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviteTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviteTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->compareTo(Lcom/ifengyu/talk/http/entity/SystemMsgEntity;)I

    move-result p1

    return p1
.end method

.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->createTime:J

    return-wide v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->gid:J

    return-wide v0
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->group:Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->id:J

    return-wide v0
.end method

.method public getInviteTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviteTime:J

    return-wide v0
.end method

.method public getInviteeId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviteeId:J

    return-wide v0
.end method

.method public getInviterId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviterId:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->msgType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->status:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->updateTime:J

    return-wide v0
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->user:Lcom/shanlitech/et/model/User;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->createTime:J

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->desc:Ljava/lang/String;

    return-void
.end method

.method public setGid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->gid:J

    return-void
.end method

.method public setGroup(Lcom/shanlitech/et/model/Group;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->group:Lcom/shanlitech/et/model/Group;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->id:J

    return-void
.end method

.method public setInviteTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviteTime:J

    return-void
.end method

.method public setInviteeId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviteeId:J

    return-void
.end method

.method public setInviterId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviterId:J

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->msgType:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->status:I

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->updateTime:J

    return-void
.end method

.method public setUser(Lcom/shanlitech/et/model/User;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->user:Lcom/shanlitech/et/model/User;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemMsgEntity{desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inviteeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviteeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inviterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviterId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inviteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->inviteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->user:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->group:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
