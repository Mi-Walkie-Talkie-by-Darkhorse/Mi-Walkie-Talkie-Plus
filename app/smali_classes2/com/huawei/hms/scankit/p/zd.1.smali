.class public final Lcom/huawei/hms/scankit/p/zd;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/huawei/hms/scankit/p/qd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Ed;Lcom/huawei/hms/scankit/p/Kd;III)Lcom/huawei/hms/scankit/p/bb;
    .locals 11

    .line 23
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Kd;->e()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Kd;->d()I

    move-result v1

    .line 25
    new-instance v2, Lcom/huawei/hms/scankit/p/je;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Kd;->g()I

    move-result v3

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Kd;->f()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/huawei/hms/scankit/p/je;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_9

    .line 26
    iget v6, p1, Lcom/huawei/hms/scankit/p/Kd;->g:I

    rem-int v6, v4, v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 27
    :goto_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Kd;->g()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 28
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v2, v8, v5, v9}, Lcom/huawei/hms/scankit/p/je;->a(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v6, v0, :cond_6

    .line 29
    iget v9, p1, Lcom/huawei/hms/scankit/p/Kd;->f:I

    rem-int v9, v6, v9

    if-nez v9, :cond_3

    .line 30
    invoke-virtual {v2, v8, v5, v7}, Lcom/huawei/hms/scankit/p/je;->a(IIZ)V

    add-int/lit8 v8, v8, 0x1

    .line 31
    :cond_3
    invoke-virtual {p0, v6, v4}, Lcom/huawei/hms/scankit/p/Ed;->a(II)Z

    move-result v9

    invoke-virtual {v2, v8, v5, v9}, Lcom/huawei/hms/scankit/p/je;->a(IIZ)V

    add-int/2addr v8, v7

    .line 32
    iget v9, p1, Lcom/huawei/hms/scankit/p/Kd;->f:I

    rem-int v10, v6, v9

    sub-int/2addr v9, v7

    if-ne v10, v9, :cond_5

    .line 33
    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v2, v8, v5, v9}, Lcom/huawei/hms/scankit/p/je;->a(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 34
    iget v6, p1, Lcom/huawei/hms/scankit/p/Kd;->g:I

    rem-int v8, v4, v6

    sub-int/2addr v6, v7

    if-ne v8, v6, :cond_8

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 35
    :goto_5
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Kd;->g()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 36
    invoke-virtual {v2, v8, v5, v7}, Lcom/huawei/hms/scankit/p/je;->a(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_9
    invoke-static {v2, p2, p3, p4}, Lcom/huawei/hms/scankit/p/zd;->a(Lcom/huawei/hms/scankit/p/je;III)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/je;III)Lcom/huawei/hms/scankit/p/bb;
    .locals 9

    .line 38
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/je;->c()I

    move-result v0

    .line 39
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/je;->b()I

    move-result v1

    mul-int/lit8 p3, p3, 0x2

    add-int v2, v0, p3

    add-int/2addr p3, v1

    .line 40
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 41
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 42
    div-int v2, v3, v2

    div-int p3, v4, p3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int v2, v0, p3

    sub-int/2addr v3, v2

    .line 43
    div-int/lit8 v3, v3, 0x2

    mul-int v2, v1, p3

    sub-int/2addr v4, v2

    .line 44
    div-int/lit8 v4, v4, 0x2

    const/4 v2, 0x0

    if-lt p2, v1, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v5, Lcom/huawei/hms/scankit/p/bb;

    invoke-direct {v5, p1, p2}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    new-instance v5, Lcom/huawei/hms/scankit/p/bb;

    invoke-direct {v5, v0, v1}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 47
    :goto_1
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/bb;->a()V

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v1, :cond_4

    move v6, v3

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v0, :cond_3

    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/scankit/p/je;->a(II)B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 49
    invoke-virtual {v5, v6, v4, p3, p3}, Lcom/huawei/hms/scankit/p/bb;->a(IIII)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v6, p3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/2addr v4, p3

    goto :goto_2

    :cond_4
    return-object v5
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/p/ke;",
            "*>;)",
            "Lcom/huawei/hms/scankit/p/bb;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    if-ne p2, v0, :cond_6

    if-ltz p3, :cond_5

    if-ltz p4, :cond_5

    .line 3
    sget-object p2, Lcom/huawei/hms/scankit/p/Ld;->b:Lcom/huawei/hms/scankit/p/Ld;

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p5, :cond_4

    .line 4
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->c:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/Ld;

    if-eqz v2, :cond_0

    move-object p2, v2

    .line 5
    :cond_0
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->d:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/nd;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 6
    :goto_0
    sget-object v3, Lcom/huawei/hms/scankit/p/ke;->e:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/nd;

    if-eqz v3, :cond_2

    move-object v1, v3

    .line 7
    :cond_2
    sget-object v3, Lcom/huawei/hms/scankit/p/ke;->f:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    :try_start_0
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    throw p1

    :cond_3
    :goto_1
    move-object p5, v1

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object p5, v1

    .line 10
    :goto_2
    invoke-static {p1, p2, v1, p5}, Lcom/huawei/hms/scankit/p/Jd;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/Ld;Lcom/huawei/hms/scankit/p/nd;Lcom/huawei/hms/scankit/p/nd;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, p2, v1, p5, v3}, Lcom/huawei/hms/scankit/p/Kd;->a(ILcom/huawei/hms/scankit/p/Ld;Lcom/huawei/hms/scankit/p/nd;Lcom/huawei/hms/scankit/p/nd;Z)Lcom/huawei/hms/scankit/p/Kd;

    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/Id;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/Kd;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p5, Lcom/huawei/hms/scankit/p/Ed;

    .line 14
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Kd;->e()I

    move-result v1

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Kd;->d()I

    move-result v2

    invoke-direct {p5, p1, v1, v2}, Lcom/huawei/hms/scankit/p/Ed;-><init>(Ljava/lang/CharSequence;II)V

    .line 15
    invoke-virtual {p5}, Lcom/huawei/hms/scankit/p/Ed;->a()V

    .line 16
    invoke-static {p5, p2, p3, p4, v0}, Lcom/huawei/hms/scankit/p/zd;->a(Lcom/huawei/hms/scankit/p/Ed;Lcom/huawei/hms/scankit/p/Kd;III)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p5, "Requested dimensions can\'t be negative: "

    :try_start_2
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 18
    throw p1

    .line 19
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string p4, "Can only encode DATA_MATRIX, but got "

    :try_start_4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 20
    throw p1

    .line 21
    :cond_7
    :try_start_5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string p2, "Found empty contents"

    :try_start_6
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p1

    .line 22
    throw p1
.end method
