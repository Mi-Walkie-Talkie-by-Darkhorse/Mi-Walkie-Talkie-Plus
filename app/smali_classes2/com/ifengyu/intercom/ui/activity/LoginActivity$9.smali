.class Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;->b:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;->b:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/openauth/XMAuthericationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;->a:Ljava/lang/Exception;

    invoke-static {v1, v0, v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception v0

    :goto_1
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$9;->a:Ljava/lang/Exception;

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
