.class public Lcom/ifengyu/intercom/device/lite/c/c/a;
.super Ljava/lang/Object;
.source "OtaPacketParser.java"


# static fields
.field private static final e:Ljava/lang/String; = "a"


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->d:I

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->c:[B

    return-void
.end method

.method public b([B)I
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    new-array v1, v1, [S

    .line 2
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const v3, 0xffff

    const/4 v4, 0x0

    const v5, 0xffff

    :goto_0
    if-ge v4, v0, :cond_1

    .line 3
    aget-byte v6, p1, v4

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x8

    if-ge v7, v8, :cond_0

    shr-int/lit8 v8, v5, 0x1

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    .line 4
    aget-short v5, v1, v5

    and-int/2addr v5, v3

    xor-int/2addr v5, v8

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v5

    nop

    :array_0
    .array-data 2
        0x0s
        -0x5fffs
    .end array-data
.end method

.method public c([BI)V
    .locals 3

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 2
    aput-byte v2, p1, v0

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 3
    aput-byte p2, p1, v1

    return-void
.end method

.method public d([BI)V
    .locals 2

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 1
    aput-byte v0, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 2
    aput-byte p2, p1, v0

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->b:I

    return v0
.end method

.method public f()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/c/c/a;->g()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/device/lite/c/c/a;->h(I)[B

    move-result-object v1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->b:I

    return-object v1
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public h(I)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->c:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 2
    iget v3, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->a:I

    if-ne v2, v3, :cond_0

    mul-int/lit8 v1, p1, 0x10

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x14

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    const/4 v4, -0x1

    .line 3
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->c:[B

    mul-int/lit8 v3, p1, 0x10

    const/4 v4, 0x2

    add-int/lit8 v0, v0, -0x4

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-virtual {p0, v2, p1}, Lcom/ifengyu/intercom/device/lite/c/c/a;->d([BI)V

    .line 6
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/device/lite/c/c/a;->b([B)I

    move-result v0

    .line 7
    invoke-virtual {p0, v2, v0}, Lcom/ifengyu/intercom/device/lite/c/c/a;->c([BI)V

    .line 8
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget-object v1, Lcom/ifengyu/intercom/device/lite/c/c/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ota packet ---> index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->a:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " crc : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " content : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->d:I

    return v0
.end method

.method public j()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->a:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v2, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->b:I

    add-int/2addr v2, v1

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/c/c/a;->g()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->d:I

    const/4 v0, 0x1

    return v0
.end method

.method public l([B)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/c/c/a;->a()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->c:[B

    .line 3
    array-length p1, p1

    .line 4
    rem-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    .line 5
    div-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->a:I

    goto :goto_0

    .line 6
    :cond_0
    div-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/device/lite/c/c/a;->a:I

    :goto_0
    return-void
.end method