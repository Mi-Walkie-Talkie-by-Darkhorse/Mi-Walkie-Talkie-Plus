.class public Lcom/ifengyu/intercom/m/b/d;
.super Lcom/ifengyu/intercom/m/b/c;
.source "EditChannelDialogBuilder.java"


# static fields
.field private static final D:[I

.field private static final E:[I

.field private static final F:[I

.field private static final G:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ifengyu/intercom/m/b/d;->D:[I

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/ifengyu/intercom/m/b/d;->E:[I

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lcom/ifengyu/intercom/m/b/d;->F:[I

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lcom/ifengyu/intercom/m/b/d;->G:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        -0x1
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x5
        0x7
        0x0
        0x2
        0x5
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x5
        0x0
        0x5
        0x0
        0x5
        0x0
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/b/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private R([II)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    aget v1, p1, v0

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    .line 3
    aget v1, p1, v0

    if-ne p2, v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x3

    .line 4
    aget v1, p1, v0

    if-ne p2, v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x4

    .line 5
    aget v1, p1, v0

    if-ne p2, v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x5

    .line 6
    aget v1, p1, v0

    if-ne p2, v1, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x6

    .line 7
    aget v1, p1, v0

    if-ne p2, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x7

    .line 8
    aget p1, p1, v0

    if-ne p2, p1, :cond_7

    return v0

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method private S(F)Z
    .locals 1

    const v0, 0x43cce000    # 409.75f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x43ccfe66

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected L(I[II)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/ifengyu/intercom/m/b/d;->D:[I

    aget v1, v1, p3

    const/4 v2, -0x1

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x5

    const v5, 0x43cce000    # 409.75f

    const v6, 0x3c23d70a    # 0.01f

    const/high16 v7, 0x43dc0000    # 440.0f

    const/high16 v8, 0x43d70000    # 430.0f

    const/4 v9, 0x3

    const v10, 0x3dcccccd    # 0.1f

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 2
    :pswitch_0
    aget v15, p2, v14

    mul-int/lit8 v15, v15, 0x64

    aget v16, p2, v13

    mul-int/lit8 v16, v16, 0xa

    add-int v15, v15, v16

    aget v11, p2, v11

    add-int/2addr v15, v11

    int-to-float v11, v15

    aget v9, p2, v9

    int-to-float v9, v9

    mul-float v9, v9, v10

    add-float/2addr v11, v9

    aget v9, p2, v12

    int-to-float v9, v9

    mul-float v9, v9, v6

    add-float/2addr v11, v9

    aget v6, p2, v4

    int-to-float v6, v6

    mul-float v6, v6, v3

    add-float/2addr v11, v6

    int-to-float v3, v1

    const v6, 0x38d1b717    # 1.0E-4f

    mul-float v3, v3, v6

    add-float/2addr v11, v3

    cmpl-float v3, v11, v5

    if-ltz v3, :cond_0

    const v3, 0x43ccfe66

    cmpg-float v3, v11, v3

    if-lez v3, :cond_1

    :cond_0
    cmpl-float v3, v11, v8

    if-ltz v3, :cond_2

    cmpg-float v3, v11, v7

    if-gtz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 3
    :goto_0
    sget-object v5, Lcom/ifengyu/intercom/m/b/d;->F:[I

    aget v4, p2, v4

    invoke-direct {v0, v5, v4}, Lcom/ifengyu/intercom/m/b/d;->R([II)I

    move-result v4

    if-eq v4, v2, :cond_a

    if-eqz v3, :cond_c

    .line 4
    sget-object v2, Lcom/ifengyu/intercom/m/b/d;->G:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_c

    goto/16 :goto_3

    .line 5
    :pswitch_1
    aget v15, p2, v14

    mul-int/lit8 v15, v15, 0x64

    aget v16, p2, v13

    mul-int/lit8 v16, v16, 0xa

    add-int v15, v15, v16

    aget v16, p2, v11

    add-int v15, v15, v16

    int-to-float v15, v15

    aget v9, p2, v9

    int-to-float v9, v9

    mul-float v9, v9, v10

    add-float/2addr v15, v9

    aget v9, p2, v12

    int-to-float v9, v9

    mul-float v9, v9, v6

    add-float/2addr v15, v9

    int-to-float v6, v1

    mul-float v6, v6, v3

    add-float/2addr v15, v6

    cmpl-float v3, v15, v5

    if-ltz v3, :cond_3

    const v3, 0x43ccfe56    # 409.987f

    cmpg-float v3, v15, v3

    if-lez v3, :cond_4

    :cond_3
    cmpl-float v3, v15, v8

    if-ltz v3, :cond_5

    cmpg-float v3, v15, v7

    if-gtz v3, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 6
    :goto_1
    invoke-direct {v0, v15}, Lcom/ifengyu/intercom/m/b/d;->S(F)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7
    sget-object v4, Lcom/ifengyu/intercom/m/b/d;->E:[I

    aget v5, p2, v12

    invoke-direct {v0, v4, v5}, Lcom/ifengyu/intercom/m/b/d;->R([II)I

    move-result v4

    if-eq v4, v2, :cond_a

    if-eqz v3, :cond_c

    .line 8
    sget-object v2, Lcom/ifengyu/intercom/m/b/d;->F:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_c

    goto/16 :goto_3

    :cond_6
    if-eqz v3, :cond_c

    if-eqz v1, :cond_d

    if-eq v1, v11, :cond_d

    if-eq v1, v4, :cond_d

    const/4 v2, 0x7

    if-ne v1, v2, :cond_c

    goto/16 :goto_3

    .line 9
    :pswitch_2
    aget v2, p2, v14

    mul-int/lit8 v2, v2, 0x64

    aget v3, p2, v13

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    aget v3, p2, v11

    add-int/2addr v2, v3

    int-to-float v2, v2

    aget v3, p2, v9

    int-to-float v3, v3

    mul-float v3, v3, v10

    add-float/2addr v2, v3

    int-to-float v3, v1

    mul-float v3, v3, v6

    add-float/2addr v2, v3

    cmpl-float v3, v2, v5

    if-ltz v3, :cond_7

    const v3, 0x43ccfd71

    cmpg-float v3, v2, v3

    if-lez v3, :cond_8

    :cond_7
    cmpl-float v3, v2, v8

    if-ltz v3, :cond_9

    cmpg-float v3, v2, v7

    if-gtz v3, :cond_9

    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    .line 10
    :goto_2
    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/m/b/d;->S(F)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v3, :cond_c

    if-eq v1, v12, :cond_c

    const/16 v2, 0x9

    if-eq v1, v2, :cond_c

    goto :goto_3

    :cond_a
    move v14, v3

    goto :goto_4

    .line 11
    :pswitch_3
    aget v2, p2, v14

    mul-int/lit8 v2, v2, 0x64

    aget v3, p2, v13

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    aget v3, p2, v11

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float v1, v1, v10

    add-float/2addr v2, v1

    const v1, 0x43ccd99a    # 409.7f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_b

    const v1, 0x43ccf333    # 409.9f

    cmpg-float v1, v2, v1

    if-lez v1, :cond_d

    :cond_b
    cmpl-float v1, v2, v8

    if-ltz v1, :cond_c

    cmpg-float v1, v2, v7

    if-gtz v1, :cond_c

    goto :goto_3

    .line 12
    :pswitch_4
    aget v2, p2, v14

    mul-int/lit8 v2, v2, 0x64

    aget v3, p2, v13

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/16 v1, 0x199

    if-eq v2, v1, :cond_d

    const/16 v1, 0x1ae

    if-lt v2, v1, :cond_c

    const/16 v1, 0x1b8

    if-gt v2, v1, :cond_c

    goto :goto_3

    :pswitch_5
    if-eqz v1, :cond_d

    if-eq v1, v9, :cond_d

    if-ne v1, v12, :cond_c

    goto :goto_3

    :pswitch_6
    if-ne v1, v12, :cond_c

    goto :goto_3

    :cond_c
    const/4 v13, 0x0

    :cond_d
    :goto_3
    move v14, v13

    :goto_4
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected M(I[II)V
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/m/b/c;->H()V

    :cond_0
    return-void
.end method

.method protected N(I[II)V
    .locals 0

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/m/b/d;->F:[I

    aget p2, p2, p3

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/m/b/d;->R([II)I

    move-result p1

    .line 2
    sget-object p2, Lcom/ifengyu/intercom/m/b/d;->G:[I

    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/m/b/c;->P(I)V

    :cond_0
    return-void
.end method
