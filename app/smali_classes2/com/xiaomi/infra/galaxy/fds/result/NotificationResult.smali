.class public Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;
.super Ljava/lang/Object;
.source "NotificationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;
    }
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private contentLength:J

.field private method:Ljava/lang/String;

.field private objectName:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->contentLength:J

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->updateTime:J

    return-wide v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->contentLength:J

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->method:Ljava/lang/String;

    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->objectName:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;->updateTime:J

    return-void
.end method
