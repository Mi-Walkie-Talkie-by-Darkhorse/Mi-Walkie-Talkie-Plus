.class public Lcom/xiaomi/account/auth/MiuiOauth;
.super Ljava/lang/Object;
.source "MiuiOauth.java"

# interfaces
.implements Lcom/xiaomi/account/auth/XiaomiOAuth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;
    }
.end annotation


# static fields
.field private static final ACTION_FOR_AUTH_SERVICE:Ljava/lang/String; = "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NEW_ACTION_FOR_AUTH_SERVICE:Ljava/lang/String; = "miui.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

.field private static final PACKAGE_NAME_FOR_AUTH_SERVICE:Ljava/lang/String; = "com.xiaomi.account"

.field private static final TAG:Ljava/lang/String; = "MiuiOauth"


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private mAppId:Ljava/lang/String;

.field private mAuthorizeActivityClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->executor:Ljava/util/concurrent/Executor;

    const-class v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAuthorizeActivityClazz:Ljava/lang/Class;

    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/account/auth/MiuiOauth;Lcom/xiaomi/account/IXiaomiAuthService;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth;->checkNativeOAuthSupport(Lcom/xiaomi/account/IXiaomiAuthService;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/accounts/Account;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/auth/MiuiOauth;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/auth/MiuiOauth;->addXiaomiAccount(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAuthorizeActivityClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private addXiaomiAccount(Landroid/app/Activity;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkNativeOAuthSupport(Lcom/xiaomi/account/IXiaomiAuthService;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "extra_native_oauth"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p1}, Lcom/xiaomi/account/IXiaomiAuthService;->getVersionNum()I

    move-result v2

    if-lt v2, v0, :cond_0

    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v1, "this version of miui not support fast Oauth"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCodeOrAccessToken(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth;->getOauth(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/auth/MiuiOauth$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/account/auth/MiuiOauth$1;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V

    return-object v1
.end method

.method private getOauth(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/account/auth/MiuiOauth$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth$2;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/auth/MiuiOauth$2;->bind()Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method

.method private getXiaomiAccount()Landroid/accounts/Account;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isSupportService(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.xiaomi.account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.xiaomi.account"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public fastOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/account/auth/OAuthConfig;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/xiaomi/account/auth/OAuthConfig;->makeOptions()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_native_oauth"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/auth/MiuiOauth;->getCodeOrAccessToken(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method

.method public getCodeOrAccessToken(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/account/auth/OAuthConfig;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/xiaomi/account/auth/OAuthConfig;->makeOptions()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/auth/MiuiOauth;->getCodeOrAccessToken(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorizeActivityClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAuthorizeActivityClazz:Ljava/lang/Class;

    return-void
.end method
