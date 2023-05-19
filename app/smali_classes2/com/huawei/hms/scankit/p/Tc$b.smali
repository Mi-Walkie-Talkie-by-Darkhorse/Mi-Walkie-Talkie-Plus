.class Lcom/huawei/hms/scankit/p/Tc$b;
.super Ljava/util/TimerTask;
.source "HiAnalyticsLogExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Tc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/p/Tc;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/scankit/p/Tc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Tc$b;->a:Lcom/huawei/hms/scankit/p/Tc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/scankit/p/Tc;Lcom/huawei/hms/scankit/p/Sc;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Tc$b;-><init>(Lcom/huawei/hms/scankit/p/Tc;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Tc$b;->a:Lcom/huawei/hms/scankit/p/Tc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/Tc;->a(Lcom/huawei/hms/scankit/p/Tc;Z)Z

    .line 2
    invoke-static {}, Lcom/huawei/hms/scankit/p/sa;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanHiAnalytics"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
