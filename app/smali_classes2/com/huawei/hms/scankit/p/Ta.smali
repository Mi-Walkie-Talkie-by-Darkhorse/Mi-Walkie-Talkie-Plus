.class public Lcom/huawei/hms/scankit/p/Ta;
.super Ljava/util/TimerTask;
.source "HianalyticsOnReportTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hms/scankit/p/Ra;->a:Lcom/huawei/hms/scankit/p/Ra;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ra;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "HaLogOnReport"

    const-string v1, "Failed to report hianalytics data"

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/Qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
