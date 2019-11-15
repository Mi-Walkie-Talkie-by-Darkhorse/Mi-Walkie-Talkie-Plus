.class final Lcom/mi/mimsgsdk/stat/StatWorker$2;
.super Ljava/lang/Object;
.source "StatWorker.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/stat/StatWorker;->sendScribe(Lcom/mi/milinkforgame/sdk/aidl/PacketData;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

.field final synthetic val$rowId:I

.field final synthetic val$scribeType:I


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;II)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/stat/StatWorker$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iput p2, p0, Lcom/mi/mimsgsdk/stat/StatWorker$2;->val$scribeType:I

    iput p3, p0, Lcom/mi/mimsgsdk/stat/StatWorker$2;->val$rowId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/stat/StatWorker$2;->call(Lrx/e;)V

    return-void
.end method

.method public call(Lrx/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/stat/StatWorker$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iget v2, p0, Lcom/mi/mimsgsdk/stat/StatWorker$2;->val$scribeType:I

    invoke-virtual {v0, v1, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->scribe(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)I

    move-result v0

    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;

    move-result-object v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/stat/StatWorker$2;->val$rowId:I

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->remove(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/e;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lrx/e;->onCompleted()V

    return-void

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/stat/StatWorker;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send scribe fail, rowId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/stat/StatWorker$2;->val$rowId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/stat/StatWorker$2;->val$rowId:I

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->addRetryTimes(I)V

    goto :goto_0
.end method
