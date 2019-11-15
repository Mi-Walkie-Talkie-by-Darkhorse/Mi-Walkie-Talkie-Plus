.class Lcom/xiaomi/account/auth/WebViewOauth$2;
.super Ljava/lang/Object;
.source "WebViewOauth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/auth/WebViewOauth;->getCodeOrAccessToken(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/auth/WebViewOauth;

.field final synthetic val$config:Lcom/xiaomi/account/auth/OAuthConfig;

.field final synthetic val$future:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

.field final synthetic val$mActivityWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/WebViewOauth;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->this$0:Lcom/xiaomi/account/auth/WebViewOauth;

    iput-object p2, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$config:Lcom/xiaomi/account/auth/OAuthConfig;

    iput-object p3, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$future:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    iput-object p4, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->this$0:Lcom/xiaomi/account/auth/WebViewOauth;

    iget-object v1, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$config:Lcom/xiaomi/account/auth/OAuthConfig;

    invoke-static {v0, v1}, Lcom/xiaomi/account/auth/WebViewOauth;->access$000(Lcom/xiaomi/account/auth/WebViewOauth;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$future:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/openauth/XMAuthericationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$future:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    new-instance v1, Landroid/accounts/AuthenticatorException;

    const-string v2, "activity has been finished"

    invoke-direct {v1, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->this$0:Lcom/xiaomi/account/auth/WebViewOauth;

    iget-object v2, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$config:Lcom/xiaomi/account/auth/OAuthConfig;

    new-instance v3, Lcom/xiaomi/account/auth/WebViewOauth$2$1;

    invoke-direct {v3, p0}, Lcom/xiaomi/account/auth/WebViewOauth$2$1;-><init>(Lcom/xiaomi/account/auth/WebViewOauth$2;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/account/auth/WebViewOauth;->access$100(Lcom/xiaomi/account/auth/WebViewOauth;Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$future:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$future:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
