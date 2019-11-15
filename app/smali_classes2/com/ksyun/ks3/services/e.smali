.class public Lcom/ksyun/ks3/services/e;
.super Ljava/lang/Object;
.source "Ks3Client.java"


# instance fields
.field public a:Lcom/ksyun/ks3/model/acl/b;

.field public b:Lcom/ksyun/ks3/services/b;

.field private c:Lcom/ksyun/ks3/services/f;

.field private d:Ljava/lang/String;

.field private e:Lcom/ksyun/ks3/services/g;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ksyun/ks3/services/b;Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/ksyun/ks3/services/f;->b()Lcom/ksyun/ks3/services/f;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/ksyun/ks3/services/e;-><init>(Lcom/ksyun/ks3/services/b;Lcom/ksyun/ks3/services/f;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/ks3/services/b;Lcom/ksyun/ks3/services/f;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ksyun/ks3/services/g;

    invoke-direct {v0}, Lcom/ksyun/ks3/services/g;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/e;->e:Lcom/ksyun/ks3/services/g;

    iput-object v1, p0, Lcom/ksyun/ks3/services/e;->f:Landroid/content/Context;

    iput-object v1, p0, Lcom/ksyun/ks3/services/e;->b:Lcom/ksyun/ks3/services/b;

    iput-object p1, p0, Lcom/ksyun/ks3/services/e;->b:Lcom/ksyun/ks3/services/b;

    iput-object p2, p0, Lcom/ksyun/ks3/services/e;->c:Lcom/ksyun/ks3/services/f;

    iput-object p3, p0, Lcom/ksyun/ks3/services/e;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Z)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
    .locals 9

    iget-object v0, p0, Lcom/ksyun/ks3/services/e;->e:Lcom/ksyun/ks3/services/g;

    iget-object v4, p0, Lcom/ksyun/ks3/services/e;->c:Lcom/ksyun/ks3/services/f;

    iget-object v5, p0, Lcom/ksyun/ks3/services/e;->f:Landroid/content/Context;

    iget-object v6, p0, Lcom/ksyun/ks3/services/e;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/ksyun/ks3/services/e;->b:Lcom/ksyun/ks3/services/b;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/ksyun/ks3/services/g;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Lcom/ksyun/ks3/services/f;Landroid/content/Context;Ljava/lang/String;Lcom/ksyun/ks3/services/b;Ljava/lang/Boolean;)V

    return-object p2
.end method

.method private a(Lcom/ksyun/ks3/services/request/PutObjectRequest;Lcom/ksyun/ks3/services/a/e;Z)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/e;->a:Lcom/ksyun/ks3/model/acl/b;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Z)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/ksyun/ks3/services/a/a;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/e;->a:Lcom/ksyun/ks3/model/acl/b;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Z)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    return-void
.end method

.method private a(Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/ksyun/ks3/services/a/b;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/e;->a:Lcom/ksyun/ks3/model/acl/b;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Z)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    return-void
.end method

.method private a(Lcom/ksyun/ks3/services/request/ListPartsRequest;Lcom/ksyun/ks3/services/a/d;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/e;->a:Lcom/ksyun/ks3/model/acl/b;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Z)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    return-void
.end method

.method private a(Lcom/ksyun/ks3/services/request/UploadPartRequest;Lcom/ksyun/ks3/services/a/f;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/e;->a:Lcom/ksyun/ks3/model/acl/b;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Z)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/ks3/services/request/PutObjectRequest;Lcom/ksyun/ks3/services/a/e;)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/PutObjectRequest;Lcom/ksyun/ks3/services/a/e;Z)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/ksyun/ks3/services/a/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/ksyun/ks3/services/a/a;Z)V

    return-void
.end method

.method public a(Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/ksyun/ks3/services/a/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/ksyun/ks3/services/a/b;Z)V

    return-void
.end method

.method public a(Lcom/ksyun/ks3/services/request/ListPartsRequest;Lcom/ksyun/ks3/services/a/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/ListPartsRequest;Lcom/ksyun/ks3/services/a/d;Z)V

    return-void
.end method

.method public a(Lcom/ksyun/ks3/services/request/UploadPartRequest;Lcom/ksyun/ks3/services/a/f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/UploadPartRequest;Lcom/ksyun/ks3/services/a/f;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/e;->d:Ljava/lang/String;

    return-void
.end method
