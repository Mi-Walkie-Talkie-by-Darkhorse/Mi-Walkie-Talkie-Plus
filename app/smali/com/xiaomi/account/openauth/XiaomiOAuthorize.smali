.class public Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
.super Ljava/lang/Object;
.source "XiaomiOAuthorize.java"


# static fields
.field private static final DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
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

    const-class v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;

    sput-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method private oauth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity should not be null and should be running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-direct {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->build()Lcom/xiaomi/account/auth/OAuthConfig;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/account/auth/OAuthFactory;->createOAuth(Landroid/content/Context;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/auth/XiaomiOAuth;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/account/auth/XiaomiOAuth;->getCodeOrAccessToken(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method

.method private static scopeStringToIntArray(Ljava/lang/String;)[I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [I

    move v1, v0

    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    return-object v3

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static startGetAccessToken(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "you are calling startGetAccessToken(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetAccessToken(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!"

    const-string v1, "XiaomiOAuthorize"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "token"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static startGetOAuthCode(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "you are calling startGetOAuthCode(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetOAuthCode(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!"

    const-string v1, "XiaomiOAuthorize"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "code"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method private static startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p5, :cond_0

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "extra_scope"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->scopeStringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "extra_state"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setState(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-string v1, "extra_skip_confirm"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "extra_skip_confirm"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    :cond_1
    const-string v1, "code"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;

    invoke-direct {v1, v0, p4, p0, p6}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;Ljava/lang/String;Landroid/app/Activity;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public callOpenApi(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 10
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
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;

    invoke-direct {v0, p0, v9}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Ljava/util/concurrent/FutureTask;)V

    return-object v0
.end method

.method public fastOAuth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity should not be null and should be running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-direct {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->build()Lcom/xiaomi/account/auth/OAuthConfig;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/account/auth/OAuthFactory;->createOAuth(Landroid/content/Context;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/auth/XiaomiOAuth;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/account/auth/XiaomiOAuth;->fastOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method

.method public setAccountAuth(Lcom/xiaomi/account/openauth/AccountAuth;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->accountAuth(Lcom/xiaomi/account/openauth/AccountAuth;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId(J)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setCustomizedAuthorizeActivityClass(Ljava/lang/Class;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthorize;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz(Ljava/lang/Class;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setDeviceID(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setKeepCookies(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setNoMiui(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setPlatform(I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform(I)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes([I)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    const-string v0, "token"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method

.method public startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    const-string v0, "code"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method
