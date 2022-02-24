.class Lcom/sina/weibo/sdk/api/c/i;
.super Ljava/lang/Object;
.source "WeiboShareAPIImpl.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/c/d;


# static fields
.field private static final g:Ljava/lang/String; = "com.sina.weibo.sdk.api.c.i"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lb/b/a/a/b$a;

.field private d:Z

.field private e:Lcom/sina/weibo/sdk/api/c/c;

.field private f:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sina/weibo/sdk/api/c/i;->c:Lb/b/a/a/b$a;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/sina/weibo/sdk/api/c/i;->d:Z

    .line 4
    iput-object v0, p0, Lcom/sina/weibo/sdk/api/c/i;->f:Landroid/app/Dialog;

    .line 5
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/c/i;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/sina/weibo/sdk/api/c/i;->b:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lcom/sina/weibo/sdk/api/c/i;->d:Z

    .line 8
    invoke-static {p1}, Lb/b/a/a/b;->a(Landroid/content/Context;)Lb/b/a/a/b;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/a/a/b;->a()Lb/b/a/a/b$a;

    move-result-object p3

    iput-object p3, p0, Lcom/sina/weibo/sdk/api/c/i;->c:Lb/b/a/a/b$a;

    if-eqz p3, :cond_0

    .line 9
    sget-object v0, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lb/b/a/a/b$a;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object p3, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    const-string v0, "WeiboInfo is null"

    invoke-static {p3, v0}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/AidTask;->g(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/AidTask;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sina/weibo/sdk/utils/AidTask;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "_weibo_sdkVersion"

    const-string v2, "0031405000"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "_weibo_appPackage"

    .line 51
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "_weibo_appKey"

    .line 52
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "_weibo_flag"

    const v1, 0x20130329

    .line 53
    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/utils/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_weibo_sign"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 56
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p5, :cond_1

    .line 57
    invoke-virtual {v0, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    :cond_1
    sget-object p2, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "intent="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", extra="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 32
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_weibo_sdkVersion"

    const-string v2, "0031405000"

    .line 35
    invoke-virtual {v1, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "_weibo_appPackage"

    .line 36
    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "_weibo_appKey"

    .line 37
    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x20130329

    const-string p4, "_weibo_flag"

    .line 38
    invoke-virtual {v1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/utils/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_weibo_sign"

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_weibo_transaction"

    .line 41
    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, p1, p2, p6}, Lcom/sina/weibo/sdk/api/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 43
    invoke-virtual {v1, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    :cond_1
    :try_start_0
    sget-object p2, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "launchWeiboActivity intent="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", extra="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x2fd

    .line 45
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 46
    sget-object p2, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 47
    :cond_2
    :goto_0
    sget-object p1, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    const-string p2, "launchWeiboActivity fail, invalid arguments"

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private a(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboShareException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/c/i;->c()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/sina/weibo/sdk/api/c/i;->f:Landroid/app/Dialog;

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/sina/weibo/sdk/api/c/i;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/i;->e:Lcom/sina/weibo/sdk/api/c/c;

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/api/c/h;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/api/c/c;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/api/c/i;->f:Landroid/app/Dialog;

    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/sina/weibo/sdk/api/c/i;->f:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 23
    :cond_2
    new-instance p1, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v0, "Weibo is not installed!"

    invoke-direct {p1, v0}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/c/i;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/sina/weibo/sdk/api/c/i;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/i;->c:Lb/b/a/a/b$a;

    invoke-virtual {v0}, Lb/b/a/a/b$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lb/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 26
    :cond_4
    new-instance p1, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v0, "Weibo signature is incorrect!"

    invoke-direct {p1, v0}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_5
    new-instance p1, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v0, "Weibo do not support share api!"

    invoke-direct {p1, v0}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "other_app_action_start_time"

    .line 61
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :try_start_0
    invoke-static {p1, p3, v0}, Lcom/sina/weibo/sdk/statistic/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/c/i;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/c/i;->b:Ljava/lang/String;

    const-string v2, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/c/b;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    const-string p2, "sendRequest faild request is null"

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/sina/weibo/sdk/api/c/i;->d:Z

    invoke-direct {p0, v1}, Lcom/sina/weibo/sdk/api/c/i;->a(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/c/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/c/i;->c:Lb/b/a/a/b$a;

    new-instance v3, Lcom/sina/weibo/sdk/api/c/g;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/c/g;-><init>()V

    invoke-virtual {p2, v1, v2, v3}, Lcom/sina/weibo/sdk/api/c/b;->a(Landroid/content/Context;Lb/b/a/a/b$a;Lcom/sina/weibo/sdk/api/c/g;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    sget-object p1, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    const-string p2, "sendRequest faild request check faild"

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/c/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/c/i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lb/b/a/a/d/g;->b(Landroid/content/Context;Ljava/lang/String;)Lb/b/a/a/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/a/d/g;->a()V

    .line 7
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {p2, v7}, Lcom/sina/weibo/sdk/api/c/b;->a(Landroid/os/Bundle;)V

    .line 9
    instance-of v1, p2, Lcom/sina/weibo/sdk/api/c/f;

    if-eqz v1, :cond_3

    .line 10
    :try_start_1
    check-cast p2, Lcom/sina/weibo/sdk/api/c/f;

    .line 11
    iget-object v1, p2, Lcom/sina/weibo/sdk/api/c/f;->b:Lcom/sina/weibo/sdk/api/b;

    if-eqz v1, :cond_3

    .line 12
    iget-object p2, p2, Lcom/sina/weibo/sdk/api/c/f;->b:Lcom/sina/weibo/sdk/api/b;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/api/b;->b()I

    move-result p2

    if-eqz p2, :cond_3

    const-string v1, "_weibo_message_type"

    .line 13
    invoke-virtual {v7, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    .line 15
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/api/c/i;->c:Lb/b/a/a/b$a;

    invoke-virtual {p2}, Lb/b/a/a/b$a;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sina/weibo/sdk/api/c/i;->b:Ljava/lang/String;

    const-string v4, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    const-string v8, "share"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sina/weibo/sdk/api/c/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_1
    move-exception p1

    .line 16
    sget-object p2, Lcom/sina/weibo/sdk/api/c/i;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/i;->c:Lb/b/a/a/b$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/b/a/a/b$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/i;->c:Lb/b/a/a/b$a;

    invoke-virtual {v0}, Lb/b/a/a/b$a;->b()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/i;->c:Lb/b/a/a/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/a/a/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/c/i;->b()I

    move-result v0

    const/16 v1, 0x286e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
