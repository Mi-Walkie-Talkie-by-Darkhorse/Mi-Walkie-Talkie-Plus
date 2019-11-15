.class Lcom/mi/mimsgsdk/controller/MessageController$11;
.super Lrx/e;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->uploadLogs(ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$needNotifyClient:Z


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$11;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-boolean p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$11;->val$needNotifyClient:Z

    invoke-direct {p0}, Lrx/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start upload log fail"

    invoke-static {v0, v1, p1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$11;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$11;->val$needNotifyClient:Z

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1300(Lcom/mi/mimsgsdk/controller/MessageController;ZILjava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$11;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1402(Lcom/mi/mimsgsdk/controller/MessageController;Z)Z

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$11;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1402(Lcom/mi/mimsgsdk/controller/MessageController;Z)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start upload log ok"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$11;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
