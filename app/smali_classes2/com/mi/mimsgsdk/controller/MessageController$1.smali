.class Lcom/mi/mimsgsdk/controller/MessageController$1;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternalError(I)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInternalError i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    const/16 v1, -0x64

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    const-string v1, "internal error"

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLoginFailed(I)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoginFailed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    const/16 v1, -0x65

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    const-string v1, "login failed"

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onMilinkSdkStateUpdate(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V
    .locals 4

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMilinkSdkStateUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasLogin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v2}, Lcom/mi/mimsgsdk/controller/MessageController;->access$300(Lcom/mi/mimsgsdk/controller/MessageController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onConnectionStateChanged(I)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Logined:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$400(Lcom/mi/mimsgsdk/controller/MessageController;)Z

    invoke-static {}, Lcom/mi/mimsgsdk/stat/StatWorker;->getInstance()Lcom/mi/mimsgsdk/stat/StatWorker;

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$300(Lcom/mi/mimsgsdk/controller/MessageController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$302(Lcom/mi/mimsgsdk/controller/MessageController;Z)Z

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    invoke-static {}, Lcom/mi/mimsgsdk/UserInfo;->getInstance()Lcom/mi/mimsgsdk/UserInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/UserInfo;->setUserId(J)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$1;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
