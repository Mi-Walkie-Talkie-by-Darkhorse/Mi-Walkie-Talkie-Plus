.class public abstract Lcom/shanlitech/et/web/a;
.super Ljava/lang/Object;
.source "WebAPICommon.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lb/c/a/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 2
    const-class v0, Lcom/shanlitech/et/web/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/web/a;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/shanlitech/et/web/a$a;

    invoke-direct {v0}, Lcom/shanlitech/et/web/a$a;-><init>()V

    sput-object v0, Lcom/shanlitech/et/web/a;->b:Lb/c/a/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string p1, "https://%s/%s"

    .line 2
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string p1, "%s/%s"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private l()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 3

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/web/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shanlitech/et/web/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/model/HttpHeaders;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/model/HttpHeaders;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/model/HttpHeaders;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "loginToken"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lb/c/a/a;->a(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/a;->l()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->p(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    .line 3
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/base/Request;->r(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    .line 4
    invoke-virtual {p1, p3}, Lcom/lzy/okgo/request/base/Request;->d(Lb/c/a/c/b;)V

    return-void
.end method

.method public e(JLb/c/a/c/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Z

    const-string v2, "speechId"

    .line 2
    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/lzy/okgo/model/HttpParams;->d(Ljava/lang/String;J[Z)V

    const-string p1, "fy-store/findBySpeechId"

    .line 3
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p3}, Lcom/shanlitech/et/web/a;->d(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/c;)V

    return-void
.end method

.method public g(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lcom/shanlitech/et/web/a;->b:Lb/c/a/c/d;

    .line 2
    :cond_0
    invoke-static {p1}, Lb/c/a/a;->a(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/shanlitech/et/web/a;->l()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->p(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    .line 4
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/base/Request;->r(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/GetRequest;

    .line 5
    invoke-virtual {p1, p3}, Lcom/lzy/okgo/request/base/Request;->d(Lb/c/a/c/b;)V

    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected i(Lcom/shanlitech/et/web/ServerType;)Ljava/lang/String;
    .locals 1

    const-string v0, "gateway2.cmpoctob2.cn"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shanlitech/et/web/a;->j(Lcom/shanlitech/et/web/ServerType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lcom/shanlitech/et/web/ServerType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v1

    sget-object v2, Lcom/shanlitech/et/web/ServerType;->a:Lcom/shanlitech/et/web/ServerType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    const-string v0, "token"

    return-object v0
.end method

.method public m()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/i;->f()Lcom/shanlitech/et/web/tob/api/i;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/web/ServerType;->e:Lcom/shanlitech/et/web/ServerType;

    invoke-virtual {p0, v1}, Lcom/shanlitech/et/web/a;->i(Lcom/shanlitech/et/web/ServerType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/shanlitech/et/web/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/tob/api/b;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/k;->f()Lcom/shanlitech/et/web/tob/api/k;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/web/ServerType;->g:Lcom/shanlitech/et/web/ServerType;

    invoke-virtual {p0, v1}, Lcom/shanlitech/et/web/a;->i(Lcom/shanlitech/et/web/ServerType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/shanlitech/et/web/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/tob/api/b;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/f;->f()Lcom/shanlitech/et/web/tob/api/f;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/web/ServerType;->i:Lcom/shanlitech/et/web/ServerType;

    invoke-virtual {p0, v1}, Lcom/shanlitech/et/web/a;->i(Lcom/shanlitech/et/web/ServerType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/shanlitech/et/web/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/tob/api/b;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/m;->f()Lcom/shanlitech/et/web/tob/api/m;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/web/ServerType;->j:Lcom/shanlitech/et/web/ServerType;

    invoke-virtual {p0, v1}, Lcom/shanlitech/et/web/a;->i(Lcom/shanlitech/et/web/ServerType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/shanlitech/et/web/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/tob/api/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected varargs n(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v1, p2

    if-lez v1, :cond_0

    .line 4
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logDebug: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public o(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lcom/shanlitech/et/web/a;->b:Lb/c/a/c/d;

    .line 2
    :cond_0
    invoke-static {p1}, Lb/c/a/a;->k(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/shanlitech/et/web/a;->l()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->p(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 4
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/base/Request;->r(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 5
    invoke-virtual {p1, p3}, Lcom/lzy/okgo/request/base/Request;->d(Lb/c/a/c/b;)V

    return-void
.end method

.method public p(Ljava/lang/String;Lokhttp3/RequestBody;Lb/c/a/c/d;)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lcom/shanlitech/et/web/a;->b:Lb/c/a/c/d;

    .line 2
    :cond_0
    invoke-static {p1}, Lb/c/a/a;->k(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/shanlitech/et/web/a;->l()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->p(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 4
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->t(Lokhttp3/RequestBody;)Lcom/lzy/okgo/request/base/BodyRequest;

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 5
    invoke-virtual {p1, p3}, Lcom/lzy/okgo/request/base/Request;->d(Lb/c/a/c/b;)V

    return-void
.end method

.method protected q(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/MessageEvent;

    const/16 v1, -0x3e8

    invoke-direct {v0, v1, p1, p2}, Lcom/shanlitech/et/notice/event/MessageEvent;-><init>(ILjava/lang/String;I)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method protected r(Ljava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/MessageEvent;

    const/16 v1, -0x3e8

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/shanlitech/et/notice/event/MessageEvent;-><init>(ILjava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lcom/shanlitech/et/web/a;->b:Lb/c/a/c/d;

    .line 2
    :cond_0
    invoke-static {p1}, Lb/c/a/a;->l(Ljava/lang/String;)Lcom/lzy/okgo/request/PutRequest;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/shanlitech/et/web/a;->l()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->p(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/PutRequest;

    .line 4
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/request/base/Request;->r(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    check-cast p1, Lcom/lzy/okgo/request/PutRequest;

    .line 5
    invoke-virtual {p1, p3}, Lcom/lzy/okgo/request/base/Request;->d(Lb/c/a/c/b;)V

    return-void
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/shanlitech/et/core/b;->l(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/b;->k(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    .line 4
    :goto_0
    sget-object v0, Lcom/shanlitech/et/web/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public u(Lcom/shanlitech/et/web/ServerType;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/web/a;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/a;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected v(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shanlitech/et/web/a;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shanlitech/et/core/c/h;->o()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string v4, "online = %s ,token = %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v3, "loginToken"

    .line 4
    invoke-virtual {v0, v3, p1}, Lcom/shanlitech/et/core/b;->k(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v3

    const-string v5, "token_time"

    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7
    sget-object v0, Lcom/shanlitech/et/web/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66f4\u65b0token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->updatePassword(Ljava/lang/String;)I

    move-result p1

    sget v4, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
