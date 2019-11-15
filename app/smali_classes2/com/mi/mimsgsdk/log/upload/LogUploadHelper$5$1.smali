.class Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5$1;
.super Lcom/mi/mimsgsdk/upload/UploadCallBack;
.source "LogUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->call(Lrx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5$1;->this$0:Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;

    invoke-direct {p0, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;)V

    return-void
.end method


# virtual methods
.method public onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload log to server fail"

    invoke-static {v0, v1, p5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5$1;->this$0:Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$uploadResultListener:Lrx/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5$1;->this$0:Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$uploadResultListener:Lrx/b/b;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;)V
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload log to server ok"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5$1;->this$0:Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$uploadResultListener:Lrx/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5$1;->this$0:Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;->val$uploadResultListener:Lrx/b/b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
