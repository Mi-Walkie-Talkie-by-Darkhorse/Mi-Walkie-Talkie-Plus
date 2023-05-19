.class final Lcom/huawei/hms/scankit/p/Bd;
.super Ljava/lang/Object;
.source "Base256Encoder.java"

# interfaces
.implements Lcom/huawei/hms/scankit/p/Gd;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CI)C
    .locals 1

    mul-int/lit16 p1, p1, 0x95

    const/16 v0, 0xff

    .line 23
    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    if-gt p0, v0, :cond_0

    int-to-char p0, p0

    return p0

    :cond_0
    add-int/lit16 p0, p0, -0x100

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/Hd;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->c()C

    move-result v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget v2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->d()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Bd;->a()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/huawei/hms/scankit/p/Jd;->a(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Bd;->a()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->a()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 12
    invoke-virtual {p1, v4}, Lcom/huawei/hms/scankit/p/Hd;->c(I)V

    .line 13
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->g()Lcom/huawei/hms/scankit/p/Kd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Kd;->a()I

    move-result v5

    sub-int/2addr v5, v4

    if-lez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    const/16 v4, 0xf9

    if-gt v2, v4, :cond_4

    int-to-char v2, v2

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x613

    if-gt v2, v5, :cond_7

    .line 16
    div-int/lit16 v5, v2, 0xfa

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 17
    rem-int/lit16 v2, v2, 0xfa

    int-to-char v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 18
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_6

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->a()I

    move-result v5

    add-int/2addr v5, v3

    .line 20
    invoke-static {v4, v5}, Lcom/huawei/hms/scankit/p/Bd;->a(CI)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 21
    :cond_7
    :try_start_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Message length not in valid ranges: "

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 22
    throw p1
.end method
