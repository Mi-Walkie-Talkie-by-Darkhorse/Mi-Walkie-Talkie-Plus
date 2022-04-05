.class public Lcom/sina/weibo/sdk/api/c/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/c/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sina/weibo/sdk/api/c/j;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/api/c/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/api/c/d;
    .locals 1

    new-instance p2, Lcom/sina/weibo/sdk/api/c/i;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/sina/weibo/sdk/api/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object p2
.end method
