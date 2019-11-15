.class Lcom/xiaomi/account/auth/MiuiOauth$2;
.super Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;
.source "MiuiOauth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/auth/MiuiOauth;->getOauth(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/auth/MiuiOauth;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    iput-object p3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method doWork(Lcom/xiaomi/account/auth/XiaomiAuthService;Lcom/xiaomi/account/IXiaomiAuthResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    const-string v1, "extra_client_id"

    iget-object v2, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v2}, Lcom/xiaomi/account/auth/MiuiOauth;->access$000(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    const-string v1, "extra_redirect_uri"

    iget-object v2, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v2}, Lcom/xiaomi/account/auth/MiuiOauth;->access$100(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/account/auth/MiuiOauth;->access$200(Lcom/xiaomi/account/auth/MiuiOauth;Lcom/xiaomi/account/IXiaomiAuthService;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/xiaomi/account/auth/XiaomiAuthService;->supportResponseWay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/16 v2, 0x43

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/xiaomi/account/auth/XiaomiAuthService;->getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v0}, Lcom/xiaomi/account/auth/MiuiOauth;->access$300(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/xiaomi/account/auth/MiuiOauth;->access$400(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v0}, Lcom/xiaomi/account/auth/MiuiOauth;->access$300(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/accounts/Account;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v1, "Xiaomi Account not Login"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/account/auth/XiaomiAuthService;->getMiCloudAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/xiaomi/account/IXiaomiAuthResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0
.end method
