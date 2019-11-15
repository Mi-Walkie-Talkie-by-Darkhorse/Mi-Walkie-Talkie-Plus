.class Lcom/mi/mimsgsdk/MsgSdkManager$4;
.super Ljava/lang/Object;
.source "MsgSdkManager.java"

# interfaces
.implements Lcom/mi/mimsgsdk/voip/MiVoipEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/MsgSdkManager;->voipMsgSdkInit(Lcom/mi/mimsgsdk/voip/MiEngineCallback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

.field final synthetic val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/MsgSdkManager;Lcom/mi/mimsgsdk/voip/MiEngineCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iput-object p2, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoinConferenceFailed(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onJoinConferenceFailed(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V

    :cond_0
    return-void
.end method

.method public onJoinRes(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onJoinRes(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onSpeakers([Lio/agora/rtc/a$a;)V
    .locals 6

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    new-instance v3, Lcom/mi/mimsgsdk/voip/Speaker;

    invoke-direct {v3}, Lcom/mi/mimsgsdk/voip/Speaker;-><init>()V

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSpeakers speakers.uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    iget v5, v5, Lio/agora/rtc/a$a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p1, v1

    iget v0, v0, Lio/agora/rtc/a$a;->a:I

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v3, v0}, Lcom/mi/mimsgsdk/voip/Speaker;->setSpeakerUid(Ljava/lang/String;)V

    aget-object v0, p1, v1

    iget v0, v0, Lio/agora/rtc/a$a;->b:I

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/mi/mimsgsdk/voip/Speaker;->setVolume(J)V

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    aget-object v4, p1, v1

    iget v4, v4, Lio/agora/rtc/a$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSpeakers, missing uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget v4, v4, Lio/agora/rtc/a$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget-object v3, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v3}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$800(Lcom/mi/mimsgsdk/MsgSdkManager;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$900(Lcom/mi/mimsgsdk/MsgSdkManager;J)V

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mi/mimsgsdk/voip/Speaker;->setSpeakerUid(Ljava/lang/String;)V

    aget-object v0, p1, v1

    iget v0, v0, Lio/agora/rtc/a$a;->b:I

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/mi/mimsgsdk/voip/Speaker;->setVolume(J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    invoke-interface {v0, v2}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onSpeakers(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onUserJoin(I)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserJoin, uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    iget-object v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onUserJoin(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$700(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-interface {v0, v1, p1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->getGuidfromMediaId(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getGuidfromMediaId error"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUserLeave(I)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    iget-object v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onUserLeave(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$700(Lcom/mi/mimsgsdk/MsgSdkManager;)Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-interface {v0, v1, p1}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->getGuidfromMediaId(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onUserMute(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    iget-object v0, v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onUserMute(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    iget-object v1, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->this$0:Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$800(Lcom/mi/mimsgsdk/MsgSdkManager;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$900(Lcom/mi/mimsgsdk/MsgSdkManager;J)V

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get null for mid2guid map, mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWriteLog(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/MsgSdkManager$4;->val$callback:Lcom/mi/mimsgsdk/voip/MiEngineCallback;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/voip/MiEngineCallback;->onWriteLog(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
