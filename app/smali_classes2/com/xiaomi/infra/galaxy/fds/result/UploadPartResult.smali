.class public Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;
.super Ljava/lang/Object;
.source "UploadPartResult.java"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlRootElement;
.end annotation


# instance fields
.field private etag:Ljava/lang/String;

.field private partNumber:I

.field private partSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->partNumber:I

    .line 4
    iput-object p4, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->etag:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->partSize:J

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->partSize:J

    return-wide v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->etag:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->partNumber:I

    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;->partSize:J

    return-void
.end method
