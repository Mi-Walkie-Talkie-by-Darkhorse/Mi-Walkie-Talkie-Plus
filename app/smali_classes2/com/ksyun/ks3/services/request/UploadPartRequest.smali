.class public Lcom/ksyun/ks3/services/request/UploadPartRequest;
.super Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
.source "UploadPartRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x53856077c8a3d66L


# instance fields
.field public a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:Ljava/io/File;

.field private f:J

.field private g:Z

.field private h:Lcom/ksyun/ks3/model/ObjectMetadata;

.field private i:Lcom/ksyun/ks3/model/acl/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JIJ)V
    .locals 2

    invoke-direct {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a:J

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->h:Lcom/ksyun/ks3/model/ObjectMetadata;

    new-instance v0, Lcom/ksyun/ks3/model/acl/a;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/acl/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->i:Lcom/ksyun/ks3/model/acl/a;

    invoke-virtual {p0, p1}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->e:Ljava/io/File;

    iput-wide p5, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->f:J

    iput p7, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->c:I

    iput-wide p8, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d:J

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v0

    sub-long/2addr v0, p5

    cmp-long v0, v0, p8

    if-gez v0, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v0

    sub-long/2addr v0, p5

    iput-wide v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->g:Z

    :goto_0
    return-void

    :cond_0
    iput-wide p8, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->g:Z

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    sget-object v0, Lcom/ksyun/ks3/model/HttpMethod;->c:Lcom/ksyun/ks3/model/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a(Lcom/ksyun/ks3/model/HttpMethod;)V

    const-string v0, "uploadId"

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "partNumber"

    iget v1, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->m:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v7, Lcom/ksyun/ks3/model/b/b;

    new-instance v0, Lcom/ksyun/ks3/model/b/a;

    new-instance v1, Lcom/ksyun/ks3/model/b/c;

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/ksyun/ks3/model/b/c;-><init>(Ljava/io/File;)V

    iget-wide v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->f:J

    iget-wide v4, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a:J

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/ks3/model/b/a;-><init>(Ljava/io/InputStream;JJZ)V

    invoke-direct {v7, v0}, Lcom/ksyun/ks3/model/b/b;-><init>(Ljava/io/InputStream;)V

    const-string v0, "ks3_android_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucketName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",objectkey :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",partNumber :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",partSzie :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",conentLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    iget-wide v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a(Ljava/io/InputStream;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    invoke-direct {v1, v0}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->g:Z

    return-void
.end method

.method protected b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/auth/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "bucket name is not correct"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "object key can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "uploadId can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "part size can not should bigger than 0"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->c:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->c:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "partNumber shoud between 1 and 10000"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->e:Ljava/io/File;

    if-nez v0, :cond_6

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "file and content can not both be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-wide v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->f:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_7

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileoffset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-wide v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "partsize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be small than"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-wide v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_9

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "partsize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be larger than"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method

.method public q()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/UploadPartRequest;->e:Ljava/io/File;

    return-object v0
.end method
