.class Lcom/mi/mimsgsdk/controller/MessageController$22;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->sendAsyncWithResponse(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$callback:Lcom/mi/mimsgsdk/service/aidl/ISendCallback;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/ISendCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$22;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-object p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$22;->val$callback:Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAsyncWithResponse Failed , retcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$22;->val$callback:Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/service/aidl/ISendCallback;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAsyncWithResponse Success , retcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$22;->val$callback:Lcom/mi/mimsgsdk/service/aidl/ISendCallback;

    invoke-static {p2}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->parseFromMilink(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mi/mimsgsdk/service/aidl/ISendCallback;->onRsponse(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
