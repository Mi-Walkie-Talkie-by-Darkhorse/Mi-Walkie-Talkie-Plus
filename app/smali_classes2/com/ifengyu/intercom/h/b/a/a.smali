.class public Lcom/ifengyu/intercom/h/b/a/a;
.super Ljava/lang/Object;
.source "Mi3OtaPacketParser.java"


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
    iput v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->d:I

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->c:[B

    return-void
.end method

.method public b([B[B)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 2
    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public c([BI)V
    .locals 2

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 1
    aput-byte v0, p1, v1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 2
    aput-byte p2, p1, v0

    return-void
.end method

.method public d()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/h/b/a/a;->e()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/h/b/a/a;->f(I)[B

    move-result-object v1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->b:I

    return-object v1
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f(I)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->c:[B

    array-length v1, v0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    .line 2
    iget v4, p0, Lcom/ifengyu/intercom/h/b/a/a;->a:I

    if-ne v3, v4, :cond_0

    mul-int/lit8 v2, p1, 0x5a

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :cond_1
    :goto_0
    add-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 3
    new-array v4, v2, [B

    mul-int/lit8 v5, p1, 0x5a

    .line 4
    invoke-static {v0, v5, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    .line 5
    invoke-virtual {p0, v4, v0}, Lcom/ifengyu/intercom/h/b/a/a;->c([BI)V

    sub-int/2addr v2, v3

    .line 6
    invoke-static {v4, v2}, Lcom/ifengyu/blelib/c/b;->c([BI)[B

    move-result-object v0

    .line 7
    invoke-virtual {p0, v4, v0}, Lcom/ifengyu/intercom/h/b/a/a;->b([B[B)V

    .line 8
    invoke-static {}, Lcom/ifengyu/library/utils/k;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Lcom/ifengyu/intercom/h/b/a/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ota packet ---> index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", total : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/ifengyu/intercom/h/b/a/a;->a:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", crc : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", content : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v4
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->d:I

    return v0
.end method

.method public h()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->a:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v2, p0, Lcom/ifengyu/intercom/h/b/a/a;->b:I

    add-int/2addr v2, v1

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/h/b/a/a;->e()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/ifengyu/intercom/h/b/a/a;->a:I

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
    iget v1, p0, Lcom/ifengyu/intercom/h/b/a/a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    iput v0, p0, Lcom/ifengyu/intercom/h/b/a/a;->d:I

    const/4 v0, 0x1

    return v0
.end method

.method public j([B)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/h/b/a/a;->a()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/h/b/a/a;->c:[B

    .line 3
    array-length p1, p1

    .line 4
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_0

    .line 5
    div-int/lit8 p1, p1, 0x5a

    iput p1, p0, Lcom/ifengyu/intercom/h/b/a/a;->a:I

    goto :goto_0

    .line 6
    :cond_0
    div-int/lit8 p1, p1, 0x5a

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/h/b/a/a;->a:I

    :goto_0
    return-void
.end method
