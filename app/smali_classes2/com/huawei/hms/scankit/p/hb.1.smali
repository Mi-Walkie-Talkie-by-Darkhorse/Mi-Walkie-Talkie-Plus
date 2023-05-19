.class public final Lcom/huawei/hms/scankit/p/hb;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/huawei/hms/scankit/aiscan/common/t;


# static fields
.field private static final a:[Lcom/huawei/hms/scankit/aiscan/common/z;


# instance fields
.field private final b:Lcom/huawei/hms/scankit/p/kb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 1
    sput-object v0, Lcom/huawei/hms/scankit/p/hb;->a:[Lcom/huawei/hms/scankit/aiscan/common/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/p/kb;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/kb;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/hb;->b:Lcom/huawei/hms/scankit/p/kb;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/lb;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->b()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/lb;-><init>(Lcom/huawei/hms/scankit/p/bb;)V

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/lb;->a()Lcom/huawei/hms/scankit/aiscan/common/g;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/hb;->b:Lcom/huawei/hms/scankit/p/kb;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->a()Lcom/huawei/hms/scankit/p/bb;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/huawei/hms/scankit/p/kb;->a(Lcom/huawei/hms/scankit/p/bb;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p2
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/e;->c()[B

    move-result-object p2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    return-object v0

    :catch_0
    move-exception p2

    .line 5
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 8
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v4, v2

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v8, v0

    .line 13
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 14
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v8, v0

    .line 15
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 16
    iget-object v4, p0, Lcom/huawei/hms/scankit/p/hb;->b:Lcom/huawei/hms/scankit/p/kb;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/kb;->a()Lcom/huawei/hms/scankit/p/nb;

    move-result-object v4

    if-eqz v4, :cond_0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 17
    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p1, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    return-object p2

    .line 18
    :cond_0
    throw p2

    .line 19
    :cond_1
    throw p2
.end method
