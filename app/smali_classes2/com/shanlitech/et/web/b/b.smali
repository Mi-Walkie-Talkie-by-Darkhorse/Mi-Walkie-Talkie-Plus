.class public Lcom/shanlitech/et/web/b/b;
.super Lcom/shanlitech/et/web/a;
.source "TOBServiceAPI.java"


# static fields
.field private static final c:Lcom/shanlitech/et/web/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/b/b;

    invoke-direct {v0}, Lcom/shanlitech/et/web/b/b;-><init>()V

    sput-object v0, Lcom/shanlitech/et/web/b/b;->c:Lcom/shanlitech/et/web/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/web/a;->m()Z

    return-void
.end method

.method static synthetic A(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/web/a;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic B(Lcom/shanlitech/et/web/b/b;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/a;->v(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic D(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/web/a;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static G()Lcom/shanlitech/et/web/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/b/b;->c:Lcom/shanlitech/et/web/b/b;

    return-object v0
.end method

.method private synthetic K(Lcom/lzy/okgo/model/a;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->f()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->f()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->f()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/shanlitech/et/web/b/b$b;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/web/b/b$b;-><init>(Lcom/shanlitech/et/web/b/b;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/h;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/web/im/IMServiceAPIResult;

    const-string v2, "TOBServiceAPI"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onError"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 6
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "body:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/shanlitech/et/web/a;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/web/model/UserInfo;

    invoke-virtual {p0, v0, v2, v1}, Lcom/shanlitech/et/web/a;->r(Ljava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->b()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/shanlitech/et/web/a;->q(Ljava/lang/String;I)V

    return-void
.end method

.method private P(Lcom/lzy/okgo/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/b/a;

    invoke-direct {v0, p0, p1}, Lcom/shanlitech/et/web/b/a;-><init>(Lcom/shanlitech/et/web/b/b;Lcom/lzy/okgo/model/a;)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static R(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Lcom/lzy/okgo/model/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;",
            "Lcom/lzy/okgo/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/b/b$e;

    invoke-direct {v0}, Lcom/shanlitech/et/web/b/b$e;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/h;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/model/HttpResultEntity;

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/web/model/HttpResultEntity;->isSuccessful()Z

    move-result v0

    invoke-virtual {p1}, Lcom/shanlitech/et/web/model/HttpResultEntity;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/web/model/HttpResultEntity;->getRet()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/shanlitech/et/web/b/b;->S(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;ZLjava/lang/String;I)V

    return-void
.end method

.method public static S(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;ZLjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/ResultEvent;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {v1, p2}, Lcom/shanlitech/et/notice/event/ResultEvent;->setMsg(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/ResultEvent;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/shanlitech/et/notice/event/ResultEvent;->setCode(I)Lcom/shanlitech/et/notice/event/ResultEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic w(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/web/a;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic x(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shanlitech/et/web/a;->r(Ljava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V

    return-void
.end method

.method static synthetic y(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/web/a;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic z(Lcom/shanlitech/et/web/b/b;Lcom/lzy/okgo/model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/web/b/b;->P(Lcom/lzy/okgo/model/a;)V

    return-void
.end method


# virtual methods
.method public E(JLjava/lang/String;Ljava/lang/String;Lb/c/a/c/d;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "uid"

    .line 2
    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/lzy/okgo/model/HttpParams;->d(Ljava/lang/String;J[Z)V

    new-array p1, v1, [Z

    const-string p2, "phone"

    .line 3
    invoke-virtual {v0, p2, p3, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string p2, "smsCode"

    .line 4
    invoke-virtual {v0, p2, p4, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p1, "apiplatform/rest/user/bindphone/update"

    .line 5
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p5}, Lcom/shanlitech/et/web/a;->o(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public F(JLcom/shanlitech/et/notice/event/ResultEvent$TYPE;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/b/b$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p4

    new-instance v0, Lcom/shanlitech/et/notice/event/ResultEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;JZ)V

    invoke-virtual {p4, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "changeUserPhone"

    const-string v1, "phone"

    goto :goto_0

    :cond_1
    const-string v0, "changeUserEmail"

    const-string v1, "email"

    goto :goto_0

    :cond_2
    const-string v0, "changeusername"

    const-string v1, "username"

    .line 3
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uid"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0, v2}, Lcom/shanlitech/et/web/model/MyRequestBody;->setBody(Ljava/lang/String;Ljava/util/HashMap;)Lcom/shanlitech/et/web/model/MyRequestBody;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/b/b$f;

    invoke-direct {p2, p0, p3}, Lcom/shanlitech/et/web/b/b$f;-><init>(Lcom/shanlitech/et/web/b/b;Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;)V

    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/web/b/b;->Q(Lcom/shanlitech/et/web/model/MyRequestBody;Lb/c/a/c/d;)V

    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 2

    const-string v0, "tob_account_phone_number"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shanlitech/et/web/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tob_account_login"

    invoke-virtual {p0, v1, v0}, Lcom/shanlitech/et/web/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 2

    const-string v0, "tob_account_platform_id"

    const-string v1, "20000"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shanlitech/et/web/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic L(Lcom/lzy/okgo/model/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shanlitech/et/web/b/b;->K(Lcom/lzy/okgo/model/a;)V

    return-void
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "phone"

    .line 2
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string v2, "pwd"

    .line 3
    invoke-virtual {v0, v2, p2, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string p2, "platformId"

    .line 4
    invoke-virtual {v0, p2, p3, p1}, Lcom/lzy/okgo/model/HttpParams;->c(Ljava/lang/String;I[Z)V

    const-string p1, "user/login/appphone"

    .line 5
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/b/b$c;

    invoke-direct {p2, p0, p3}, Lcom/shanlitech/et/web/b/b$c;-><init>(Lcom/shanlitech/et/web/b/b;I)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/shanlitech/et/web/a;->o(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public N(Lcom/shanlitech/et/web/model/UserInfo;Lcom/shanlitech/et/web/LoginType;I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    if-nez p1, :cond_0

    const p1, 0x186a2

    const/4 p2, 0x0

    const-string p3, "user is null"

    .line 1
    invoke-virtual {p0, p3, p1, p2}, Lcom/shanlitech/et/web/a;->r(Ljava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginPoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/web/model/UserInfo;->getSourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOBServiceAPI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p2}, Lcom/shanlitech/et/web/LoginType;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shanlitech/et/web/model/UserInfo;->setLoginType(I)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/shanlitech/et/web/model/UserInfo;->setPlatformId(I)V

    .line 5
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "sdk.account.alert_not_shanli_source_type"

    invoke-virtual {p2, v0, p3}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/shanlitech/et/web/model/UserInfo;->getSourceType()I

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x186a1

    const-string p3, "\u975e\u5584\u7406\u5e73\u53f0\u6765\u6e90\u8d26\u53f7"

    .line 6
    invoke-virtual {p0, p3, p2, p1}, Lcom/shanlitech/et/web/a;->r(Ljava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->O(Lcom/shanlitech/et/web/b/c/h;)V

    :goto_0
    return-void
.end method

.method public O(Lcom/shanlitech/et/web/b/c/h;)V
    .locals 9
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getOption()Lcom/shanlitech/et/core/sl/model/IAccountOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->buildDeviceID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value_device_id"

    invoke-virtual {p0, v1, v0}, Lcom/shanlitech/et/web/a;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/web/b/c/h;->getPlatformId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tob_account_platform_id"

    invoke-virtual {p0, v1, v0}, Lcom/shanlitech/et/web/a;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/web/b/c/h;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/web/b/c/h;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/web/b/c/h;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tob_account_phone_number"

    invoke-virtual {p0, v2, v1}, Lcom/shanlitech/et/web/a;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    invoke-virtual {p1}, Lcom/shanlitech/et/web/b/c/h;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shanlitech/et/web/a;->v(Ljava/lang/String;)V

    .line 8
    instance-of v1, p1, Lcom/shanlitech/et/web/model/UserInfo;

    if-eqz v1, :cond_2

    .line 9
    move-object v1, p1

    check-cast v1, Lcom/shanlitech/et/web/model/UserInfo;

    .line 10
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Lcom/shanlitech/et/web/model/UserInfo;->getPwdUpTime()J

    move-result-wide v3

    .line 12
    invoke-virtual {v1}, Lcom/shanlitech/et/web/model/UserInfo;->getCurTime()J

    move-result-wide v5

    .line 13
    invoke-virtual {v1}, Lcom/shanlitech/et/web/model/UserInfo;->getPwdWnDays()I

    move-result v7

    .line 14
    invoke-virtual {v1}, Lcom/shanlitech/et/web/model/UserInfo;->getPwdExpireDays()I

    move-result v8

    .line 15
    invoke-virtual/range {v2 .. v8}, Lcom/shanlitech/et/core/c/h;->I(JJII)V

    .line 16
    :cond_2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/web/b/c/h;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shanlitech/et/web/b/c/h;->getLoginType()I

    move-result v3

    invoke-static {v3}, Lcom/shanlitech/et/web/LoginType;->a(I)Lcom/shanlitech/et/web/LoginType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/shanlitech/et/core/c/h;->r(Ljava/lang/String;Ljava/lang/String;ILcom/shanlitech/et/web/LoginType;)Z

    .line 17
    invoke-virtual {p1}, Lcom/shanlitech/et/web/b/c/h;->getPlatformId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "tob_account_login"

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/shanlitech/et/web/a;->t(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0, v3, v0}, Lcom/shanlitech/et/web/a;->t(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "account:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "loginAccount:"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    .line 21
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/b;->I()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "phoneNum:"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/b;->H()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    aput-object p1, v1, v0

    const-string p1, "TOBServiceAPI"

    invoke-virtual {p0, p1, v1}, Lcom/shanlitech/et/web/a;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Q(Lcom/shanlitech/et/web/model/MyRequestBody;Lb/c/a/c/d;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "OkGo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pocSDKHandle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string v1, "TOBServiceAPI"

    .line 1
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "pocsdk"

    .line 2
    invoke-virtual {p0, v0}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/web/model/MyRequestBody;->toRequestBody()Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/shanlitech/et/web/a;->p(Ljava/lang/String;Lokhttp3/RequestBody;Lb/c/a/c/d;)V

    return-void
.end method

.method public T(Ljava/lang/String;Lb/c/a/c/d;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Z

    const-string v2, "uids"

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p1, "terminal/status/list"

    .line 3
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/shanlitech/et/web/a;->g(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Z

    const-string v2, "account"

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p1, "user/session/refresh"

    .line 3
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/shanlitech/et/web/b/b$d;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/web/b/b$d;-><init>(Lcom/shanlitech/et/web/b/b;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/shanlitech/et/web/a;->s(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public V(JLjava/lang/String;Lb/c/a/c/d;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "uid"

    .line 2
    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/lzy/okgo/model/HttpParams;->d(Ljava/lang/String;J[Z)V

    new-array p1, v1, [Z

    const-string p2, "phone"

    .line 3
    invoke-virtual {v0, p2, p3, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p1, "apiplatform/rest/user/bindphone/sendsmscode"

    .line 4
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p4}, Lcom/shanlitech/et/web/a;->o(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public W(Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "account"

    .line 2
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string v2, "phone"

    .line 3
    invoke-virtual {v0, v2, p2, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string p2, "platformId"

    .line 4
    invoke-virtual {v0, p2, p3, p1}, Lcom/lzy/okgo/model/HttpParams;->c(Ljava/lang/String;I[Z)V

    const-string p1, "user/login/sms/sendloginsmscode"

    .line 5
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p4}, Lcom/shanlitech/et/web/a;->o(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "account"

    .line 2
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string v2, "phone"

    .line 3
    invoke-virtual {v0, v2, p2, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string p2, "platformId"

    .line 4
    invoke-virtual {v0, p2, p3, p1}, Lcom/lzy/okgo/model/HttpParams;->c(Ljava/lang/String;I[Z)V

    const-string p1, "user/login/fbpwd/sendfbpwdsmscode"

    .line 5
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p4}, Lcom/shanlitech/et/web/a;->o(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public Y(Ljava/lang/String;ILjava/lang/String;Lb/c/a/c/d;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "vfCode"

    .line 2
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string v2, "platformId"

    .line 3
    invoke-virtual {v0, v2, p2, p1}, Lcom/lzy/okgo/model/HttpParams;->c(Ljava/lang/String;I[Z)V

    new-array p1, v1, [Z

    const-string p2, "password"

    .line 4
    invoke-virtual {v0, p2, p3, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p1, "user/login/fbpwd/resetpwd"

    .line 5
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p4}, Lcom/shanlitech/et/web/a;->o(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/c/a/c/d;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "account"

    .line 2
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string v2, "platformId"

    .line 3
    invoke-virtual {v0, v2, p2, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string p2, "oldPassword"

    .line 4
    invoke-virtual {v0, p2, p3, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string p2, "newPassword"

    .line 5
    invoke-virtual {v0, p2, p4, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p1, "user/login/fbpwd/resetpwd/old"

    .line 6
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p5}, Lcom/shanlitech/et/web/a;->o(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method public a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "account"

    .line 2
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string v2, "phone"

    .line 3
    invoke-virtual {v0, v2, p2, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    new-array p1, v1, [Z

    const-string p2, "platformId"

    .line 4
    invoke-virtual {v0, p2, p4, p1}, Lcom/lzy/okgo/model/HttpParams;->c(Ljava/lang/String;I[Z)V

    new-array p1, v1, [Z

    const-string p2, "smsCode"

    .line 5
    invoke-virtual {v0, p2, p3, p1}, Lcom/lzy/okgo/model/HttpParams;->f(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p1, "user/login/fbpwd/verifyfbpwdcode"

    .line 6
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p5}, Lcom/shanlitech/et/web/a;->g(Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lb/c/a/c/d;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/shanlitech/et/web/ServerType;->a:Lcom/shanlitech/et/web/ServerType;

    const-string v2, "gateway2.cmpoctob2.cn"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/shanlitech/et/web/a;->j(Lcom/shanlitech/et/web/ServerType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "https://%s/%s"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    const-string v0, "cm-auth-token"

    return-object v0
.end method
