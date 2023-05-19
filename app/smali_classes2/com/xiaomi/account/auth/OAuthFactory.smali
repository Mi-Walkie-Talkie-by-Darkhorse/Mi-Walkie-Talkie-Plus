.class public Lcom/xiaomi/account/auth/OAuthFactory;
.super Ljava/lang/Object;
.source "OAuthFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOauthParams(Lcom/xiaomi/account/auth/OAuthConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "redirect url is empty!!!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "client id is error!!!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "not set Context or Activity!!!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createOAuth(Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/auth/XiaomiOAuth;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/account/auth/OAuthFactory;->checkOauthParams(Lcom/xiaomi/account/auth/OAuthConfig;)V

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->notUseMiui:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/xiaomi/account/auth/WebViewOauth;

    iget-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/xiaomi/account/auth/WebViewOauth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/xiaomi/account/auth/MiuiOauth;

    iget-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/xiaomi/account/auth/MiuiOauth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
