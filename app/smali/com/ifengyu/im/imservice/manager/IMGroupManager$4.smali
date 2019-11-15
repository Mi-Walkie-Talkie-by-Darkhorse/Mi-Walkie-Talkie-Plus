.class Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqShieldGroup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

.field final synthetic val$entity:Lcom/ifengyu/im/DB/entity/GroupEntity;

.field final synthetic val$groupId:I

.field final synthetic val$loginId:I

.field final synthetic val$shieldType:I


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;IILcom/ifengyu/im/DB/entity/GroupEntity;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iput p2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$groupId:I

    iput p3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$loginId:I

    iput-object p4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$entity:Lcom/ifengyu/im/DB/entity/GroupEntity;

    iput p5, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$shieldType:I

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldRsp;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldRsp;->getGroupId()I

    move-result v1

    iget v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$groupId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldRsp;->getUserId()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$loginId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$entity:Lcom/ifengyu/im/DB/entity/GroupEntity;

    iget v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$shieldType:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setStatus(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$200(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$entity:Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J

    iget v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$shieldType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->val$entity:Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "reqChangeGroupMember parse error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    return-void
.end method
