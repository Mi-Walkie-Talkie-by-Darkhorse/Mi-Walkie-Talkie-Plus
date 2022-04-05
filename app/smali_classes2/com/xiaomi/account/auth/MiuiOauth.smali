.class public Lcom/xiaomi/account/auth/MiuiOauth;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/account/auth/XiaomiOAuth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MINUTE:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "MiuiOauth"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public startOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->getResult()Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/account/auth/FallBackWebOAuthException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const-string v0, "MiuiOauth"

    const-string v1, "fallBack to WebView OAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/auth/WebViewOauth;

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mRedirectUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/account/auth/WebViewOauth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/account/auth/WebViewOauth;->startOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object p1

    return-object p1
.end method
