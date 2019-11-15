.class public Lcom/loopj/android/http/k;
.super Lcom/loopj/android/http/b;
.source "SyncHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/loopj/android/http/b;-><init>(ZII)V

    return-void
.end method


# virtual methods
.method protected b(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/i;Landroid/content/Context;)Lcom/loopj/android/http/h;
    .locals 2

    if-eqz p4, :cond_0

    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p5, v0}, Lcom/loopj/android/http/i;->setUseSynchronousMode(Z)V

    invoke-virtual/range {p0 .. p6}, Lcom/loopj/android/http/k;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/i;Landroid/content/Context;)Lcom/loopj/android/http/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopj/android/http/c;->run()V

    new-instance v0, Lcom/loopj/android/http/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loopj/android/http/h;-><init>(Lcom/loopj/android/http/c;)V

    return-object v0
.end method
