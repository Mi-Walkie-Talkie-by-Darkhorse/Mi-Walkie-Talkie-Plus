.class public Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;
.super Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
.source "InitiateMultipartUploadRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x650ef4d81bc1d891L


# instance fields
.field private a:Lcom/ksyun/ks3/model/ObjectMetadata;

.field private b:Lcom/ksyun/ks3/model/acl/a;

.field private c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;-><init>()V

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a:Lcom/ksyun/ks3/model/ObjectMetadata;

    new-instance v0, Lcom/ksyun/ks3/model/acl/a;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/acl/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->b:Lcom/ksyun/ks3/model/acl/a;

    invoke-virtual {p0, p1}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->d(Ljava/lang/String;)V

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

    sget-object v0, Lcom/ksyun/ks3/model/HttpMethod;->b:Lcom/ksyun/ks3/model/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpMethod;)V

    const-string v0, "uploads"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->m:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a:Lcom/ksyun/ks3/model/ObjectMetadata;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/ObjectMetadata;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    sget-object v3, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->c:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    invoke-virtual {v1, v3}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a:Lcom/ksyun/ks3/model/ObjectMetadata;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/ObjectMetadata;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "x-kss-meta-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->r:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->b:Lcom/ksyun/ks3/model/acl/a;

    if-eqz v0, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->b:Lcom/ksyun/ks3/model/acl/a;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/acl/c;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->b()Lcom/ksyun/ks3/model/acl/Permission;

    move-result-object v5

    sget-object v6, Lcom/ksyun/ks3/model/acl/Permission;->a:Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v5, v6}, Lcom/ksyun/ks3/model/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->a()Lcom/ksyun/ks3/model/acl/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/ks3/model/acl/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->b()Lcom/ksyun/ks3/model/acl/Permission;

    move-result-object v5

    sget-object v6, Lcom/ksyun/ks3/model/acl/Permission;->b:Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v5, v6}, Lcom/ksyun/ks3/model/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->a()Lcom/ksyun/ks3/model/acl/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/ks3/model/acl/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->b()Lcom/ksyun/ks3/model/acl/Permission;

    move-result-object v5

    sget-object v6, Lcom/ksyun/ks3/model/acl/Permission;->c:Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v5, v6}, Lcom/ksyun/ks3/model/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->a()Lcom/ksyun/ks3/model/acl/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/ks3/model/acl/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->w:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/ksyun/ks3/a/f;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->x:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, ","

    invoke-static {v2, v1}, Lcom/ksyun/ks3/a/f;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->y:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, ","

    invoke-static {v3, v1}, Lcom/ksyun/ks3/a/f;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public a(Lcom/ksyun/ks3/model/acl/CannedAccessControlList;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    return-void
.end method

.method protected b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "bucket name is not correct"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "object key can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
