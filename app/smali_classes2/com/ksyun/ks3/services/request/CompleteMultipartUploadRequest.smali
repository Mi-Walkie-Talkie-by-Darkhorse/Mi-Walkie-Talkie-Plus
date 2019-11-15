.class public Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;
.super Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
.source "CompleteMultipartUploadRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x697b6d509d572113L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksyun/ks3/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksyun/ks3/model/a/c;)V
    .locals 4

    invoke-direct {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/a/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/a/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/c;

    new-instance v2, Lcom/ksyun/ks3/model/d;

    invoke-direct {v2}, Lcom/ksyun/ks3/model/d;-><init>()V

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ksyun/ks3/model/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/c;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ksyun/ks3/model/d;->a(I)V

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v0, "UTF-8"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    const-string v3, "CompleteMultipartUpload"

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/d;

    const/4 v4, 0x0

    const-string v5, "Part"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "PartNumber"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/d;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "PartNumber"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "ETag"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "ETag"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "Part"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    invoke-direct {v1, v0}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    const-string v3, "CompleteMultipartUpload"

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a(Ljava/io/InputStream;)V

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/model/HttpMethod;->b:Lcom/ksyun/ks3/model/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpMethod;)V

    const-string v0, "uploadId"

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->H:Lcom/ksyun/ks3/model/HttpHeaders;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->I:Lcom/ksyun/ks3/model/HttpHeaders;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->e:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "kss-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    invoke-direct {v1, v0}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    const-string v3, "ks3_android_sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the header:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not correct ,this head will be ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "ks3_android_sdk"

    const-string v1, "the callbackheaders is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v0, "ks3_android_sdk"

    const-string v1, "the callbacurl or callbackbody is null , ignore set the callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method protected b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/auth/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "bucket name is not correct"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "object key can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "uploadId can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;->b:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "partETags can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
