.class public Lcom/sina/weibo/sdk/statistic/g;
.super Ljava/lang/Object;
.source "WBAgent.java"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, "WBAgent"

    const-string v1, "unexpected null page or activity in onEvent"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "WBAgent"

    const-string v1, "unexpected null eventId in onEvent"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/i;->a()Lcom/sina/weibo/sdk/statistic/i;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sina/weibo/sdk/statistic/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    goto :goto_1
.end method
