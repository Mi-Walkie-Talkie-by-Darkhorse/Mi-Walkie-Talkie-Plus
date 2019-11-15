.class public Lcom/xiaomi/mistatistic/sdk/WebViewLoadingStats;
.super Ljava/lang/Object;
.source "WebViewLoadingStats.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v4, v0, v2

    cmp-long v6, v2, v8

    if-lez v6, :cond_0

    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    :cond_0
    const-string v4, ""

    const-string v5, "web_view_page_loading record time is invalid, record startTime is : %d,record end time is : %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-static {v4, v5, v6}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "web_view_page_loading_time"

    const-string v1, ""

    const-string v2, "web_view_page_loading time is:%d, url is:%s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v7

    aput-object p0, v3, v10

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
