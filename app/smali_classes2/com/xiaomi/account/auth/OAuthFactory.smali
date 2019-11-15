.class public Lcom/xiaomi/account/auth/OAuthFactory;
.super Ljava/lang/Object;
.source "OAuthFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOauthParams(Lcom/xiaomi/account/auth/OAuthConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client id is error!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "redirect url is empty!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static createOAuth(Landroid/content/Context;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/auth/XiaomiOAuth;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthFactory;->checkOauthParams(Lcom/xiaomi/account/auth/OAuthConfig;)V

    iget v0, p1, Lcom/xiaomi/account/auth/OAuthConfig;->platform:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p1, Lcom/xiaomi/account/auth/OAuthConfig;->notUseMiui:Z

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/xiaomi/account/auth/OAuthFactory;->isMiui(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/xiaomi/account/auth/WebViewOauth;

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/account/auth/WebViewOauth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/account/auth/MiuiOauth;

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/account/auth/MiuiOauth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->authorizeActivityClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/MiuiOauth;->setAuthorizeActivityClazz(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private static isMiui(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/account/auth/MiuiOauth;->isSupportService(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
