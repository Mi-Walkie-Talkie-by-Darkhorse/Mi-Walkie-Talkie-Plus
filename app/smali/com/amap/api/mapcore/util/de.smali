.class public Lcom/amap/api/mapcore/util/de;
.super Ljava/lang/Object;
.source "StyleItemAdaptor.java"


# static fields
.field public static final a:[[I

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v0, 0xc

    new-array v0, v0, [[I

    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v4, [I

    const/16 v2, 0xc

    aput v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v4, [I

    aput v4, v1, v5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    const/16 v2, 0xd

    aput v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v4, [I

    const/16 v3, 0xe

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/de;->a:[[I

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "land"

    aput-object v1, v0, v5

    const-string v1, "water"

    aput-object v1, v0, v4

    const-string v1, "green"

    aput-object v1, v0, v6

    const-string v1, "building"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "highway"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "arterial"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "local"

    aput-object v2, v0, v1

    const-string v1, "railway"

    aput-object v1, v0, v8

    const/16 v1, 0x8

    const-string v2, "subway"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "boundary"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "poilabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "districtlable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/de;->b:[Ljava/lang/String;

    return-void

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
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/amap/api/mapcore/util/de;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/amap/api/mapcore/util/de;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    if-ltz v0, :cond_2

    sget-object v1, Lcom/amap/api/mapcore/util/de;->a:[[I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method
