.class public Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;
.super Ljava/lang/Object;
.source "NotifyCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/entity/NotifyCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;
    }
.end annotation


# instance fields
.field public changeType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "change_type"
    .end annotation
.end field

.field public changeUidList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "change_uid_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public creatorId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creator_id"
    .end annotation
.end field

.field public creatorName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creator_name"
    .end annotation
.end field

.field public groupId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_id"
    .end annotation
.end field

.field public groupName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_name"
    .end annotation
.end field

.field public inviteUserId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invite_user_id"
    .end annotation
.end field

.field public inviteUserName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invite_user_name"
    .end annotation
.end field

.field public leaveType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "leave_type"
    .end annotation
.end field

.field public reqUserId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_user_id"
    .end annotation
.end field

.field public reqUserName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_user_name"
    .end annotation
.end field

.field public resultCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_code"
    .end annotation
.end field

.field final synthetic this$0:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

.field public userInfoList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userinfo_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/entity/NotifyCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->this$0:Lcom/ifengyu/im/imservice/entity/NotifyCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeType:I

    return v0
.end method

.method public getChangeUidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeUidList:Ljava/util/List;

    return-object v0
.end method

.method public getCreatorId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorId:I

    return v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupId:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserId:I

    return v0
.end method

.method public getInviteUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaveType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->leaveType:I

    return v0
.end method

.method public getReqUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserId:I

    return v0
.end method

.method public getReqUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->resultCode:I

    return v0
.end method

.method public getUserInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->userInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setChangeType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeType:I

    return-void
.end method

.method public setChangeUidList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->changeUidList:Ljava/util/List;

    return-void
.end method

.method public setCreatorId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorId:I

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorName:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupId:I

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setInviteUserId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserId:I

    return-void
.end method

.method public setInviteUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserName:Ljava/lang/String;

    return-void
.end method

.method public setLeaveType(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->leaveType:I

    return-void
.end method

.method public setReqUserId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserId:I

    return-void
.end method

.method public setReqUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserName:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->resultCode:I

    return-void
.end method

.method public setUserInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->userInfoList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBody{creatorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creatorName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->creatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inviteUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inviteUserName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->inviteUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqUserName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->reqUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
