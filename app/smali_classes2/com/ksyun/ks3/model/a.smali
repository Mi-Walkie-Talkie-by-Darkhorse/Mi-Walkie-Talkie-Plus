.class public Lcom/ksyun/ks3/model/a;
.super Ljava/lang/Object;
.source "AsyncHttpRequsetParam.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Lorg/apache/http/Header;

.field private c:Lcom/loopj/android/http/RequestParams;

.field private d:Ljava/lang/String;

.field private e:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksyun/ks3/model/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksyun/ks3/model/a;->d:Ljava/lang/String;

    invoke-static {p3}, Lcom/ksyun/ks3/a/d;->a(Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/model/a;->b:[Lorg/apache/http/Header;

    invoke-static {p4}, Lcom/ksyun/ks3/a/d;->b(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/model/a;->c:Lcom/loopj/android/http/RequestParams;

    iput-object p5, p0, Lcom/ksyun/ks3/model/a;->e:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksyun/ks3/model/a;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/ksyun/ks3/a/d;->a(Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/model/a;->b:[Lorg/apache/http/Header;

    invoke-static {p3}, Lcom/ksyun/ks3/a/d;->b(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/model/a;->c:Lcom/loopj/android/http/RequestParams;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()[Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/a;->b:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public c()Lcom/loopj/android/http/RequestParams;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/a;->c:Lcom/loopj/android/http/RequestParams;

    return-object v0
.end method
