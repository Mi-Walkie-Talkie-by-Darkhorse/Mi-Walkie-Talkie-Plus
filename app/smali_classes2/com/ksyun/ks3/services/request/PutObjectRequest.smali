.class public Lcom/ksyun/ks3/services/request/PutObjectRequest;
.super Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
.source "PutObjectRequest.java"

# interfaces
.implements Lcom/ksyun/ks3/services/request/a;


# static fields
.field private static final serialVersionUID:J = 0x748df0d4a9367cc9L


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/ksyun/ks3/model/ObjectMetadata;

.field private c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

.field private d:Lcom/ksyun/ks3/model/acl/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;-><init>()V

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->b:Lcom/ksyun/ks3/model/ObjectMetadata;

    new-instance v0, Lcom/ksyun/ks3/model/acl/a;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/acl/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->d:Lcom/ksyun/ks3/model/acl/a;

    invoke-virtual {p0, p1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->d(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a:Ljava/io/File;

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
    new-instance v0, Lcom/ksyun/ks3/model/b/c;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/model/b/c;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->b:Lcom/ksyun/ks3/model/ObjectMetadata;

    invoke-static {}, Lcom/ksyun/ks3/model/b;->a()Lcom/ksyun/ks3/model/b;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/ksyun/ks3/model/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/model/ObjectMetadata;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->b:Lcom/ksyun/ks3/model/ObjectMetadata;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/model/ObjectMetadata;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/ksyun/ks3/a/c;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->e:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->H:Lcom/ksyun/ks3/model/HttpHeaders;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->I:Lcom/ksyun/ks3/model/HttpHeaders;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->h:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
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

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    invoke-direct {v1, v0}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    invoke-direct {v1, v0}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculate file md5 error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
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

    goto/16 :goto_0

    :cond_2
    const-string v0, "ks3_android_sdk"

    const-string v1, "the callbackheaders is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->b:Lcom/ksyun/ks3/model/ObjectMetadata;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/ObjectMetadata;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    sget-object v3, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->c:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    invoke-virtual {v3}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "ks3_android_sdk"

    const-string v1, "the callbacurl or callbackbody is null , ignore set the callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->b:Lcom/ksyun/ks3/model/ObjectMetadata;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/ObjectMetadata;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "x-kss-meta-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->r:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->d:Lcom/ksyun/ks3/model/acl/a;

    if-eqz v0, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->d:Lcom/ksyun/ks3/model/acl/a;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/acl/c;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->b()Lcom/ksyun/ks3/model/acl/Permission;

    move-result-object v5

    sget-object v6, Lcom/ksyun/ks3/model/acl/Permission;->a:Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v5, v6}, Lcom/ksyun/ks3/model/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

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

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->b()Lcom/ksyun/ks3/model/acl/Permission;

    move-result-object v5

    sget-object v6, Lcom/ksyun/ks3/model/acl/Permission;->b:Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v5, v6}, Lcom/ksyun/ks3/model/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

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

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->b()Lcom/ksyun/ks3/model/acl/Permission;

    move-result-object v5

    sget-object v6, Lcom/ksyun/ks3/model/acl/Permission;->c:Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v5, v6}, Lcom/ksyun/ks3/model/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

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

    goto/16 :goto_4

    :cond_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->w:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->x:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->y:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, ","

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->e:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->F:Lcom/ksyun/ks3/model/HttpHeaders;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    :cond_11
    sget-object v0, Lcom/ksyun/ks3/model/HttpMethod;->c:Lcom/ksyun/ks3/model/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/HttpMethod;)V

    return-void
.end method

.method public a(Lcom/ksyun/ks3/model/acl/CannedAccessControlList;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    return-void
.end method

.method protected b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/auth/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "bucket name is not correct"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "object key can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a:Ljava/io/File;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "upload object can not be null"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->d:Lcom/ksyun/ks3/model/acl/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->d:Lcom/ksyun/ks3/model/acl/a;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/a;->a()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->d:Lcom/ksyun/ks3/model/acl/a;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/a;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/acl/c;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->b()Lcom/ksyun/ks3/model/acl/Permission;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grant :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/acl/c;->a()Lcom/ksyun/ks3/model/acl/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",permission can not be null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->e:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->e:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/PutObjectRequest;->e:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "redirectLocation should start with / http:// or https://"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method
