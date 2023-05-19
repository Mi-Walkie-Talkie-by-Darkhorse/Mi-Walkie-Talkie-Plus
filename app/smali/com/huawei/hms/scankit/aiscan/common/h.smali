.class public final Lcom/huawei/hms/scankit/aiscan/common/h;
.super Ljava/lang/Object;
.source "GenericGF.java"


# static fields
.field public static final a:Lcom/huawei/hms/scankit/aiscan/common/h;

.field public static final b:Lcom/huawei/hms/scankit/aiscan/common/h;

.field public static final c:Lcom/huawei/hms/scankit/aiscan/common/h;

.field public static final d:Lcom/huawei/hms/scankit/aiscan/common/h;

.field public static final e:Lcom/huawei/hms/scankit/aiscan/common/h;

.field public static final f:Lcom/huawei/hms/scankit/aiscan/common/h;

.field public static final g:Lcom/huawei/hms/scankit/aiscan/common/h;

.field public static final h:Lcom/huawei/hms/scankit/aiscan/common/h;


# instance fields
.field private final i:[I

.field private final j:[I

.field private final k:Lcom/huawei/hms/scankit/aiscan/common/i;

.field private final l:Lcom/huawei/hms/scankit/aiscan/common/i;

.field private final m:I

.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/h;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/aiscan/common/h;-><init>(III)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/h;->a:Lcom/huawei/hms/scankit/aiscan/common/h;

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/h;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/aiscan/common/h;-><init>(III)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/h;->b:Lcom/huawei/hms/scankit/aiscan/common/h;

    .line 3
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/h;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/aiscan/common/h;-><init>(III)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/h;->c:Lcom/huawei/hms/scankit/aiscan/common/h;

    .line 4
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/h;

    const/16 v2, 0x13

    const/16 v4, 0x10

    invoke-direct {v1, v2, v4, v3}, Lcom/huawei/hms/scankit/aiscan/common/h;-><init>(III)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/h;->d:Lcom/huawei/hms/scankit/aiscan/common/h;

    .line 5
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/h;

    const/16 v2, 0x11d

    const/16 v4, 0x100

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/huawei/hms/scankit/aiscan/common/h;-><init>(III)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/h;->e:Lcom/huawei/hms/scankit/aiscan/common/h;

    .line 6
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/h;

    const/16 v2, 0x12d

    invoke-direct {v1, v2, v4, v3}, Lcom/huawei/hms/scankit/aiscan/common/h;-><init>(III)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/h;->f:Lcom/huawei/hms/scankit/aiscan/common/h;

    .line 7
    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/h;->g:Lcom/huawei/hms/scankit/aiscan/common/h;

    .line 8
    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/h;->h:Lcom/huawei/hms/scankit/aiscan/common/h;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->n:I

    .line 3
    iput p2, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->m:I

    .line 4
    iput p3, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->o:I

    .line 5
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->i:[I

    .line 6
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->j:[I

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, p2, :cond_1

    .line 7
    iget-object v3, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->i:[I

    aput v2, v3, v1

    mul-int/lit8 v2, v2, 0x2

    if-lt v2, p2, :cond_0

    xor-int/2addr v2, p1

    add-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->j:[I

    iget-object v2, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->i:[I

    aget v2, v2, p1

    aput p1, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/i;

    new-array p2, v0, [I

    aput p3, p2, p3

    invoke-direct {p1, p0, p2}, Lcom/huawei/hms/scankit/aiscan/common/i;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;[I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->k:Lcom/huawei/hms/scankit/aiscan/common/i;

    .line 10
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/i;

    new-array p2, v0, [I

    aput v0, p2, p3

    invoke-direct {p1, p0, p2}, Lcom/huawei/hms/scankit/aiscan/common/i;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;[I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->l:Lcom/huawei/hms/scankit/aiscan/common/i;

    return-void
.end method

.method static a(II)I
    .locals 0

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->o:I

    return v0
.end method

.method a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->i:[I

    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/b;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->i:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method b(I)I
    .locals 3

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->i:[I

    iget v1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->m:I

    iget-object v2, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->j:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    .line 9
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    throw p1
.end method

.method b()Lcom/huawei/hms/scankit/aiscan/common/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->l:Lcom/huawei/hms/scankit/aiscan/common/i;

    return-object v0
.end method

.method b(II)Lcom/huawei/hms/scankit/aiscan/common/i;
    .locals 1

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->k:Lcom/huawei/hms/scankit/aiscan/common/i;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 3
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 4
    aput p2, p1, v0

    .line 5
    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/i;

    invoke-direct {p2, p0, p1}, Lcom/huawei/hms/scankit/aiscan/common/i;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;[I)V

    return-object p2

    .line 6
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    throw p1
.end method

.method public c()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->m:I

    return v0
.end method

.method c(I)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->j:[I

    aget p1, v0, p1

    return p1

    .line 2
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 3
    throw p1
.end method

.method c(II)I
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->i:[I

    iget-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->j:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->m:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method d()Lcom/huawei/hms/scankit/aiscan/common/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->k:Lcom/huawei/hms/scankit/aiscan/common/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GF(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/aiscan/common/h;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
