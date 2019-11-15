.class final Lcom/mi/mimsgsdk/upload/UploadTask$1;
.super Lrx/e;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/UploadTask;->notifyServerUploadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

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

    invoke-static {}, Lcom/mi/mimsgsdk/upload/UploadTask;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify server upload result failed"

    invoke-static {v0, v1, p1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/upload/UploadTask$1;->onNext(Ljava/lang/Void;)V

    return-void
.end method

.method public onNext(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
