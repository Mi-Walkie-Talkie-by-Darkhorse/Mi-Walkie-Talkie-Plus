.class Lcom/xiaomi/account/auth/WebViewOauth$2$1;
.super Lcom/xiaomi/account/IXiaomiAuthResponse$Stub;
.source "WebViewOauth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/auth/WebViewOauth$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/account/auth/WebViewOauth$2;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/WebViewOauth$2;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/auth/WebViewOauth$2$1;->this$1:Lcom/xiaomi/account/auth/WebViewOauth$2;

    invoke-direct {p0}, Lcom/xiaomi/account/IXiaomiAuthResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/WebViewOauth$2$1;->this$1:Lcom/xiaomi/account/auth/WebViewOauth$2;

    iget-object v0, v0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$future:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    new-instance v1, Landroid/accounts/OperationCanceledException;

    invoke-direct {v1}, Landroid/accounts/OperationCanceledException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/WebViewOauth$2$1;->this$1:Lcom/xiaomi/account/auth/WebViewOauth$2;

    iget-object v0, v0, Lcom/xiaomi/account/auth/WebViewOauth$2;->val$future:Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-static {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->set(Ljava/lang/Object;)V

    return-void
.end method
