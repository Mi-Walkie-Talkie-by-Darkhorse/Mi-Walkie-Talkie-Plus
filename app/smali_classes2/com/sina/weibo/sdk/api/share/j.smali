.class public Lcom/sina/weibo/sdk/api/share/j;
.super Ljava/lang/Object;
.source "WeiboShareSDK.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sina/weibo/sdk/api/share/j;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/api/share/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/api/share/d;
    .locals 2

    new-instance v0, Lcom/sina/weibo/sdk/api/share/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sina/weibo/sdk/api/share/i;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method
