.class public Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
.super Ljava/lang/Object;
.source "XiaomiOAuthorize.java"


# static fields
.field private static final DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XiaomiOAuthorize"

.field public static final TYPE_CODE:Ljava/lang/String; = "code"

.field public static final TYPE_TOKEN:Ljava/lang/String; = "token"


# instance fields
.field private mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;

    sput-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method private oauth(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->context(Landroid/content/Context;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "please set Context or Activity!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    new-instance v1, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p1, v1}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;-><init>(Ljava/util/concurrent/Callable;)V

    .line 6
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method private static scopeStringToIntArray(Ljava/lang/String;)[I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, " "

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 3
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v2, p0, [I

    :goto_1
    if-ge v1, p0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static startGetAccessToken(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "XiaomiOAuthorize"

    const-string v1, "you are calling startGetAccessToken(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetAccessToken(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "token"

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v7, p4

    move v8, p5

    .line 4
    invoke-static/range {v2 .. v8}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static startGetOAuthCode(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "XiaomiOAuthorize"

    const-string v1, "you are calling startGetOAuthCode(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetOAuthCode(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "code"

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v7, p4

    move v8, p5

    .line 4
    invoke-static/range {v2 .. v8}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method private static startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p5, :cond_0

    .line 1
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "extra_scope"

    .line 2
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->scopeStringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "extra_state"

    .line 3
    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    .line 5
    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p3}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setState(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object p1

    const-string p2, "extra_skip_confirm"

    .line 9
    invoke-virtual {p5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    :cond_1
    const-string p2, "code"

    .line 11
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object p1

    .line 12
    :goto_0
    new-instance p2, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$4;

    invoke-direct {p2, p1, p4, p0, p6}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$4;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;Ljava/lang/String;Landroid/app/Activity;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 13
    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public callOpenApi(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v10, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-wide v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3
    new-instance v1, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Ljava/util/concurrent/FutureTask;)V

    return-object v1
.end method

.method public fastOAuth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->fastOAuth(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 3
    invoke-direct {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object p1

    return-object p1
.end method

.method public setAccountAuth(Lcom/xiaomi/account/openauth/AccountAuth;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->accountAuth(Lcom/xiaomi/account/openauth/AccountAuth;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId(J)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->context(Landroid/content/Context;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setCustomizedAuthorizeActivityClass(Ljava/lang/Class;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthorize;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz(Ljava/lang/Class;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setDeviceID(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setDisplay(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->display(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setHideSwitch(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->hideSwitch(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setKeepCookies(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setLoginType(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->loginType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setNoMiui(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setPhoneNumAutoFill(Landroid/content/Context;Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setPhoneNumAutoFill(Landroid/content/Context;ZJ)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object p1

    return-object p1
.end method

.method public setPhoneNumAutoFill(Landroid/content/Context;ZJ)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    const-class p2, Lcom/xiaomi/phonenum/PhoneNumKeeper;

    .line 2
    iget-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    new-instance v0, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;

    invoke-direct {v0, p1, p3, p4}, Lcom/xiaomi/account/openauth/internal/MiAccountPhoneInfo;-><init>(Landroid/content/Context;J)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->phoneInfo(Lcom/xiaomi/account/auth/PhoneInfo;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "XiaomiOAuthorize"

    const-string p2, "please add \'com.xiaomi.account:phoneNumKeep:+\' to support setPhoneNumAutoFill"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setPlatform(I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform(I)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes([I)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setUseSystemAccountLogin(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->useSystemAccountLogin(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setUseSystemBrowserLogin(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->useSystemBrowserLogin(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object p1

    return-object p1
.end method

.method public startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object p1

    return-object p1
.end method
