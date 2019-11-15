.class final Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;
.super Ljava/lang/Object;
.source "LogUploadHelper.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->uploadLogFile(Lrx/b/b;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$att:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$uploadResultListener:Lrx/b/b;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Attachment;Lrx/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p2, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$uploadResultListener:Lrx/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->call(Lrx/e;)V

    return-void
.end method

.method public call(Lrx/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->getInstance()Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    new-instance v3, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5$1;

    iget-object v4, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {v3, p0, v4}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5$1;-><init>(Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;Lcom/mi/mimsgsdk/upload/Attachment;)V

    iget-object v4, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iget v4, v4, Lcom/mi/mimsgsdk/upload/Attachment;->authType:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->startUploadFile(Landroid/content/Context;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/upload/UploadCallBack;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/e;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lrx/e;->onCompleted()V

    return-void
.end method
