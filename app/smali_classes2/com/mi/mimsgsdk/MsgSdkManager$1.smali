.class Lcom/mi/mimsgsdk/MsgSdkManager$1;
.super Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;
.source "MsgSdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/MsgSdkManager;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

.field final synthetic val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/MsgSdkManager;Lcom/mi/mimsgsdk/IMXMsgCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iput-object p2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onConnectionStateChanged(I)V

    goto :goto_0
.end method

.method public onDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p3, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    iget v1, p2, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    iget-object v2, p3, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/mi/mimsgsdk/utils/StatUtils;->addStatisticsItem(IIILjava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    goto :goto_0
.end method

.method public onDownloadMediaFileResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in onDownloadVideoResponse listener is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onDownloadMediaFileResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->upload:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_download-code-%d-%d-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$100(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v2

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    iget v5, p2, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    int-to-long v6, v5

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x4

    aput-wide v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method public onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitResult retValue is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitResult code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/mimsgsdk/UserInfo;->getInstance()Lcom/mi/mimsgsdk/UserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/UserInfo;->setUserId(J)V

    :cond_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->init:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_init_code-%d-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$100(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v2

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    iget v5, p1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    int-to-long v6, v5

    aput-wide v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method public onReceiveConferenceMembers(IILcom/mi/mimsgsdk/service/aidl/RetValue;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/mi/mimsgsdk/service/aidl/RetValue;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceiveConferenceMembers SIGNAL_CONFERENCE_MEMBERS "

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveConferenceMembers  SIGNAL_CONFERENCE_MEMBERS gUid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    iget-object v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mediaMuid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    iget v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mediaMuid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget v3, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mediaMuid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceiveConferenceMembers SIGNAL_USERNAME_TRANS "

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveConferenceMembers SIGNAL_USERNAME_TRANS gUid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    iget-object v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mediaMuid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    iget v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mediaMuid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget v3, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mediaMuid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch p2, :pswitch_data_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$300(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$300(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    move-result-object v2

    iget-object v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onUserJoin(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$300(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$300(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    move-result-object v2

    iget-object v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onUserLeave(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ea
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onReceiveMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onReceiveMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public onReceiveOldGroupMessage(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MiMessage;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onReceiveOldGroupMessage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public onReceiveOldUserMessage(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MiMessage;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onReceiveOldUserMessage(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public onReceiveSignalMessage(ILcom/mi/mimsgsdk/service/aidl/RetValue;JJI)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSignalMessage mediaId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mediaMuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    iget v0, p2, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tuning test SIGNAL_LOGIN_CHECK checkout success. next, join room"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/UserInfo;->getInstance()Lcom/mi/mimsgsdk/UserInfo;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/UserInfo;->setChannelId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {}, Lcom/mi/mimsgsdk/UserInfo;->getInstance()Lcom/mi/mimsgsdk/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/UserInfo;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p7}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$200(Lcom/mi/mimsgsdk/MsgSdkManager;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$300(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$300(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onJoinConferenceFailed(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tuning test SIGNAL_LOGIN_CHECK checkout error,retcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tuning test SIGNAL_DISPACHTER ERROR"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUploadLogsResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in onUploadLogsResponse listener is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onUploadLogsResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V

    goto :goto_0
.end method

.method public onUploadVideoResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    instance-of v0, v0, Lcom/mi/mimsgsdk/video/VideoBody;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onUploadVideoResponce listener is null or message.body is not instance of VideoBody"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->val$listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    iget-object v0, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    check-cast v0, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-interface {v1, p1, v0}, Lcom/mi/mimsgsdk/IMXMsgCallback;->onUploadVideoResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/video/VideoBody;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->upload:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_upload-code-%d-%d-uid-%s-appid-%s"

    iget-object v2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$1;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$100(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/InitParams;

    move-result-object v2

    iget-object v2, v2, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    iget v5, p1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    int-to-long v6, v5

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x4

    aput-wide v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    goto :goto_0
.end method
