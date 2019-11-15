.class public Lcom/xiaomi/account/auth/WebViewOauth;
.super Ljava/lang/Object;
.source "WebViewOauth.java"

# interfaces
.implements Lcom/xiaomi/account/auth/XiaomiOAuth;


# static fields
.field private static final AUTHORIZE_PATH:Ljava/lang/String;

.field private static final LOCALE_KEY_IN_URL:Ljava/lang/String; = "_locale"

.field private static final TAG:Ljava/lang/String; = "WebViewOauth"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/oauth2/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/auth/WebViewOauth;->AUTHORIZE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/account/auth/WebViewOauth;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/account/auth/WebViewOauth;->quietOAuth(Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/account/auth/WebViewOauth;Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/account/auth/WebViewOauth;->getIntent(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private addLocaleIfNeeded(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "_locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/auth/WebViewOauth;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_locale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIntent(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/xiaomi/account/auth/OAuthConfig;->authorizeActivityClazz:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-direct {p0, p2}, Lcom/xiaomi/account/auth/WebViewOauth;->getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_keep_cookies "

    iget-boolean v2, p2, Lcom/xiaomi/account/auth/OAuthConfig;->keepCookies:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_response"

    new-instance v2, Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-direct {v2, p3}, Lcom/xiaomi/account/XiaomiOAuthResponse;-><init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/xiaomi/account/auth/OAuthConfig;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "userId"

    invoke-interface {v1}, Lcom/xiaomi/account/openauth/AccountAuth;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "serviceToken"

    invoke-interface {v1}, Lcom/xiaomi/account/openauth/AccountAuth;->getServiceToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/xiaomi/account/openauth/AccountAuth;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "serviceToken"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/xiaomi/account/openauth/AccountAuth;->getServiceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private static getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_id"

    iget-object v2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "redirect_uri"

    iget-object v2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response_type"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->responseType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scope"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->scopes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->skipConfirm:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "skip_confirm"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->skipConfirm:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "pt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/xiaomi/account/auth/OAuthConfig;->platform:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/account/auth/WebViewOauth;->addLocaleIfNeeded(Landroid/os/Bundle;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/account/auth/WebViewOauth;->AUTHORIZE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/xiaomi/account/auth/WebViewOauth;->parseBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-lez v2, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private parseBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private quietOAuth(Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    if-nez v0, :cond_0

    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0}, Landroid/accounts/AuthenticatorException;-><init>()V

    throw v0

    :cond_0
    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/xiaomi/account/http/UrlConnHttpFactory;

    invoke-direct {v3}, Lcom/xiaomi/account/http/UrlConnHttpFactory;-><init>()V

    invoke-virtual {v3}, Lcom/xiaomi/account/http/UrlConnHttpFactory;->createHttpClient()Lcom/xiaomi/account/http/HttpClient;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "userId"

    invoke-interface {v2}, Lcom/xiaomi/account/openauth/AccountAuth;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "serviceToken"

    invoke-interface {v2}, Lcom/xiaomi/account/openauth/AccountAuth;->getServiceToken()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Cookie"

    const-string v7, "; "

    invoke-static {v5, v7}, Lcom/xiaomi/account/auth/WebViewOauth;->joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/xiaomi/account/http/Request$Builder;

    invoke-direct {v5}, Lcom/xiaomi/account/http/Request$Builder;-><init>()V

    invoke-direct {p0, p1}, Lcom/xiaomi/account/auth/WebViewOauth;->getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/account/http/Request$Builder;->url(Ljava/lang/String;)Lcom/xiaomi/account/http/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xiaomi/account/http/Request$Builder;->followRedirects(Z)Lcom/xiaomi/account/http/Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/account/http/Request$Builder;->headers(Ljava/util/Map;)Lcom/xiaomi/account/http/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/account/http/Request$Builder;->build()Lcom/xiaomi/account/http/Request;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaomi/account/http/HttpClient;->excute(Lcom/xiaomi/account/http/Request;)Lcom/xiaomi/account/http/Response;

    move-result-object v3

    iget-object v4, v3, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    if-nez v4, :cond_1

    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0}, Landroid/accounts/AuthenticatorException;-><init>()V

    throw v0

    :cond_1
    iget-object v4, v3, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v3, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/account/utils/OAuthUrlPaser;->parse(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse url fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface {v2}, Lcom/xiaomi/account/openauth/AccountAuth;->invalideServiceToken()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0}, Landroid/accounts/AuthenticatorException;-><init>()V

    throw v0
.end method


# virtual methods
.method public fastOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
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

    new-instance v0, Lcom/xiaomi/account/auth/WebViewOauth$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/auth/WebViewOauth$1;-><init>(Lcom/xiaomi/account/auth/WebViewOauth;)V

    return-object v0
.end method

.method public getCodeOrAccessToken(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 4
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

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-direct {v1}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;-><init>()V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/xiaomi/account/auth/WebViewOauth$2;

    invoke-direct {v3, p0, p2, v1, v0}, Lcom/xiaomi/account/auth/WebViewOauth$2;-><init>(Lcom/xiaomi/account/auth/WebViewOauth;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;Ljava/lang/ref/WeakReference;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method
