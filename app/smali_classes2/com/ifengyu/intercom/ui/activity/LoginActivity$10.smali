.class Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/xiaomi/account/openauth/XiaomiOAuthResults;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->a:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->a:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->a:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->a:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-virtual {v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->a:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getErrorCode()I

    move-result v0

    const/16 v1, -0x3ea

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->b(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->a:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "xiaomi_code"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_5

    const-string v0, "LoginActivity"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->b:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->b:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_3

    const v0, 0x7f090262

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->b:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->b(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$10;->b:Ljava/lang/Exception;

    instance-of v0, v0, Landroid/accounts/OperationCanceledException;

    if-eqz v0, :cond_0

    const v0, 0x7f090048

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_5
    const-string v0, "LoginActivity"

    const-string v1, "done and ... get no result :("

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
