.class Lcom/huawei/hms/scankit/p/Cd;
.super Ljava/lang/Object;
.source "C40Encoder.java"

# interfaces
.implements Lcom/huawei/hms/scankit/p/Gd;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .locals 1

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int p4, v0, p4

    .line 23
    invoke-virtual {p2, p4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 24
    iget p2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    .line 25
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->c()C

    move-result p2

    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/huawei/hms/scankit/p/Cd;->a(CLjava/lang/StringBuilder;)I

    move-result p2

    .line 27
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->j()V

    return p2
.end method

.method private static a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 4

    .line 65
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 66
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    add-int/2addr p1, v2

    .line 67
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    mul-int/lit16 v0, v0, 0x640

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    const/4 p0, 0x1

    add-int/2addr v0, p0

    .line 68
    div-int/lit16 p1, v0, 0x100

    int-to-char p1, p1

    .line 69
    rem-int/lit16 v0, v0, 0x100

    int-to-char v0, v0

    .line 70
    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    aput-char v0, v2, p0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static b(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/p/Cd;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/Hd;->a(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 2
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method a(CLjava/lang/StringBuilder;)I
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_0
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1

    const/16 v3, 0x39

    if-gt p1, v3, :cond_1

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_1
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_2

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_2
    const/4 v2, 0x2

    if-ge p1, v0, :cond_3

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_3
    const/16 v0, 0x21

    if-lt p1, v0, :cond_4

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_4

    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    int-to-char p1, p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_4
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_5

    const/16 v3, 0x40

    if-gt p1, v3, :cond_5

    .line 57
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_5
    const/16 v0, 0x5b

    if-lt p1, v0, :cond_6

    const/16 v3, 0x5f

    if-gt p1, v3, :cond_6

    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x16

    int-to-char p1, p1

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_6
    const/16 v0, 0x60

    if-lt p1, v0, :cond_7

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_7

    .line 61
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    int-to-char p1, p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_7
    const-string v0, "\u0001\u001e"

    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x80

    int-to-char p1, p1

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Cd;->a(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method

.method public a(Lcom/huawei/hms/scankit/p/Hd;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->c()C

    move-result v1

    .line 4
    iget v2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/scankit/p/Cd;->a(CLjava/lang/StringBuilder;)I

    move-result v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    const/4 v5, 0x2

    mul-int/lit8 v2, v2, 0x2

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->a()I

    move-result v6

    add-int/2addr v6, v2

    .line 8
    invoke-virtual {p1, v6}, Lcom/huawei/hms/scankit/p/Hd;->c(I)V

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->g()Lcom/huawei/hms/scankit/p/Kd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Kd;->a()I

    move-result v2

    sub-int/2addr v2, v6

    .line 10
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result v6

    if-nez v6, :cond_5

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    rem-int/2addr v7, v4

    if-ne v7, v5, :cond_2

    if-lt v2, v5, :cond_1

    if-le v2, v5, :cond_2

    .line 13
    :cond_1
    invoke-direct {p0, p1, v0, v6, v1}, Lcom/huawei/hms/scankit/p/Cd;->a(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    rem-int/2addr v5, v4

    if-ne v5, v3, :cond_6

    if-gt v1, v4, :cond_3

    if-ne v2, v3, :cond_4

    :cond_3
    if-le v1, v4, :cond_6

    .line 15
    :cond_4
    invoke-direct {p0, p1, v0, v6, v1}, Lcom/huawei/hms/scankit/p/Cd;->a(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 17
    rem-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Cd;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hms/scankit/p/Jd;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 19
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Cd;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    .line 21
    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/scankit/p/Cd;->a(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method a(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V
    .locals 6

    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    const/4 v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    rem-int/2addr v3, v1

    .line 30
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->a()I

    move-result v4

    add-int/2addr v4, v0

    .line 31
    invoke-virtual {p1, v4}, Lcom/huawei/hms/scankit/p/Hd;->c(I)V

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->g()Lcom/huawei/hms/scankit/p/Kd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Kd;->a()I

    move-result v0

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    const/16 v5, 0xfe

    if-ne v3, v2, :cond_1

    .line 33
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/Cd;->b(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 37
    invoke-virtual {p1, v5}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    if-ne v3, v2, :cond_4

    .line 38
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 39
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/Cd;->b(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p1, v5}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 42
    :cond_3
    iget p2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcom/huawei/hms/scankit/p/Hd;->f:I

    goto :goto_3

    :cond_4
    if-nez v3, :cond_7

    .line 43
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v1, :cond_5

    .line 44
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/Cd;->b(Lcom/huawei/hms/scankit/p/Hd;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_5
    if-gtz v0, :cond_6

    .line 45
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 46
    :cond_6
    invoke-virtual {p1, v5}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    goto :goto_3

    .line 47
    :cond_7
    :try_start_0
    new-instance p2, Ljava/lang/IllegalStateException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Unexpected case. Please report!"

    :try_start_1
    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string p2, "exception"

    const-string v0, "Exception"

    .line 48
    invoke-static {p2, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_8
    :goto_3
    invoke-virtual {p1, v4}, Lcom/huawei/hms/scankit/p/Hd;->b(I)V

    return-void
.end method
