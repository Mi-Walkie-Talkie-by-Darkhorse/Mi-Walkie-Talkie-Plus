.class public Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;
.super Ljava/lang/Object;
.source "UploadPartRequestFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bucketName:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private key:Ljava/lang/String;

.field private offset:J

.field public partNumber:I

.field private partSize:J

.field private remainingBytes:J

.field private uploadId:Ljava/lang/String;

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partNumber:I

    iput-wide v4, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->offset:J

    iput-object p3, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadId:Ljava/lang/String;

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->bucketName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->file:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->remainingBytes:J

    iput-wide p5, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partSize:J

    iput v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partNumber:I

    iput-wide v4, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadedSize:J

    return-void
.end method


# virtual methods
.method public declared-synchronized getBucketName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->bucketName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFile()Ljava/io/File;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextUploadPartRequest()Lcom/ksyun/ks3/services/request/UploadPartRequest;
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->remainingBytes:J

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partSize:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    move v10, v0

    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->remainingBytes:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadedSize:J

    new-instance v0, Lcom/ksyun/ks3/services/request/UploadPartRequest;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->bucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->file:Ljava/io/File;

    iget-wide v5, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->offset:J

    iget v7, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partNumber:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partNumber:I

    iget-wide v8, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partSize:J

    invoke-direct/range {v0 .. v9}, Lcom/ksyun/ks3/services/request/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JIJ)V

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->offset:J

    iget-wide v4, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->offset:J

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->remainingBytes:J

    iget-wide v4, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partSize:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->remainingBytes:J

    invoke-virtual {v0, v10}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v10, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getObjectKey()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->key:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUploadId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUploadedSize()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadedSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasMoreRequests()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->remainingBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHasUploadPart(I)V
    .locals 4

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partNumber:I

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->partSize:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadedSize:J

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadedSize:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->remainingBytes:J

    iget-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->uploadedSize:J

    iput-wide v0, p0, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->offset:J

    return-void
.end method
