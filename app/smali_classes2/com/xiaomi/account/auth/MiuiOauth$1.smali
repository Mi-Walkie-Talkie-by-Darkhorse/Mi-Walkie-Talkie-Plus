.class Lcom/xiaomi/account/auth/MiuiOauth$1;
.super Ljava/lang/Object;
.source "MiuiOauth.java"

# interfaces
.implements Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/auth/MiuiOauth;->getCodeOrAccessToken(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
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
.field final synthetic this$0:Lcom/xiaomi/account/auth/MiuiOauth;

.field final synthetic val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/MiuiOauth;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth$1;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    iput-object p2, p0, Lcom/xiaomi/account/auth/MiuiOauth$1;->val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$1;->val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$1;->val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/xiaomi/account/auth/MiuiOauth$1;->getResult()Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/account/auth/MiuiOauth$1;->getResult(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0
.end method
