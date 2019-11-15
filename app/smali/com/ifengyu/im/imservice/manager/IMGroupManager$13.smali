.class Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqTrandferCreator(IILcom/ifengyu/im/imservice/callback/Packetlistener;)V
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

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getGroupId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getGroupId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getNewCreator()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreatorId(I)V

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->access$200(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorRsp;->getNewCreator()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->successRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->timeOutRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method
