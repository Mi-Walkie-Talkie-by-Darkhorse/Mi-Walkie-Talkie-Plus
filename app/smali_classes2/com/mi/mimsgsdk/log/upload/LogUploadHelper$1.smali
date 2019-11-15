.class final Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$1;
.super Lrx/e;
.source "LogUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->uploadLog(JLrx/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$uploadResultListener:Lrx/b/b;


# direct methods
.method constructor <init>(Lrx/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$1;->val$uploadResultListener:Lrx/b/b;

    invoke-direct {p0}, Lrx/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload log files fail, exception:"

    invoke-static {v0, v1, p1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip log files fail, error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$1;->val$uploadResultListener:Lrx/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$1;->val$uploadResultListener:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zip log files success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$1;->val$uploadResultListener:Lrx/b/b;

    invoke-static {v0}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->access$100(Lrx/b/b;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$1;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
