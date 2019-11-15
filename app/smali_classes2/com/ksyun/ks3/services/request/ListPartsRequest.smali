.class public Lcom/ksyun/ks3/services/request/ListPartsRequest;
.super Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
.source "ListPartsRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x38982c55d41b3649L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;-><init>()V

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b:Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->c:Ljava/lang/Integer;

    invoke-super {p0, p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->b(Ljava/lang/String;)V

    invoke-super {p0, p2}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->j(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    sget-object v0, Lcom/ksyun/ks3/model/HttpMethod;->a:Lcom/ksyun/ks3/model/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->a(Lcom/ksyun/ks3/model/HttpMethod;)V

    const-string v0, "max-parts"

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uploadId"

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "part-number-marker"

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->c:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "encoding-type"

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/auth/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "bucket name is not correct"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "object key can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "uploadId can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    :cond_3
    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "maxParts should between 1 and 1000"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/ListPartsRequest;->a:Ljava/lang/String;

    return-void
.end method
