.class public abstract Lcom/huawei/hms/scankit/p/Fb;
.super Lcom/huawei/hms/scankit/p/Ab;
.source "UPCEANReader.java"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[[I

.field public static final e:[[I


# instance fields
.field private final f:Ljava/lang/StringBuilder;

.field private final g:Lcom/huawei/hms/scankit/p/Eb;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/huawei/hms/scankit/p/Fb;->a:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lcom/huawei/hms/scankit/p/Fb;->b:[I

    const/4 v2, 0x6

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_2

    sput-object v3, Lcom/huawei/hms/scankit/p/Fb;->c:[I

    const/16 v3, 0xa

    new-array v4, v3, [[I

    const/4 v5, 0x4

    new-array v6, v5, [I

    .line 4
    fill-array-data v6, :array_3

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_4

    const/4 v8, 0x1

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_5

    const/4 v9, 0x2

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    aput-object v6, v4, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_7

    aput-object v0, v4, v5

    new-array v0, v5, [I

    fill-array-data v0, :array_8

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_9

    aput-object v0, v4, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_a

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_b

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_c

    const/16 v1, 0x9

    aput-object v0, v4, v1

    sput-object v4, Lcom/huawei/hms/scankit/p/Fb;->d:[[I

    const/16 v0, 0x14

    new-array v1, v0, [[I

    .line 5
    sput-object v1, Lcom/huawei/hms/scankit/p/Fb;->e:[[I

    .line 6
    invoke-static {v4, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v3, v0, :cond_1

    .line 7
    sget-object v1, Lcom/huawei/hms/scankit/p/Fb;->d:[[I

    add-int/lit8 v2, v3, -0xa

    aget-object v1, v1, v2

    .line 8
    array-length v2, v1

    new-array v2, v2, [I

    const/4 v4, 0x0

    .line 9
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 10
    array-length v5, v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    aget v5, v1, v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_0
    sget-object v1, Lcom/huawei/hms/scankit/p/Fb;->e:[[I

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Ab;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Fb;->f:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Lcom/huawei/hms/scankit/p/Eb;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Eb;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Fb;->g:Lcom/huawei/hms/scankit/p/Eb;

    return-void
.end method

.method static a(Lcom/huawei/hms/scankit/p/ab;[II[[I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 57
    invoke-static {p0, p2, p1}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/p/ab;I[I)V

    .line 58
    array-length p0, p3

    const p2, 0x3eeb851f    # 0.46f

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 59
    aget-object v2, p3, v1

    const v3, 0x3f4ccccd    # 0.8f

    .line 60
    invoke-static {p1, v2, v3}, Lcom/huawei/hms/scankit/p/Ab;->a([I[IF)F

    move-result v2

    cmpg-float v3, v2, p2

    if-gez v3, :cond_0

    move v0, v1

    move p2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    return v0

    .line 61
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/x;[IILcom/huawei/hms/scankit/p/ab;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            "[II",
            "Lcom/huawei/hms/scankit/p/ab;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Fb;->g:Lcom/huawei/hms/scankit/p/Eb;

    aget p2, p2, v0

    invoke-virtual {v2, p3, p4, p2}, Lcom/huawei/hms/scankit/p/Eb;->a(ILcom/huawei/hms/scankit/p/ab;I)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/huawei/hms/scankit/aiscan/common/x;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    .line 32
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p5, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 33
    :cond_0
    sget-object p2, Lcom/huawei/hms/scankit/aiscan/common/d;->i:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 34
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    :goto_1
    if-eqz p2, :cond_4

    .line 35
    array-length p3, p2

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p3, :cond_2

    aget p5, p2, p4

    if-ne p1, p5, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_3

    goto :goto_4

    .line 36
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 38
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 39
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 40
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Fb;->b(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static a(Lcom/huawei/hms/scankit/p/ab;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/hms/scankit/p/Fb;->b(Lcom/huawei/hms/scankit/p/ab;I)[I

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/huawei/hms/scankit/p/ab;IZ[I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 42
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;IZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/ab;IZ[I[I)[I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/ab;->c(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/ab;->b(I)I

    move-result p1

    .line 45
    :goto_0
    array-length v1, p3

    const/4 v2, 0x0

    move v3, p2

    const/4 v4, 0x0

    move p2, p1

    :goto_1
    if-ge p1, v0, :cond_6

    .line 46
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v3, :cond_2

    if-ltz v4, :cond_1

    .line 47
    array-length v5, p4

    if-ge v4, v5, :cond_1

    .line 48
    aget v5, p4, v4

    add-int/2addr v5, v6

    aput v5, p4, v4

    goto :goto_3

    .line 49
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_2
    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_4

    const v5, 0x3f4ccccd    # 0.8f

    .line 50
    invoke-static {p4, p3, v5}, Lcom/huawei/hms/scankit/p/Ab;->a([I[IF)F

    move-result v5

    const v7, 0x3eeb851f    # 0.46f

    const/4 v8, 0x2

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    new-array p0, v8, [I

    aput p2, p0, v2

    aput p1, p0, v6

    return-object p0

    .line 51
    :cond_3
    aget v5, p4, v2

    aget v7, p4, v6

    add-int/2addr v5, v7

    add-int/2addr p2, v5

    add-int/lit8 v5, v4, -0x1

    .line 52
    invoke-static {p4, v8, p4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    aput v2, p4, v5

    .line 54
    aput v2, p4, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 55
    :goto_2
    aput v6, p4, v4

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 56
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/lang/CharSequence;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ltz v1, :cond_1

    .line 15
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_0

    if-gt v4, v3, :cond_0

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_1
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x2

    :goto_1
    if-ltz v0, :cond_3

    .line 17
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-ltz v1, :cond_2

    if-gt v1, v3, :cond_2

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_3
    rsub-int p0, v2, 0x3e8

    .line 19
    rem-int/lit8 p0, p0, 0xa

    return p0
.end method

.method static b(Lcom/huawei/hms/scankit/p/ab;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/ab;",
            ")",
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0, v3}, Lcom/huawei/hms/scankit/p/Fb;->b(Lcom/huawei/hms/scankit/p/ab;I)[I

    move-result-object v3

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    aget v3, v3, v2
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    nop

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 7
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method static b(Lcom/huawei/hms/scankit/p/ab;I)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/huawei/hms/scankit/p/Fb;->a:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 9
    sget-object v2, Lcom/huawei/hms/scankit/p/Fb;->a:[I

    array-length v4, v2

    invoke-static {v0, v1, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 10
    invoke-static {p0, p1, v1, v2, v0}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;IZ[I[I)[I

    move-result-object v2

    .line 11
    aget p1, v2, v1

    const/4 v4, 0x1

    .line 12
    aget v5, v2, v4

    sub-int v6, v5, p1

    sub-int v6, p1, v6

    add-int/lit8 v7, v6, 0x3

    :goto_1
    if-gt v6, v7, :cond_1

    if-ltz v6, :cond_0

    .line 13
    invoke-virtual {p0, v6, p1, v1, v4}, Lcom/huawei/hms/scankit/p/ab;->a(IIZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    move p1, v5

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method protected abstract a(Lcom/huawei/hms/scankit/p/ab;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation
.end method

.method abstract a()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
.end method

.method public a(ILcom/huawei/hms/scankit/p/ab;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/hms/scankit/p/ab;",
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

    .line 2
    invoke-static {p2}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/huawei/hms/scankit/p/Fb;->a(ILcom/huawei/hms/scankit/p/ab;[ILjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/huawei/hms/scankit/p/ab;[ILjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/hms/scankit/p/ab;",
            "[I",
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

    move-object/from16 v6, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    move-object/from16 v5, p4

    const/4 v1, 0x0

    if-nez v5, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 4
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/aiscan/common/A;

    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 5
    new-instance v10, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v11, v0, v9

    aget v12, v0, v8

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v7

    int-to-float v12, v3

    invoke-direct {v10, v11, v12}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    invoke-interface {v2, v10}, Lcom/huawei/hms/scankit/aiscan/common/A;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)V

    .line 6
    :cond_1
    iget-object v10, v6, Lcom/huawei/hms/scankit/p/Fb;->f:Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    invoke-virtual {v6, v4, v0, v10}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;[ILjava/lang/StringBuilder;)I

    move-result v11

    if-eqz v2, :cond_2

    .line 9
    new-instance v12, Lcom/huawei/hms/scankit/aiscan/common/z;

    int-to-float v13, v11

    int-to-float v14, v3

    invoke-direct {v12, v13, v14}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    invoke-interface {v2, v12}, Lcom/huawei/hms/scankit/aiscan/common/A;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)V

    .line 10
    :cond_2
    invoke-virtual {v6, v4, v11}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;I)[I

    move-result-object v12

    .line 11
    aget v13, v12, v9

    sub-int/2addr v13, v11

    if-gt v13, v8, :cond_8

    if-eqz v2, :cond_3

    .line 12
    new-instance v11, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v13, v12, v9

    aget v14, v12, v8

    add-int/2addr v13, v14

    int-to-float v13, v13

    div-float/2addr v13, v7

    int-to-float v7, v3

    invoke-direct {v11, v13, v7}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    invoke-interface {v2, v11}, Lcom/huawei/hms/scankit/aiscan/common/A;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)V

    .line 13
    :cond_3
    invoke-virtual {v6, v0, v12}, Lcom/huawei/hms/scankit/p/Fb;->a([I[I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14
    aget v2, v12, v8

    .line 15
    aget v7, v12, v9

    sub-int v7, v2, v7

    add-int/2addr v7, v2

    .line 16
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v11

    if-ge v7, v11, :cond_6

    aget v7, v12, v9

    invoke-virtual {v6, v7, v2, v4}, Lcom/huawei/hms/scankit/p/Fb;->a(IILcom/huawei/hms/scankit/p/ab;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v10, 0x8

    if-lt v7, v10, :cond_5

    .line 19
    invoke-virtual {v6, v2}, Lcom/huawei/hms/scankit/p/Fb;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 20
    aget v0, v0, v9

    int-to-float v0, v0

    .line 21
    aget v7, v12, v8

    int-to-float v7, v7

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/Fb;->a()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v10

    .line 23
    new-instance v11, Lcom/huawei/hms/scankit/aiscan/common/x;

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/huawei/hms/scankit/aiscan/common/z;

    new-instance v14, Lcom/huawei/hms/scankit/aiscan/common/z;

    int-to-float v15, v3

    invoke-direct {v14, v0, v15}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v14, v13, v9

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-direct {v0, v7, v15}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v0, v13, v8

    invoke-direct {v11, v2, v1, v13, v10}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/aiscan/common/x;[IILcom/huawei/hms/scankit/p/ab;Ljava/util/Map;)V

    return-object v11

    .line 25
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    .line 26
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    .line 27
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    .line 28
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    .line 29
    :cond_8
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method abstract a(IILcom/huawei/hms/scankit/p/ab;)Z
.end method

.method a(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 37
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Fb;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method abstract a([I[I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation
.end method

.method a(Lcom/huawei/hms/scankit/p/ab;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/huawei/hms/scankit/p/Fb;->a:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;IZ[I)[I

    move-result-object p1

    return-object p1
.end method
