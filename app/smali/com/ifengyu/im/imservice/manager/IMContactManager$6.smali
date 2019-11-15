.class Lcom/ifengyu/im/imservice/manager/IMContactManager$6;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMContactManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqUpdateMyNicknameInGroup(ILjava/lang/String;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

.field final synthetic val$groupId:I

.field final synthetic val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;ILcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iput p2, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->val$groupId:I

    iput-object p3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;->getNicknameIngroup()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMContactManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;->getGroupId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;->getUserId()I

    move-result v3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMContactManager;)Ljava/util/Map;

    move-result-object v0

    iget v4, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->val$groupId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupMember;

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-static {v3}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->access$200(Lcom/ifengyu/im/imservice/manager/IMContactManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact#update nick name in group,groupId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;->getGroupId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",nickname = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;->getNicknameIngroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupRsp;->getNicknameIngroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupMember;->setGroupNick(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->successRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->timeOutRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method
