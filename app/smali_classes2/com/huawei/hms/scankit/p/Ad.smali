.class final Lcom/huawei/hms/scankit/p/Ad;
.super Ljava/lang/Object;
.source "ASCIIEncoder.java"

# interfaces
.implements Lcom/huawei/hms/scankit/p/Gd;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CC)C
    .locals 3

    .line 28
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Jd;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Jd;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 p1, p1, -0x30

    add-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x82

    int-to-char p0, p0

    return p0

    .line 29
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "not digits: "

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 30
    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/Hd;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->d()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/Jd;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->d()Ljava/lang/String;

    move-result-object v0

    iget v3, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->d()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4
    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/p/Ad;->a(CC)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 5
    iget v0, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->c()C

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->d()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ad;->a()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hms/scankit/p/Jd;->a(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ad;->a()I

    move-result v4

    if-eq v3, v4, :cond_6

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_3

    const/4 v0, 0x4

    if-eq v3, v0, :cond_2

    const/4 v0, 0x5

    if-ne v3, v0, :cond_1

    const/16 v1, 0xe7

    .line 9
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    return-void

    .line 11
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Illegal mode: "

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 13
    throw p1

    :cond_2
    const/16 v1, 0xf0

    .line 14
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xee

    .line 16
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xef

    .line 18
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 19
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xe6

    .line 20
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 21
    invoke-virtual {p1, v2}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    return-void

    .line 22
    :cond_6
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/Jd;->c(C)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xeb

    .line 23
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    add-int/lit8 v0, v0, -0x80

    add-int/2addr v0, v2

    int-to-char v0, v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 25
    iget v0, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    goto :goto_0

    :cond_7
    add-int/2addr v0, v2

    int-to-char v0, v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 27
    iget v0, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    :goto_0
    return-void
.end method
