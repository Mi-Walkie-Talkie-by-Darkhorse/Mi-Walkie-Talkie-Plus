.class public Lcom/xiaomi/push/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/clientreport/processor/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/br;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/xiaomi/clientreport/processor/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/br;->a:Lcom/xiaomi/clientreport/processor/c;

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Lcom/xiaomi/clientreport/processor/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/clientreport/processor/c;->a()V

    :cond_0
    const-string v0, "begin read and send perf / event"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Lcom/xiaomi/clientreport/processor/c;

    instance-of v1, v0, Lcom/xiaomi/clientreport/processor/IEventProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "sp_client_report_status"

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bv;->a(Landroid/content/Context;)Lcom/xiaomi/push/bv;

    move-result-object v0

    const-string v1, "event_last_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/xiaomi/push/bv;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    instance-of v0, v0, Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/br;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bv;->a(Landroid/content/Context;)Lcom/xiaomi/push/bv;

    move-result-object v0

    const-string v1, "perf_last_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
