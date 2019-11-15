.class public abstract Lcom/mi/mimsgsdk/upload/UploadCallBack;
.super Lcom/ksyun/ks3/services/a/e;
.source "UploadCallBack.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAtt:Lcom/mi/mimsgsdk/upload/Attachment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/upload/UploadCallBack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/upload/UploadCallBack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/e;-><init>()V

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/UploadCallBack;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    return-void
.end method


# virtual methods
.method public onPostExecute(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/UploadCallBack;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v0, p3}, Lcom/mi/mimsgsdk/upload/Attachment;->setResourceId(Ljava/lang/String;)V

    :goto_0
    return-object p2

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/upload/UploadCallBack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload file failed, local path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/UploadCallBack;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTaskCancel()V
    .locals 0

    return-void
.end method

.method public abstract onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public onTaskFinish()V
    .locals 0

    return-void
.end method

.method public onTaskProgress(D)V
    .locals 0

    return-void
.end method

.method public onTaskStart()V
    .locals 0

    return-void
.end method

.method public abstract onTaskSuccess(I[Lorg/apache/http/Header;)V
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onTaskSuccess(I[Lorg/apache/http/Header;)V

    return-void
.end method
