.class public Lcom/umeng/analytics/pro/n$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    const/4 v1, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->b:I

    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->c:I

    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->d:I

    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->e:I

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-void
.end method

.method private b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 3

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->setReportInterval(J)V

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;-><init>()V

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->setReportInterval(J)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    if-eqz p2, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    if-eqz p2, :cond_a

    goto :goto_0

    :cond_a
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_c

    goto :goto_0

    :cond_c
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto :goto_0

    :cond_d
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    if-eqz p2, :cond_e

    goto :goto_0

    :cond_e
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(I)I
    .locals 3

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1

    const v1, 0x15180

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method public a()V
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/umeng/analytics/pro/n$c;->a(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->b:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/umeng/analytics/pro/n$c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(II)[I
    .locals 7

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "-1"

    const-string v2, "report_policy"

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v2

    const-string v3, "report_interval"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v2, :cond_7

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x6

    if-ne v6, v0, :cond_3

    const/16 p1, 0x5a

    if-eq v1, v2, :cond_1

    if-lt v1, p1, :cond_1

    const p2, 0x15180

    if-le v1, p2, :cond_2

    :cond_1
    const/16 v1, 0x5a

    :cond_2
    new-array p1, v5, [I

    aput v0, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p1, v3

    return-object p1

    :cond_3
    const/16 v6, 0xb

    if-ne v6, v0, :cond_6

    const/16 p1, 0xf

    if-eq v1, v2, :cond_4

    if-lt v1, p1, :cond_4

    const/16 p2, 0xe10

    if-le v1, p2, :cond_5

    :cond_4
    const/16 v1, 0xf

    :cond_5
    new-array p1, v5, [I

    aput v0, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p1, v3

    return-object p1

    :cond_6
    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v3

    return-object v0

    :cond_7
    :goto_0
    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v3

    return-object v0
.end method

.method protected b()V
    .locals 11

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v6, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_5

    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "-1"

    const-string v6, "integrated_test"

    invoke-static {v0, v6, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    sget-boolean v6, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-nez v6, :cond_4

    sget-object v6, Lcom/umeng/analytics/pro/i;->K:Ljava/lang/String;

    const-string v7, "\\|"

    invoke-static {v6, v2, v7, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    sget-boolean v6, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "RPT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_9

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    const-string v7, "test_report_interval"

    invoke-static {v0, v7, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    const v0, 0x15f90

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n$c;->a(I)I

    move-result v0

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/umeng/analytics/pro/n$c;->c:I

    if-lez v0, :cond_8

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/umeng/analytics/pro/n$c;->e:I

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/n$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_5

    :cond_a
    iget v0, p0, Lcom/umeng/analytics/pro/n$c;->d:I

    iget v1, p0, Lcom/umeng/analytics/pro/n$c;->e:I

    iget v7, p0, Lcom/umeng/analytics/pro/n$c;->b:I

    if-eq v7, v6, :cond_b

    iget v1, p0, Lcom/umeng/analytics/pro/n$c;->c:I

    move v0, v7

    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/n$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    :goto_5
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_c

    :try_start_1
    sget-object v0, Lcom/umeng/analytics/pro/i;->I:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "@"

    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_d

    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->getReportInterval()J

    move-result-wide v9

    div-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v4

    sget-object v0, Lcom/umeng/analytics/pro/i;->J:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/umeng/analytics/pro/i;->L:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->getReportInterval()J

    move-result-wide v9

    div-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v4

    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/i;->M:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_10
    :goto_6
    return-void
.end method

.method public c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n$c;->b()V

    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object v0
.end method
