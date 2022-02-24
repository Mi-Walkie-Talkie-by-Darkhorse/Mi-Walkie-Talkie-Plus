.class public Lcom/sina/weibo/sdk/statistic/g;
.super Ljava/lang/Object;
.source "WBAgent.java"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WBAgent"

    if-nez p0, :cond_0

    const-string p0, "unexpected null page or activity in onEvent"

    .line 1
    invoke-static {v0, p0}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "unexpected null eventId in onEvent"

    .line 2
    invoke-static {v0, p0}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_2
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/i;->a()Lcom/sina/weibo/sdk/statistic/i;

    move-result-object v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sina/weibo/sdk/statistic/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
