.class public final Lcom/huawei/hms/scankit/p/Kc;
.super Lcom/huawei/hms/scankit/p/Qc;
.source "HaLog60001.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/Kc$b;,
        Lcom/huawei/hms/scankit/p/Kc$a;
    }
.end annotation


# instance fields
.field private volatile h:Ljava/lang/String;

.field private volatile i:Ljava/lang/String;

.field private j:Z

.field private volatile k:J

.field private l:Lcom/huawei/hms/scankit/p/Kc$b;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/scankit/p/Qc;-><init>(Landroid/os/Bundle;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Kc;->j:Z

    .line 3
    new-instance p1, Lcom/huawei/hms/scankit/p/Kc$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/huawei/hms/scankit/p/Kc$b;-><init>(Lcom/huawei/hms/scankit/p/Kc;Lcom/huawei/hms/scankit/p/Ic;)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc;->l:Lcom/huawei/hms/scankit/p/Kc$b;

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    const-string v0, "apiName"

    invoke-virtual {p1, v0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "PhotoMode"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Kc;->j:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZI)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 12

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Kc;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "yyyyMMddHHmmss.SSS"

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    new-instance v0, Lcom/huawei/hms/scankit/p/Kc$a;

    new-instance v2, Lcom/huawei/hms/scankit/p/Ic;

    invoke-direct {v2, p0, v1}, Lcom/huawei/hms/scankit/p/Ic;-><init>(Lcom/huawei/hms/scankit/p/Kc;Ljava/lang/String;)V

    .line 5
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/p/Kc$a;-><init>(JLjava/lang/String;Ljava/lang/String;ZIILcom/huawei/hms/scankit/p/Ic;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    new-instance v11, Lcom/huawei/hms/scankit/p/Kc$a;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Kc;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Kc;->i:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-wide v1, v9

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/p/Kc$a;-><init>(JLjava/lang/String;Ljava/lang/String;ZIILcom/huawei/hms/scankit/p/Ic;)V

    return-object v11

    .line 8
    :cond_0
    :try_start_2
    iget-wide v2, p0, Lcom/huawei/hms/scankit/p/Kc;->k:J

    sub-long v2, v9, v2

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 9
    new-instance v0, Lcom/huawei/hms/scankit/p/Jc;

    invoke-direct {v0, p0, v1}, Lcom/huawei/hms/scankit/p/Jc;-><init>(Lcom/huawei/hms/scankit/p/Kc;Ljava/lang/String;)V

    .line 10
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-wide v2, p0, Lcom/huawei/hms/scankit/p/Kc;->k:J

    sub-long v2, v9, v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 13
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Kc;->h:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/huawei/hms/scankit/p/Kc;->i:Ljava/lang/String;

    .line 15
    iput-wide v9, p0, Lcom/huawei/hms/scankit/p/Kc;->k:J

    .line 16
    :cond_1
    new-instance v0, Lcom/huawei/hms/scankit/p/Kc$a;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Kc;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Kc;->i:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/p/Kc$a;-><init>(JLjava/lang/String;Ljava/lang/String;ZIILcom/huawei/hms/scankit/p/Ic;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    new-instance v11, Lcom/huawei/hms/scankit/p/Kc$a;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Kc;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Kc;->i:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-wide v1, v9

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/p/Kc$a;-><init>(JLjava/lang/String;Ljava/lang/String;ZIILcom/huawei/hms/scankit/p/Ic;)V

    return-object v11

    :catch_0
    const-string v0, "HaLog6001"

    const-string v1, "exception happens"

    .line 18
    :try_start_3
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    new-instance v11, Lcom/huawei/hms/scankit/p/Kc$a;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Kc;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Kc;->i:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-wide v1, v9

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/p/Kc$a;-><init>(JLjava/lang/String;Ljava/lang/String;ZIILcom/huawei/hms/scankit/p/Ic;)V

    return-object v11

    :catchall_0
    new-instance v11, Lcom/huawei/hms/scankit/p/Kc$a;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Kc;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Kc;->i:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-wide v1, v9

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/p/Kc$a;-><init>(JLjava/lang/String;Ljava/lang/String;ZIILcom/huawei/hms/scankit/p/Ic;)V

    return-object v11
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    const-string v1, "algapi"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a([Lcom/huawei/hms/ml/scan/HmsScan;Lcom/huawei/hms/scankit/p/Kc$a;)V
    .locals 7

    const-string v0, "HaLog60001"

    .line 20
    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/Qc;->a:Ljava/lang/String;

    .line 21
    sget-object v2, Lcom/huawei/hms/scankit/p/Qc;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Qc;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 23
    array-length v4, p1

    if-lez v4, :cond_1

    .line 24
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p1, v3

    .line 25
    iget v2, v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/Qc;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    iget v1, v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanTypeForm:I

    invoke-static {v1}, Lcom/huawei/hms/scankit/p/Qc;->b(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Kc;->l:Lcom/huawei/hms/scankit/p/Kc$b;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Lcom/huawei/hms/scankit/p/Kc$a;->a(Lcom/huawei/hms/scankit/p/Kc$a;J)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object v4

    .line 29
    invoke-static {v4, v3}, Lcom/huawei/hms/scankit/p/Kc$a;->a(Lcom/huawei/hms/scankit/p/Kc$a;Z)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object v3

    .line 30
    invoke-static {v3, v1}, Lcom/huawei/hms/scankit/p/Kc$a;->a(Lcom/huawei/hms/scankit/p/Kc$a;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object v1

    .line 31
    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/p/Kc$a;->b(Lcom/huawei/hms/scankit/p/Kc$a;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object v1

    .line 32
    invoke-static {p1, v1}, Lcom/huawei/hms/scankit/p/Kc$b;->a(Lcom/huawei/hms/scankit/p/Kc$b;Lcom/huawei/hms/scankit/p/Kc$a;)V

    .line 33
    invoke-static {p2}, Lcom/huawei/hms/scankit/p/Kc$a;->j(Lcom/huawei/hms/scankit/p/Kc$a;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/Kc;->k:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "logEnd Exception"

    .line 34
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string p1, "nullPoint"

    .line 35
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
