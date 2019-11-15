.class Lcom/mi/mimsgsdk/controller/MessageController$12;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lrx/a$a;


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
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$needNotifyClient:Z

.field final synthetic val$param:Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$12;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-boolean p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$12;->val$needNotifyClient:Z

    iput-object p3, p0, Lcom/mi/mimsgsdk/controller/MessageController$12;->val$param:Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$12;->call(Lrx/e;)V

    return-void
.end method

.method public call(Lrx/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$12;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$12;->val$needNotifyClient:Z

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$12;->val$param:Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1500(Lcom/mi/mimsgsdk/controller/MessageController;ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/e;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lrx/e;->onCompleted()V

    return-void
.end method
