.class Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/LoginActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->j(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->j(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->j(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->startActivities([Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.FROM_LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->finish()V

    goto :goto_0
.end method
