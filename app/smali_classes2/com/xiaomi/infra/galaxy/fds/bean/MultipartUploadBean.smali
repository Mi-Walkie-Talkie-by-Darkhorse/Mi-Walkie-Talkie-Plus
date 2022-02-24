.class public Lcom/xiaomi/infra/galaxy/fds/bean/MultipartUploadBean;
.super Ljava/lang/Object;
.source "MultipartUploadBean.java"


# instance fields
.field private objectName:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/MultipartUploadBean;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/MultipartUploadBean;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/MultipartUploadBean;->objectName:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/MultipartUploadBean;->uploadId:Ljava/lang/String;

    return-void
.end method
