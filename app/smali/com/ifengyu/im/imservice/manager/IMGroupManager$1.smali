.class Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGroupDetailInfo(IZLcom/ifengyu/im/imservice/callback/Packetlistener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

.field final synthetic val$isUpdateSession:Z

.field final synthetic val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    iput-boolean p3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->val$isUpdateSession:Z

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "reqGroupDetailInfo#groupInfoListRsp is null"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;->getGroupInfoListCount()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v2

    const-string v3, "group#onRepGroupDetailInfo cnt:%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;->getGroupInfoListList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getGroupEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v3

    const-string v4, "group#groupEntity %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->successRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->val$isUpdateSession:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$200(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->updateSession(Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$300(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqGroupMembers(I)V

    goto/16 :goto_1
.end method

.method public onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->timeOutRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method
