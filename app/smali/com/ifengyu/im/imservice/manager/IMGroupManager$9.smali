.class Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMGroupManager;->rspAcceptOrRejectGroupInvite(Lcom/ifengyu/im/imservice/entity/InviteNotify;ZLcom/ifengyu/im/imservice/callback/Packetlistener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

.field final synthetic val$invitedNotify:Lcom/ifengyu/im/imservice/entity/InviteNotify;

.field final synthetic val$isAgree:Z

.field final synthetic val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;ZLcom/ifengyu/im/imservice/entity/InviteNotify;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    iput-boolean p3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$isAgree:Z

    iput-object p4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$invitedNotify:Lcom/ifengyu/im/imservice/entity/InviteNotify;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspAck;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspAck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspAck;->getResultCode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->successRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$isAgree:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$invitedNotify:Lcom/ifengyu/im/imservice/entity/InviteNotify;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getGroupId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGroupDetailInfo(IZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->failRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;->val$packetlistener:Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->timeOutRunOnUiThread(Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method
