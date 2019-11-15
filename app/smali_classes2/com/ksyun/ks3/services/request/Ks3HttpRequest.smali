.class public abstract Lcom/ksyun/ks3/services/request/Ks3HttpRequest;
.super Ljava/lang/Object;
.source "Ks3HttpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final p:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x517c2c124f6d6651L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lorg/apache/http/HttpEntity;

.field private f:Ljava/io/InputStream;

.field private g:Lcom/ksyun/ks3/model/HttpMethod;

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

.field private i:Ljava/util/Map;
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

.field private j:Lcom/ksyun/ks3/model/acl/b;

.field private k:Lcom/ksyun/ks3/model/a;

.field private l:Lcom/ksyun/ks3/services/b;

.field private m:Ljava/lang/String;

.field private n:Lcom/ksyun/ks3/model/b/d;

.field private o:Lcom/loopj/android/http/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%7E"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->p:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/ksyun/ks3/services/d;)Lcom/ksyun/ks3/model/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    instance-of v0, p0, Lcom/ksyun/ks3/services/request/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h()Ljava/io/InputStream;

    move-result-object v0

    instance-of v0, v0, Lcom/ksyun/ks3/model/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksyun/ks3/model/b/b;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/model/b/b;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Ljava/io/InputStream;)V

    :cond_0
    invoke-direct {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v0

    sget-object v2, Lcom/ksyun/ks3/model/HttpMethod;->b:Lcom/ksyun/ks3/model/HttpMethod;

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->f:Ljava/io/InputStream;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i:Ljava/util/Map;

    if-eqz v0, :cond_7

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l:Lcom/ksyun/ks3/services/b;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/ksyun/ks3/auth/b;->b(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/ksyun/ks3/auth/b;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ks3_android_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the correct StringToSign should be :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->j:Lcom/ksyun/ks3/model/acl/b;

    if-eqz v0, :cond_4

    const-string v0, "ks3_android_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the correct auth string should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/ksyun/ks3/auth/c;

    invoke-direct {v2}, Lcom/ksyun/ks3/auth/c;-><init>()V

    iget-object v3, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->j:Lcom/ksyun/ks3/model/acl/b;

    invoke-virtual {v2, v3, p0}, Lcom/ksyun/ks3/auth/c;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l:Lcom/ksyun/ks3/services/b;

    instance-of v0, v0, Lcom/ksyun/ks3/services/h;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l:Lcom/ksyun/ks3/services/b;

    check-cast v0, Lcom/ksyun/ks3/services/h;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/ksyun/ks3/auth/b;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/ksyun/ks3/auth/b;->b(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ksyun/ks3/services/h;->onCalculateAuthWithServerDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ksyun/ks3/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/ks3/services/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ksyun/ks3/services/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    :cond_5
    const-string v0, "ks3_android_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app server return auth string is  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->b:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->e:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/ksyun/ks3/model/a;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i:Ljava/util/Map;

    iget-object v5, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->e:Lorg/apache/http/HttpEntity;

    invoke-direct/range {v0 .. v5}, Lcom/ksyun/ks3/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/apache/http/HttpEntity;)V

    :goto_4
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create HTTP entity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/ksyun/ks3/auth/d;

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->f:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Lcom/ksyun/ks3/auth/d;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/ksyun/ks3/exception/Ks3ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init http request error("

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

    :cond_8
    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->a:Lcom/ksyun/ks3/model/HttpMethod;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->c:Lcom/ksyun/ks3/model/HttpMethod;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    const-string v1, "content-length can not be null when put request"

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v1, Lcom/ksyun/ks3/auth/d;

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->f:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Lcom/ksyun/ks3/auth/d;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->n:Lcom/ksyun/ks3/model/b/d;

    invoke-virtual {v1, v0}, Lcom/ksyun/ks3/auth/d;->a(Lcom/ksyun/ks3/model/b/d;)V

    invoke-virtual {p0, v1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->d:Lcom/ksyun/ks3/model/HttpMethod;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->e:Lcom/ksyun/ks3/model/HttpMethod;

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/ksyun/ks3/exception/Ks3ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow http method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l:Lcom/ksyun/ks3/services/b;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k()Lcom/ksyun/ks3/model/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/ksyun/ks3/auth/b;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/ksyun/ks3/auth/b;->b(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/ksyun/ks3/services/b;->onCalculateAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->b:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ksyun/ks3/auth/c;

    invoke-direct {v1}, Lcom/ksyun/ks3/auth/c;-><init>()V

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->j:Lcom/ksyun/ks3/model/acl/b;

    invoke-virtual {v1, v2, p0}, Lcom/ksyun/ks3/auth/c;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    new-instance v0, Lcom/ksyun/ks3/model/a;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/a;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_4
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "+"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "%20"

    :cond_1
    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    :cond_2
    const-string v3, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "%2A"

    goto :goto_2

    :cond_3
    const-string v3, "%7E"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "~"

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private q()V
    .locals 3

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    const-string v1, "http://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/ksyun/ks3/model/HttpMethod;->b:Lcom/ksyun/ks3/model/HttpMethod;

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->g:Lcom/ksyun/ks3/model/HttpMethod;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->f:Lcom/ksyun/ks3/model/HttpHeaders;

    const-string v1, "ks3-kss-android-sdk"

    invoke-virtual {p0, v0, v1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V

    invoke-static {}, Lcom/ksyun/ks3/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h(Ljava/lang/String;)V

    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/ksyun/ks3/services/request/Ks3HttpRequest$1;

    invoke-direct {v1, p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest$1;-><init>(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v6, 0x200b

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v2, Lcom/ksyun/ks3/a/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v1, :cond_3

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/ksyun/ks3/a/e;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "&"

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->e(Ljava/lang/String;)V

    return-object v0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation
.end method

.method protected a(Lcom/ksyun/ks3/model/HttpHeaders;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ksyun/ks3/model/HttpMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->g:Lcom/ksyun/ks3/model/HttpMethod;

    return-void
.end method

.method public a(Lcom/ksyun/ks3/model/acl/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->j:Lcom/ksyun/ks3/model/acl/b;

    return-void
.end method

.method public a(Lcom/ksyun/ks3/services/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l:Lcom/ksyun/ks3/services/b;

    return-void
.end method

.method public a(Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->b()V

    invoke-direct {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->q()V

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a()V

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->g(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p2, Lcom/ksyun/ks3/model/b/d;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/ksyun/ks3/model/b/d;

    iput-object p2, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->n:Lcom/ksyun/ks3/model/b/d;

    :cond_1
    invoke-direct {p0, p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/services/d;)Lcom/ksyun/ks3/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k:Lcom/ksyun/ks3/model/a;

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->l:Lcom/ksyun/ks3/services/b;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/ksyun/ks3/services/d;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/ksyun/ks3/auth/a;

    invoke-direct {v0}, Lcom/ksyun/ks3/auth/a;-><init>()V

    sget-object v1, Lcom/ksyun/ks3/auth/AuthEventCode;->a:Lcom/ksyun/ks3/auth/AuthEventCode;

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/auth/a;->a(Lcom/ksyun/ks3/auth/AuthEventCode;)V

    iget-object v1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/auth/a;->a(Ljava/lang/String;)V

    const-string v1, "ks3_android_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieve auth string success :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ks3_android_sdk"

    const-string v2, "make requset complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Lcom/ksyun/ks3/services/d;->a(Lcom/ksyun/ks3/auth/a;)V

    :cond_2
    :goto_0
    const-string v0, "ks3_android_sdk"

    const-string v1, "make requset complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v0, Lcom/ksyun/ks3/auth/a;

    invoke-direct {v0}, Lcom/ksyun/ks3/auth/a;-><init>()V

    sget-object v1, Lcom/ksyun/ks3/auth/AuthEventCode;->b:Lcom/ksyun/ks3/auth/AuthEventCode;

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/auth/a;->a(Lcom/ksyun/ks3/auth/AuthEventCode;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure reason : authorizaion is not correct :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/auth/a;->a(Ljava/lang/String;)V

    const-string v1, "ks3_android_sdk"

    const-string v2, "make requset failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Lcom/ksyun/ks3/services/d;->b(Lcom/ksyun/ks3/auth/a;)V

    goto :goto_0
.end method

.method public a(Lcom/loopj/android/http/h;)V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o:Lcom/loopj/android/http/h;

    if-eqz v0, :cond_0

    const-string v0, "ks3_android_sdk"

    const-string v1, "method : setRequestHandler , is an internal method, and the handler is already set up , ingnore ! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o:Lcom/loopj/android/http/h;

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->f:Ljava/io/InputStream;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lorg/apache/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->e:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method protected abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ksyun/ks3/exception/Ks3ClientException;
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->b:Ljava/lang/String;

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->d:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Lorg/apache/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->e:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->d:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->e:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Ks3HttpRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ks3HttpRequest finalize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->m:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->f:Ljava/io/InputStream;

    return-object v0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/model/HttpHeaders;->c:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/ksyun/ks3/model/HttpMethod;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->g:Lcom/ksyun/ks3/model/HttpMethod;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->e:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->m:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->h:Ljava/util/Map;

    sget-object v1, Lcom/ksyun/ks3/model/HttpHeaders;->c:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public o()Lcom/ksyun/ks3/model/a;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->k:Lcom/ksyun/ks3/model/a;

    return-object v0
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o:Lcom/loopj/android/http/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->o:Lcom/loopj/android/http/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/h;->a(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "ks3_android_sdk"

    const-string v1, "the request is on RUNNING status , or the request is on sync mode , igonre abort request ! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
