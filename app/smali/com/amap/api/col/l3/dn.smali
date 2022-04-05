.class public final Lcom/amap/api/col/l3/dn;
.super Ljava/lang/Object;


# static fields
.field public static final a:[[I

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xc

    new-array v1, v0, [[I

    const/16 v2, 0xb

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    new-array v5, v3, [I

    aput v0, v5, v4

    aput-object v5, v1, v3

    new-array v0, v3, [I

    aput v3, v0, v4

    const/4 v5, 0x2

    aput-object v0, v1, v5

    new-array v0, v3, [I

    const/16 v6, 0xd

    aput v6, v0, v4

    const/4 v6, 0x3

    aput-object v0, v1, v6

    new-array v0, v3, [I

    const/16 v3, 0xe

    aput v3, v0, v4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const/16 v0, 0x8

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v0

    new-array v0, v6, [I

    fill-array-data v0, :array_5

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v6, [I

    fill-array-data v0, :array_6

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    aput-object v0, v1, v2

    sput-object v1, Lcom/amap/api/col/l3/dn;->a:[[I

    const-string v3, "land"

    const-string v4, "water"

    const-string v5, "green"

    const-string v6, "building"

    const-string v7, "highway"

    const-string v8, "arterial"

    const-string v9, "local"

    const-string v10, "railway"

    const-string v11, "subway"

    const-string v12, "boundary"

    const-string v13, "poilabel"

    const-string v14, "districtlable"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/dn;->b:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xf
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x11
        0x12
        0x13
        0x14
        0x15
        0x1a
        0x1b
        0x1c
    .end array-data

    :array_3
    .array-data 4
        0x16
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x18
        0x19
    .end array-data

    :array_5
    .array-data 4
        0x27
        0x28
        0x29
    .end array-data

    :array_6
    .array-data 4
        0x1d
        0x1e
        0x1f
    .end array-data

    :array_7
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/amap/api/col/l3/dn;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    sget-object p0, Lcom/amap/api/col/l3/dn;->a:[[I

    aget-object p0, p0, v0

    return-object p0

    :cond_3
    return-object v1
.end method
