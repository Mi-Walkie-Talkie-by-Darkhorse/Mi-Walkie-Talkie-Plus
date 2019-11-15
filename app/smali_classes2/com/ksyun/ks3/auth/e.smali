.class public Lcom/ksyun/ks3/auth/e;
.super Ljava/lang/Object;
.source "ValidateUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x2d

    const/16 v5, 0x2e

    const/4 v3, 0x0

    if-nez p0, :cond_1

    move-object p0, v3

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_3

    :cond_2
    move-object p0, v3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x41

    if-lt v2, v4, :cond_4

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_4

    move-object p0, v3

    goto :goto_0

    :cond_4
    const/16 v4, 0x20

    if-eq v2, v4, :cond_5

    const/16 v4, 0x9

    if-eq v2, v4, :cond_5

    const/16 v4, 0xd

    if-eq v2, v4, :cond_5

    const/16 v4, 0xa

    if-ne v2, v4, :cond_6

    :cond_5
    move-object p0, v3

    goto :goto_0

    :cond_6
    if-ne v2, v5, :cond_8

    if-ne v1, v5, :cond_7

    move-object p0, v3

    goto :goto_0

    :cond_7
    if-ne v1, v6, :cond_c

    move-object p0, v3

    goto :goto_0

    :cond_8
    if-ne v2, v6, :cond_9

    if-ne v1, v5, :cond_c

    move-object p0, v3

    goto :goto_0

    :cond_9
    const/16 v1, 0x30

    if-lt v2, v1, :cond_b

    const/16 v1, 0x39

    if-le v2, v1, :cond_a

    const/16 v1, 0x61

    if-lt v2, v1, :cond_b

    :cond_a
    const/16 v1, 0x7a

    if-le v2, v1, :cond_c

    :cond_b
    move-object p0, v3

    goto :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_d
    if-eq v1, v5, :cond_e

    if-ne v1, v6, :cond_0

    :cond_e
    move-object p0, v3

    goto :goto_0
.end method
