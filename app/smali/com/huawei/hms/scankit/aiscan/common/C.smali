.class public Lcom/huawei/hms/scankit/aiscan/common/C;
.super Ljava/lang/Object;
.source "ToneMapping.java"


# static fields
.field private static a:F = 2.51f

.field private static b:F = 0.03f

.field private static c:F = 2.43f

.field private static d:F = 0.59f

.field private static e:F = 0.14f

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/C;->f:Ljava/util/HashMap;

    return-void
.end method

.method private static a(IF)I
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/C;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float v0, p0

    div-float/2addr v0, p1

    .line 2
    sget v1, Lcom/huawei/hms/scankit/aiscan/common/C;->a:F

    mul-float v1, v1, v0

    sget v2, Lcom/huawei/hms/scankit/aiscan/common/C;->b:F

    add-float/2addr v1, v2

    mul-float v1, v1, v0

    mul-float p1, p1, v1

    sget v1, Lcom/huawei/hms/scankit/aiscan/common/C;->c:F

    mul-float v1, v1, v0

    sget v2, Lcom/huawei/hms/scankit/aiscan/common/C;->d:F

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    sget v1, Lcom/huawei/hms/scankit/aiscan/common/C;->e:F

    add-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 3
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/C;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1

    .line 4
    :cond_0
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/C;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/huawei/hms/scankit/aiscan/common/m;)Lcom/huawei/hms/scankit/aiscan/common/m;
    .locals 11

    .line 5
    invoke-static {p0}, Lcom/huawei/hms/scankit/aiscan/common/C;->b(Lcom/huawei/hms/scankit/aiscan/common/m;)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v7

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v8

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object p0

    mul-int v1, v8, v7

    .line 9
    new-array v2, v1, [B

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xff

    if-ge v3, v8, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_0

    mul-int v6, v3, v7

    add-int/2addr v6, v5

    .line 10
    aget-byte v9, p0, v6

    and-int/2addr v9, v4

    int-to-float v10, v0

    .line 11
    invoke-static {v9, v10}, Lcom/huawei/hms/scankit/aiscan/common/C;->a(IF)I

    move-result v9

    and-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object p0, Lcom/huawei/hms/scankit/aiscan/common/C;->f:Ljava/util/HashMap;

    .line 13
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/r;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v9}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    return-object p0
.end method

.method private static b(Lcom/huawei/hms/scankit/aiscan/common/m;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result p0

    .line 4
    div-int/lit8 v4, p0, 0x4

    :goto_0
    mul-int/lit8 v5, p0, 0x3

    div-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_2

    .line 5
    div-int/lit8 v5, v3, 0x4

    :goto_1
    mul-int/lit8 v6, v3, 0x3

    div-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_1

    mul-int v6, v4, v3

    add-int/2addr v6, v5

    .line 6
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    array-length p0, v0

    int-to-long v3, p0

    div-long/2addr v1, v3

    const-wide/16 v3, 0x4

    mul-long v1, v1, v3

    long-to-int p0, v1

    return p0
.end method
