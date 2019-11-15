.class Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;
.super Ljava/lang/Object;
.source "MiMsgServiceClient.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteServiceInit()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;->this$0:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;->call(Lrx/e;)V

    return-void
.end method

.method public call(Lrx/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;->this$0:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->Restart:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->access$000(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mns service start failed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;->this$0:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->SystemFatal:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->access$200(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;->this$0:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-static {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->access$300(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;->this$0:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-static {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->access$300(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startService(Reason.Restart) exception  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;->this$0:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-static {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->access$300(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;->this$0:Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-static {v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->access$300(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
