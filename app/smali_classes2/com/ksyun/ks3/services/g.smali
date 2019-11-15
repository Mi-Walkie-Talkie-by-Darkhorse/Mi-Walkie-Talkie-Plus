.class public Lcom/ksyun/ks3/services/g;
.super Ljava/lang/Object;
.source "Ks3HttpExector.java"


# instance fields
.field private a:Lcom/loopj/android/http/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)V
    .locals 4

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/a;->a()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/a;->c()Lcom/loopj/android/http/RequestParams;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**url** "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksyun/ks3/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "**heads**"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "ks3_android_sdk"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ksyun/ks3/services/g$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ksyun/ks3/services/g$3;-><init>(Lcom/ksyun/ks3/services/g;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Lcom/ksyun/ks3/services/f;Landroid/content/Context;Ljava/lang/String;Lcom/ksyun/ks3/services/b;Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ks3_android_sdk"

    const-string v1, "The endpoint is empty,do you call setEndpoint() after you create Ks3Client?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_2

    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/ksyun/ks3/services/a;->a(Lcom/ksyun/ks3/services/f;)Lcom/loopj/android/http/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    :goto_1
    invoke-virtual {p2, p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/model/acl/b;)V

    invoke-virtual {p2}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p4}, Lcom/ksyun/ks3/services/f;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p6}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->c(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p7, :cond_6

    invoke-virtual {p2, p7}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/services/b;)V

    new-instance v0, Lcom/ksyun/ks3/services/g$1;

    invoke-direct {v0, p0, p2, p5, p3}, Lcom/ksyun/ks3/services/g$1;-><init>(Lcom/ksyun/ks3/services/g;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Landroid/content/Context;Lcom/loopj/android/http/d;)V

    invoke-direct {p0, p2, v0, p3}, Lcom/ksyun/ks3/services/g;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V

    goto :goto_0

    :cond_1
    invoke-static {p4}, Lcom/ksyun/ks3/services/i;->a(Lcom/ksyun/ks3/services/f;)Lcom/loopj/android/http/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    goto :goto_1

    :cond_2
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ksyun/ks3/services/a;->a()Lcom/loopj/android/http/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/ksyun/ks3/services/i;->a()Lcom/loopj/android/http/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, p6}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0, p3}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V
    :try_end_0
    .catch Lcom/ksyun/ks3/exception/Ks3ClientException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p2, p5, p3}, Lcom/ksyun/ks3/services/g;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Landroid/content/Context;Lcom/loopj/android/http/d;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p3, v3, v2, v2, v0}, Lcom/loopj/android/http/d;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual {p2, p7}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/services/b;)V

    new-instance v0, Lcom/ksyun/ks3/services/g$2;

    invoke-direct {v0, p0, p2, p5, p3}, Lcom/ksyun/ks3/services/g$2;-><init>(Lcom/ksyun/ks3/services/g;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Landroid/content/Context;Lcom/loopj/android/http/d;)V

    :try_start_1
    invoke-virtual {p2, v0, p3}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V
    :try_end_1
    .catch Lcom/ksyun/ks3/exception/Ks3ClientException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iput-boolean v3, v0, Lcom/ksyun/ks3/services/d;->a:Z

    invoke-virtual {p3, v3, v2, v2, v1}, Lcom/loopj/android/http/d;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p2, v0, p3}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V
    :try_end_2
    .catch Lcom/ksyun/ks3/exception/Ks3ClientException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p0, p2, p5, p3}, Lcom/ksyun/ks3/services/g;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Landroid/content/Context;Lcom/loopj/android/http/d;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p3, v3, v2, v2, v0}, Lcom/loopj/android/http/d;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Landroid/content/Context;Lcom/loopj/android/http/d;)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/ksyun/ks3/services/g;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)V

    const-string v0, "ks3_android_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requset url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ksyun/ks3/services/g$4;->a:[I

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "ks3_android_sdk"

    const-string v1, "unsupport http method ! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1, v4}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/loopj/android/http/h;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    move-result-object v3

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/b;->b(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/i;)Lcom/loopj/android/http/h;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->e()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m()Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/b;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/i;)Lcom/loopj/android/http/h;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->e()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m()Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/b;->b(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/i;)Lcom/loopj/android/http/h;

    move-result-object v4

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p3}, Lcom/loopj/android/http/b;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/i;)Lcom/loopj/android/http/h;

    move-result-object v4

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ksyun/ks3/services/g;->a:Lcom/loopj/android/http/b;

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o()Lcom/ksyun/ks3/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/a;->b()[Lorg/apache/http/Header;

    move-result-object v3

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/b;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/i;)Lcom/loopj/android/http/h;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
