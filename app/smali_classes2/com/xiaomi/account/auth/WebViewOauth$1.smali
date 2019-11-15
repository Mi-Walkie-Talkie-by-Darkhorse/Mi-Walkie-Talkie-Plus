.class Lcom/xiaomi/account/auth/WebViewOauth$1;
.super Ljava/lang/Object;
.source "WebViewOauth.java"

# interfaces
.implements Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/auth/WebViewOauth;->fastOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
        "<",
        "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/auth/WebViewOauth;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/WebViewOauth;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/auth/WebViewOauth$1;->this$0:Lcom/xiaomi/account/auth/WebViewOauth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v1, "only miui support fastOAuth"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v1, "only miui support fastOAuth"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/account/auth/WebViewOauth$1;->getResult()Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/account/auth/WebViewOauth$1;->getResult(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0
.end method
