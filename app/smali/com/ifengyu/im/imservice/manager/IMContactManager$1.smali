.class Lcom/ifengyu/im/imservice/manager/IMContactManager$1;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMContactManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqUserInfo(ILcom/ifengyu/im/imservice/callback/Packetlistener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

.field final synthetic val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;->getUserInfoListList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getUserEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->successRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->timeOutRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method
