.class public Lcom/sina/weibo/sdk/api/share/f;
.super Lcom/sina/weibo/sdk/api/share/b;
.source "SendMultiMessageToWeiboRequest.java"


# instance fields
.field public b:Lcom/sina/weibo/sdk/api/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/b;-><init>()V

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

    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/b;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/f;->b:Lcom/sina/weibo/sdk/api/b;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method final a(Landroid/content/Context;Lcom/sina/weibo/sdk/b$a;Lcom/sina/weibo/sdk/api/share/g;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/f;->b:Lcom/sina/weibo/sdk/api/b;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/f;->b:Lcom/sina/weibo/sdk/api/b;

    invoke-virtual {p3, p1, p2, v1}, Lcom/sina/weibo/sdk/api/share/g;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b$a;Lcom/sina/weibo/sdk/api/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/f;->b:Lcom/sina/weibo/sdk/api/b;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/b;->a()Z

    move-result v0

    goto :goto_0
.end method
