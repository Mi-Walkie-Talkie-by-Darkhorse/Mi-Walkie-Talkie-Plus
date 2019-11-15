.class Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqkickOutUser(ILjava/util/List;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

.field final synthetic val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupRsp;->getResultCode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupRsp;->getGroupId()I

    move-result v1

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupRsp;->getChgUserIdListList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupRsp;->getCurUserIdListList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setlistGroupMemberIds(Ljava/util/List;)V

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$200(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v4, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v3, v4}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v3, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setChangeList(Ljava/util/List;)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setChangeType(I)V

    invoke-virtual {v3, v0}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setGroupEntity(Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->successRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->timeOutRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method
