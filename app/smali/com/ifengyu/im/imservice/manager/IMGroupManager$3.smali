.class Lcom/ifengyu/im/imservice/manager/IMGroupManager$3;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqChangeGroupMember(ILcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$3;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$3;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onReqChangeGroupMember(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$3;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "reqChangeGroupMember parse error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$3;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$3;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    return-void
.end method
