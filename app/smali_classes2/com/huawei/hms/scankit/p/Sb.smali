.class public final Lcom/huawei/hms/scankit/p/Sb;
.super Ljava/lang/Object;
.source "ModulusGF.java"


# static fields
.field public static final a:Lcom/huawei/hms/scankit/p/Sb;


# instance fields
.field private final b:[I

.field private final c:[I

.field private final d:Lcom/huawei/hms/scankit/p/Tb;

.field private final e:Lcom/huawei/hms/scankit/p/Tb;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Sb;

    const/16 v1, 0x3a1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/Sb;-><init>(II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/Sb;->a:Lcom/huawei/hms/scankit/p/Sb;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/p/Sb;->f:I

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Sb;->b:[I

    .line 4
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Sb;->c:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 5
    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Sb;->b:[I

    aput v3, v4, v2

    mul-int v3, v3, p2

    .line 6
    rem-int/2addr v3, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-ge p2, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Sb;->c:[I

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Sb;->b:[I

    aget v3, v3, p2

    aput p2, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Lcom/huawei/hms/scankit/p/Tb;

    new-array p2, v1, [I

    aput v0, p2, v0

    invoke-direct {p1, p0, p2}, Lcom/huawei/hms/scankit/p/Tb;-><init>(Lcom/huawei/hms/scankit/p/Sb;[I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Sb;->d:Lcom/huawei/hms/scankit/p/Tb;

    .line 9
    new-instance p1, Lcom/huawei/hms/scankit/p/Tb;

    new-array p2, v1, [I

    aput v1, p2, v0

    invoke-direct {p1, p0, p2}, Lcom/huawei/hms/scankit/p/Tb;-><init>(Lcom/huawei/hms/scankit/p/Sb;[I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Sb;->e:Lcom/huawei/hms/scankit/p/Tb;

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Sb;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method a(II)I
    .locals 0

    add-int/2addr p1, p2

    .line 2
    iget p2, p0, Lcom/huawei/hms/scankit/p/Sb;->f:I

    rem-int/2addr p1, p2

    return p1
.end method

.method a()Lcom/huawei/hms/scankit/p/Tb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Sb;->e:Lcom/huawei/hms/scankit/p/Tb;

    return-object v0
.end method

.method b()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/huawei/hms/scankit/p/Sb;->f:I

    return v0
.end method

.method b(I)I
    .locals 3

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Sb;->b:[I

    iget v1, p0, Lcom/huawei/hms/scankit/p/Sb;->f:I

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Sb;->c:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method b(II)Lcom/huawei/hms/scankit/p/Tb;
    .locals 1

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Sb;->d:Lcom/huawei/hms/scankit/p/Tb;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 3
    aput p2, p1, v0

    .line 4
    new-instance p2, Lcom/huawei/hms/scankit/p/Tb;

    invoke-direct {p2, p0, p1}, Lcom/huawei/hms/scankit/p/Tb;-><init>(Lcom/huawei/hms/scankit/p/Sb;[I)V

    return-object p2

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method c(I)I
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Sb;->c:[I

    aget p1, v0, p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method c(II)I
    .locals 2

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Sb;->b:[I

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Sb;->c:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/huawei/hms/scankit/p/Sb;->f:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method c()Lcom/huawei/hms/scankit/p/Tb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Sb;->d:Lcom/huawei/hms/scankit/p/Tb;

    return-object v0
.end method

.method d(II)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/Sb;->f:I

    add-int/2addr p1, v0

    sub-int/2addr p1, p2

    rem-int/2addr p1, v0

    return p1
.end method
