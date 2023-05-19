.class final Lcom/huawei/hms/scankit/p/Nd;
.super Lcom/huawei/hms/scankit/p/Cd;
.source "X12Encoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Cd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method a(CLjava/lang/StringBuilder;)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v2, 0x39

    if-gt p1, v2, :cond_0

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Jd;->a(C)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, 0x2

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/Hd;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->c()C

    move-result v1

    .line 4
    iget v2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/scankit/p/Nd;->a(CLjava/lang/StringBuilder;)I

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 7
    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    .line 8
    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/p/Cd;->b(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nd;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hms/scankit/p/Jd;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nd;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    .line 12
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/scankit/p/Nd;->a(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method a(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 20
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->k()V

    .line 21
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->g()Lcom/huawei/hms/scankit/p/Kd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Kd;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    .line 23
    iget v1, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    sub-int/2addr v1, p2

    iput v1, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    .line 24
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->f()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    if-gt v0, v1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->f()I

    move-result p2

    if-eq p2, v0, :cond_1

    :cond_0
    const/16 p2, 0xfe

    .line 26
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->e()I

    move-result p2

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    :cond_2
    return-void
.end method
