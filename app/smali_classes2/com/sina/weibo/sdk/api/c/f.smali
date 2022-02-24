.class public Lcom/sina/weibo/sdk/api/c/f;
.super Lcom/sina/weibo/sdk/api/c/b;
.source "SendMultiMessageToWeiboRequest.java"


# instance fields
.field public b:Lcom/sina/weibo/sdk/api/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/c/b;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/f;->b:Lcom/sina/weibo/sdk/api/b;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method final a(Landroid/content/Context;Lb/b/a/a/b$a;Lcom/sina/weibo/sdk/api/c/g;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/f;->b:Lcom/sina/weibo/sdk/api/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lb/b/a/a/b$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/f;->b:Lcom/sina/weibo/sdk/api/b;

    .line 5
    invoke-virtual {p3, p1, p2, v0}, Lcom/sina/weibo/sdk/api/c/g;->a(Landroid/content/Context;Lb/b/a/a/b$a;Lcom/sina/weibo/sdk/api/b;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/sina/weibo/sdk/api/c/f;->b:Lcom/sina/weibo/sdk/api/b;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/api/b;->a()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method
