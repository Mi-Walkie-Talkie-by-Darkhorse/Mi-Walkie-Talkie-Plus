.class public Lcom/huawei/hms/scankit/aiscan/common/l;
.super Ljava/lang/Object;
.source "ImageReuse.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/huawei/hms/scankit/p/_a;

.field private c:Lcom/huawei/hms/scankit/p/_a;

.field private d:Lcom/huawei/hms/scankit/p/_a;

.field private e:Lcom/huawei/hms/scankit/p/_a;

.field private f:Lcom/huawei/hms/scankit/p/_a;

.field private g:Lcom/huawei/hms/scankit/p/_a;

.field private h:Lcom/huawei/hms/scankit/p/_a;

.field private i:Lcom/huawei/hms/scankit/p/_a;

.field private j:Lcom/huawei/hms/scankit/p/_a;

.field private k:Lcom/huawei/hms/scankit/p/_a;

.field private l:Lcom/huawei/hms/scankit/p/_a;

.field private m:Lcom/huawei/hms/scankit/p/_a;

.field private n:Lcom/huawei/hms/scankit/p/_a;

.field private o:Lcom/huawei/hms/scankit/p/_a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/l;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0x10
        0x10
        0x11
        0x11
        0x12
        0x12
        0x13
        0x14
        0x14
        0x15
        0x15
        0x16
        0x16
        0x17
        0x18
        0x18
        0x19
        0x1a
        0x1a
        0x1b
        0x1c
        0x1c
        0x1d
        0x1e
        0x1e
        0x1f
        0x20
        0x20
        0x21
        0x22
        0x23
        0x23
        0x24
        0x25
        0x26
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5f
        0x60
        0x61
        0x62
        0x64
        0x65
        0x66
        0x67
        0x69
        0x6a
        0x6b
        0x6d
        0x6e
        0x6f
        0x71
        0x72
        0x73
        0x75
        0x76
        0x77
        0x79
        0x7a
        0x7b
        0x7d
        0x7e
        0x80
        0x81
        0x83
        0x84
        0x85
        0x87
        0x88
        0x8a
        0x8b
        0x8d
        0x8e
        0x90
        0x91
        0x93
        0x94
        0x96
        0x97
        0x99
        0x9a
        0x9c
        0x9e
        0x9f
        0xa1
        0xa2
        0xa4
        0xa6
        0xa7
        0xa9
        0xaa
        0xac
        0xae
        0xaf
        0xb1
        0xb3
        0xb4
        0xb6
        0xb8
        0xb9
        0xbb
        0xbd
        0xbf
        0xc0
        0xc2
        0xc4
        0xc6
        0xc7
        0xc9
        0xcb
        0xcd
        0xcf
        0xd0
        0xd2
        0xd4
        0xd6
        0xd8
        0xd9
        0xdb
        0xdd
        0xdf
        0xe1
        0xe3
        0xe5
        0xe7
        0xe9
        0xea
        0xec
        0xee
        0xf0
        0xf2
        0xf4
        0xf6
        0xf8
        0xfa
        0xfc
        0xfe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    array-length v1, v0

    if-lez v1, :cond_1

    .line 15
    array-length v1, v0

    new-array v3, v1, [B

    const/4 v1, 0x0

    .line 16
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 17
    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/l;->a:[I

    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    aget v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/r;

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v4

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v5

    .line 19
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v8

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    .line 20
    new-instance p0, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 21
    new-instance v0, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static h(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7
    array-length v1, v0

    if-lez v1, :cond_7

    .line 8
    array-length v1, v0

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    .line 9
    :goto_0
    array-length v8, v0

    if-ge v6, v8, :cond_4

    .line 10
    aget-byte v8, v0, v6

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v4

    aput v8, v2, v6

    .line 11
    aget v8, v2, v6

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v12, v8, v10

    if-gez v12, :cond_0

    .line 12
    aget v8, v2, v6

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    aget v9, v2, v6

    mul-float v8, v8, v9

    aput v8, v2, v6

    goto :goto_1

    .line 13
    :cond_0
    aget v8, v2, v6

    float-to-double v8, v8

    cmpl-double v12, v8, v10

    if-lez v12, :cond_1

    .line 14
    aget v8, v2, v6

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    const/high16 v10, -0x40000000    # -2.0f

    mul-float v8, v8, v10

    aget v10, v2, v6

    sub-float/2addr v10, v9

    mul-float v8, v8, v10

    add-float/2addr v8, v9

    aput v8, v2, v6

    .line 15
    :cond_1
    :goto_1
    aget v8, v2, v6

    cmpl-float v8, v8, v5

    if-lez v8, :cond_2

    .line 16
    aget v5, v2, v6

    .line 17
    :cond_2
    aget v8, v2, v6

    cmpg-float v8, v8, v7

    if-gez v8, :cond_3

    .line 18
    aget v7, v2, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    sub-float/2addr v5, v7

    .line 19
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v8, v6

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v8, v10

    if-ltz v6, :cond_6

    .line 20
    array-length v0, v0

    new-array v9, v0, [B

    :goto_2
    if-ge v3, v1, :cond_5

    .line 21
    aget v0, v2, v3

    sub-float/2addr v0, v7

    div-float/2addr v0, v5

    mul-float v0, v0, v4

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 22
    aput-byte v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 23
    :cond_5
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/r;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v11

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v15

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    .line 25
    new-instance v1, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {v1, v0}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 26
    new-instance v0, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    goto :goto_3

    .line 27
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    :cond_7
    move-object/from16 v0, p0

    :goto_3
    return-object v0
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->b:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 3
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->b:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->b:Lcom/huawei/hms/scankit/p/_a;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->b:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->o:Lcom/huawei/hms/scankit/p/_a;

    .line 7
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->h:Lcom/huawei/hms/scankit/p/_a;

    .line 8
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->j:Lcom/huawei/hms/scankit/p/_a;

    .line 9
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->k:Lcom/huawei/hms/scankit/p/_a;

    .line 10
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->l:Lcom/huawei/hms/scankit/p/_a;

    .line 11
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->m:Lcom/huawei/hms/scankit/p/_a;

    .line 12
    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->n:Lcom/huawei/hms/scankit/p/_a;

    return-void
.end method

.method public b(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->d:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->a(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->d:Lcom/huawei/hms/scankit/p/_a;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->d:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public b(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->c:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 3
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->c:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->c:Lcom/huawei/hms/scankit/p/_a;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->c:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public c(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->e:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->a(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->e:Lcom/huawei/hms/scankit/p/_a;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->e:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public c(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->i:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 6
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->i:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->i:Lcom/huawei/hms/scankit/p/_a;

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->i:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public d(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->f:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->h(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->f:Lcom/huawei/hms/scankit/p/_a;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->f:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public d(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->g:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 6
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->g:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->g:Lcom/huawei/hms/scankit/p/_a;

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->g:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public e(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->m:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->a(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->m:Lcom/huawei/hms/scankit/p/_a;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->m:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public e(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->o:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 3
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->o:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->o:Lcom/huawei/hms/scankit/p/_a;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->o:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public f(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->n:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->h(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->n:Lcom/huawei/hms/scankit/p/_a;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->n:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public f(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->l:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 3
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->l:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->l:Lcom/huawei/hms/scankit/p/_a;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->l:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public g(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->k:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->h(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->k:Lcom/huawei/hms/scankit/p/_a;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->k:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public g(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->j:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 3
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->j:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->j:Lcom/huawei/hms/scankit/p/_a;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->j:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method

.method public h(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->h:Lcom/huawei/hms/scankit/p/_a;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 3
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->h:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->h:Lcom/huawei/hms/scankit/p/_a;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/l;->h:Lcom/huawei/hms/scankit/p/_a;

    return-object p1
.end method
