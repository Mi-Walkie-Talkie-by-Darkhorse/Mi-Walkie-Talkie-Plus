.class public final Lcom/huawei/hms/scankit/p/Pd;
.super Lcom/huawei/hms/scankit/p/Vd;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/Pd$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Vd;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;II)I
    .locals 5

    .line 32
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/p/Pd;->a(Ljava/lang/CharSequence;I)Lcom/huawei/hms/scankit/p/Pd$a;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/huawei/hms/scankit/p/Pd$a;->a:Lcom/huawei/hms/scankit/p/Pd$a;

    const/16 v2, 0x64

    if-eq v0, v1, :cond_b

    sget-object v3, Lcom/huawei/hms/scankit/p/Pd$a;->b:Lcom/huawei/hms/scankit/p/Pd$a;

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0x63

    if-ne p2, v4, :cond_1

    return v4

    :cond_1
    if-ne p2, v2, :cond_9

    .line 34
    sget-object p2, Lcom/huawei/hms/scankit/p/Pd$a;->d:Lcom/huawei/hms/scankit/p/Pd$a;

    if-ne v0, p2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, p1, 0x2

    .line 35
    invoke-static {p0, v0}, Lcom/huawei/hms/scankit/p/Pd;->a(Ljava/lang/CharSequence;I)Lcom/huawei/hms/scankit/p/Pd$a;

    move-result-object v0

    if-eq v0, v1, :cond_8

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, p2, :cond_5

    add-int/lit8 p1, p1, 0x3

    .line 36
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/p/Pd;->a(Ljava/lang/CharSequence;I)Lcom/huawei/hms/scankit/p/Pd$a;

    move-result-object p0

    .line 37
    sget-object p1, Lcom/huawei/hms/scankit/p/Pd$a;->c:Lcom/huawei/hms/scankit/p/Pd$a;

    if-ne p0, p1, :cond_4

    return v4

    :cond_4
    return v2

    :cond_5
    add-int/lit8 p1, p1, 0x4

    .line 38
    :goto_0
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/p/Pd;->a(Ljava/lang/CharSequence;I)Lcom/huawei/hms/scankit/p/Pd$a;

    move-result-object p2

    sget-object v0, Lcom/huawei/hms/scankit/p/Pd$a;->c:Lcom/huawei/hms/scankit/p/Pd$a;

    if-ne p2, v0, :cond_6

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 39
    :cond_6
    sget-object p0, Lcom/huawei/hms/scankit/p/Pd$a;->b:Lcom/huawei/hms/scankit/p/Pd$a;

    if-ne p2, p0, :cond_7

    return v2

    :cond_7
    return v4

    :cond_8
    :goto_1
    return v2

    .line 40
    :cond_9
    sget-object p2, Lcom/huawei/hms/scankit/p/Pd$a;->d:Lcom/huawei/hms/scankit/p/Pd$a;

    if-ne v0, p2, :cond_a

    add-int/lit8 p1, p1, 0x1

    .line 41
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/p/Pd;->a(Ljava/lang/CharSequence;I)Lcom/huawei/hms/scankit/p/Pd$a;

    move-result-object v0

    .line 42
    :cond_a
    sget-object p0, Lcom/huawei/hms/scankit/p/Pd$a;->c:Lcom/huawei/hms/scankit/p/Pd$a;

    if-ne v0, p0, :cond_b

    return v4

    :cond_b
    :goto_2
    return v2
.end method

.method private static a(Ljava/lang/CharSequence;I)Lcom/huawei/hms/scankit/p/Pd$a;
    .locals 4

    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 24
    sget-object p0, Lcom/huawei/hms/scankit/p/Pd$a;->a:Lcom/huawei/hms/scankit/p/Pd$a;

    return-object p0

    .line 25
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xf1

    if-ne v1, v2, :cond_1

    .line 26
    sget-object p0, Lcom/huawei/hms/scankit/p/Pd$a;->d:Lcom/huawei/hms/scankit/p/Pd$a;

    return-object p0

    :cond_1
    const/16 v2, 0x30

    if-lt v1, v2, :cond_6

    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_3

    .line 27
    sget-object p0, Lcom/huawei/hms/scankit/p/Pd$a;->b:Lcom/huawei/hms/scankit/p/Pd$a;

    return-object p0

    .line 28
    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v2, :cond_5

    if-le p0, v3, :cond_4

    goto :goto_0

    .line 29
    :cond_4
    sget-object p0, Lcom/huawei/hms/scankit/p/Pd$a;->c:Lcom/huawei/hms/scankit/p/Pd$a;

    return-object p0

    .line 30
    :cond_5
    :goto_0
    sget-object p0, Lcom/huawei/hms/scankit/p/Pd$a;->b:Lcom/huawei/hms/scankit/p/Pd$a;

    return-object p0

    .line 31
    :cond_6
    :goto_1
    sget-object p0, Lcom/huawei/hms/scankit/p/Pd$a;->a:Lcom/huawei/hms/scankit/p/Pd$a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/p/ke;",
            "*>;)",
            "Lcom/huawei/hms/scankit/p/bb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/huawei/hms/scankit/p/Vd;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode CODE_128, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)[Z
    .locals 11

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    const/16 v2, 0x50

    if-gt v0, v2, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_0

    const/16 v4, 0x7e

    if-le v5, v4, :cond_1

    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad character in input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :cond_3
    :goto_1
    if-ge v5, v0, :cond_8

    .line 8
    invoke-static {p1, v5, v7}, Lcom/huawei/hms/scankit/p/Pd;->a(Ljava/lang/CharSequence;II)I

    move-result v9

    const/16 v10, 0x64

    if-ne v9, v7, :cond_5

    .line 9
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    packed-switch v9, :pswitch_data_1

    if-ne v7, v10, :cond_4

    .line 10
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v4

    goto :goto_2

    :pswitch_1
    const/16 v9, 0x64

    goto :goto_2

    :pswitch_2
    const/16 v9, 0x60

    goto :goto_2

    :pswitch_3
    const/16 v9, 0x61

    goto :goto_2

    :pswitch_4
    const/16 v9, 0x66

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v5, 0x2

    .line 11
    :try_start_0
    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/2addr v5, v1

    goto :goto_3

    .line 12
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "contents substring can not format integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-nez v7, :cond_7

    if-ne v9, v10, :cond_6

    const/16 v7, 0x68

    move v7, v9

    const/16 v9, 0x68

    goto :goto_3

    :cond_6
    const/16 v7, 0x69

    move v7, v9

    const/16 v9, 0x69

    goto :goto_3

    :cond_7
    move v7, v9

    .line 13
    :goto_3
    sget-object v10, Lcom/huawei/hms/scankit/p/sb;->a:[[I

    aget-object v10, v10, v9

    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int v9, v9, v8

    add-int/2addr v6, v9

    if-eqz v5, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 14
    :cond_8
    rem-int/lit8 v6, v6, 0x67

    .line 15
    sget-object p1, Lcom/huawei/hms/scankit/p/sb;->a:[[I

    aget-object v0, p1, v6

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x6a

    .line 16
    aget-object p1, p1, v0

    invoke-interface {v3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 18
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_9

    aget v7, v4, v6

    add-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 19
    :cond_a
    new-array p1, v0, [Z

    .line 20
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 21
    invoke-static {p1, v2, v3, v1}, Lcom/huawei/hms/scankit/p/Vd;->a([ZI[IZ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_5

    :cond_b
    return-object p1

    .line 22
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
