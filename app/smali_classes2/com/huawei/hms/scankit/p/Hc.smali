.class public final Lcom/huawei/hms/scankit/p/Hc;
.super Lcom/huawei/hms/scankit/p/Qc;
.source "HaLog60000.java"


# instance fields
.field private h:I

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/scankit/p/Qc;-><init>(Landroid/os/Bundle;Landroid/content/Context;)V

    const/16 p1, -0x3e9

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/p/Hc;->h:I

    .line 3
    sget-object p1, Lcom/huawei/hms/scankit/p/Qc;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Hc;->i:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/huawei/hms/scankit/p/Qc;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Hc;->j:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/huawei/hms/scankit/p/Fc;

    const-string v1, "yyyyMMddHHmmss.SSS"

    invoke-direct {v0, p0, v1}, Lcom/huawei/hms/scankit/p/Fc;-><init>(Lcom/huawei/hms/scankit/p/Hc;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callTime"

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transId"

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    const-string v0, "apiName"

    invoke-virtual {p1, v0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private f()V
    .locals 1

    const/16 v0, -0x3e9

    .line 1
    iput v0, p0, Lcom/huawei/hms/scankit/p/Hc;->h:I

    .line 2
    sget-object v0, Lcom/huawei/hms/scankit/p/Qc;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Hc;->i:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/huawei/hms/scankit/p/Qc;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Hc;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    iput v0, p0, Lcom/huawei/hms/scankit/p/Hc;->h:I

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    iget v3, v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    invoke-static {v3}, Lcom/huawei/hms/scankit/p/Qc;->a(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hms/scankit/p/Hc;->i:Ljava/lang/String;

    .line 4
    iget v2, v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanTypeForm:I

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/Qc;->b(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hms/scankit/p/Hc;->j:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/Qc;->g:J

    return-void
.end method

.method public c()V
    .locals 7

    const-string v0, "HaLog60000"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Qc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/Gc;

    invoke-direct {v1, p0}, Lcom/huawei/hms/scankit/p/Gc;-><init>(Lcom/huawei/hms/scankit/p/Hc;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "result"

    .line 3
    :try_start_1
    iget v3, p0, Lcom/huawei/hms/scankit/p/Hc;->h:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "costTime"

    .line 4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/huawei/hms/scankit/p/Qc;->g:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "scanType"

    .line 5
    :try_start_3
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Hc;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "sceneType"

    .line 6
    :try_start_4
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Hc;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/huawei/hms/scankit/p/Tc;->a()Lcom/huawei/hms/scankit/p/Tc;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v3, "60000"

    :try_start_5
    invoke-virtual {v2, v3, v1}, Lcom/huawei/hms/scankit/p/Tc;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 8
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Hc;->f()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "logEnd Exception"

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string v1, "nullPoint"

    .line 10
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/huawei/hms/scankit/p/Hc;->h:I

    return-void
.end method
