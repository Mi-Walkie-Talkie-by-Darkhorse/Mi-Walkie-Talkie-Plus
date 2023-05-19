.class public final Lcom/huawei/hms/scankit/p/rd;
.super Ljava/lang/Object;
.source "AztecWriter.java"

# interfaces
.implements Lcom/huawei/hms/scankit/p/qd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/huawei/hms/scankit/p/sd;III)Lcom/huawei/hms/scankit/p/bb;
    .locals 8

    .line 19
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/sd;->a()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    mul-int/lit8 p3, p3, 0x2

    add-int v2, v0, p3

    add-int/2addr p3, v1

    .line 22
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 24
    div-int v2, p1, v2

    div-int p3, p2, p3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int v2, v0, p3

    sub-int v2, p1, v2

    .line 25
    div-int/lit8 v2, v2, 0x2

    mul-int v3, v1, p3

    sub-int v3, p2, v3

    .line 26
    div-int/lit8 v3, v3, 0x2

    .line 27
    new-instance v4, Lcom/huawei/hms/scankit/p/bb;

    invoke-direct {v4, p1, p2}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    move v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    .line 28
    invoke-virtual {p0, v5, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 29
    invoke-virtual {v4, v6, v3, p3, p3}, Lcom/huawei/hms/scankit/p/bb;->a(IIII)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, p3

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v3, p3

    goto :goto_0

    :cond_2
    return-object v4

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/nio/charset/Charset;III)Lcom/huawei/hms/scankit/p/bb;
    .locals 1

    .line 14
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    if-ne p1, v0, :cond_0

    .line 15
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p5, p6}, Lcom/huawei/hms/scankit/p/ud;->a([BII)Lcom/huawei/hms/scankit/p/sd;

    move-result-object p0

    .line 16
    invoke-static {p0, p2, p3, p7}, Lcom/huawei/hms/scankit/p/rd;->a(Lcom/huawei/hms/scankit/p/sd;III)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "Can only encode AZTEC, but got "

    :try_start_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 18
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;
    .locals 8
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
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p5, :cond_4

    .line 2
    sget-object v4, Lcom/huawei/hms/scankit/p/ke;->b:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 4
    :cond_0
    sget-object v4, Lcom/huawei/hms/scankit/p/ke;->a:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    :try_start_0
    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    throw p1

    .line 7
    :cond_1
    :goto_0
    sget-object v4, Lcom/huawei/hms/scankit/p/ke;->j:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    :try_start_1
    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    throw p1

    .line 10
    :cond_2
    :goto_1
    sget-object v4, Lcom/huawei/hms/scankit/p/ke;->f:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    :try_start_2
    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    goto :goto_3

    :catch_2
    move-exception p1

    .line 12
    throw p1

    :cond_3
    move-object v4, v0

    move v5, v1

    move v6, v2

    goto :goto_2

    :cond_4
    move-object v4, v0

    const/16 v5, 0x21

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x4

    :goto_3
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 13
    invoke-static/range {v0 .. v7}, Lcom/huawei/hms/scankit/p/rd;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/nio/charset/Charset;III)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    return-object p1
.end method
