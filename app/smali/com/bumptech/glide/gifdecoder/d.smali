.class public Lcom/bumptech/glide/gifdecoder/d;
.super Ljava/lang/Object;
.source "StandardGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# static fields
.field private static final u:Ljava/lang/String; = "d"


# instance fields
.field private a:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final b:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

.field private d:Ljava/nio/ByteBuffer;

.field private e:[B

.field private f:[S

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private k:I

.field private l:Lcom/bumptech/glide/gifdecoder/b;

.field private m:Landroid/graphics/Bitmap;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Landroid/graphics/Bitmap$Config;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/gifdecoder/GifDecoder$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->b:[I

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->t:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    .line 7
    new-instance p1, Lcom/bumptech/glide/gifdecoder/b;

    invoke-direct {p1}, Lcom/bumptech/glide/gifdecoder/b;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$a;Lcom/bumptech/glide/gifdecoder/b;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/gifdecoder/GifDecoder$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/d;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$a;)V

    .line 2
    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/gifdecoder/d;->a(Lcom/bumptech/glide/gifdecoder/b;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private a(III)I
    .locals 9
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 103
    :goto_0
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/d;->p:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    array-length v8, v7

    if-ge v1, v8, :cond_1

    if-ge v1, p2, :cond_1

    .line 104
    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    .line 105
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/d;->a:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p3

    move p3, p1

    .line 106
    :goto_1
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/d;->p:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    array-length v7, v1

    if-ge p3, v7, :cond_3

    if-ge p3, p2, :cond_3

    .line 107
    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    .line 108
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/d;->a:[I

    aget v1, v7, v1

    if-eqz v1, :cond_2

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    return v0

    .line 109
    :cond_4
    div-int/2addr v2, v6

    shl-int/lit8 p1, v2, 0x18

    div-int/2addr v3, v6

    shl-int/lit8 p2, v3, 0x10

    or-int/2addr p1, p2

    div-int/2addr v4, v6

    shl-int/lit8 p2, v4, 0x8

    or-int/2addr p1, p2

    div-int/2addr v5, v6

    or-int/2addr p1, v5

    return p1
.end method

.method private a(Lcom/bumptech/glide/gifdecoder/a;Lcom/bumptech/glide/gifdecoder/a;)Landroid/graphics/Bitmap;
    .locals 10

    .line 48
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/d;->j:[I

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 49
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    .line 52
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x3

    if-eqz p2, :cond_2

    .line 53
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/a;->g:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 54
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    const/4 v9, 0x1

    if-eqz p2, :cond_8

    .line 55
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/a;->g:I

    if-lez v2, :cond_8

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 56
    iget-boolean v1, p1, Lcom/bumptech/glide/gifdecoder/a;->f:Z

    if-nez v1, :cond_4

    .line 57
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget v2, v1, Lcom/bumptech/glide/gifdecoder/b;->l:I

    .line 58
    iget-object v3, p1, Lcom/bumptech/glide/gifdecoder/a;->k:[I

    if-eqz v3, :cond_3

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/b;->j:I

    iget v3, p1, Lcom/bumptech/glide/gifdecoder/a;->h:I

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 59
    :cond_4
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    if-nez v1, :cond_5

    .line 60
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->s:Ljava/lang/Boolean;

    .line 61
    :cond_5
    :goto_0
    iget v1, p2, Lcom/bumptech/glide/gifdecoder/a;->d:I

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/d;->p:I

    div-int/2addr v1, v2

    .line 62
    iget v3, p2, Lcom/bumptech/glide/gifdecoder/a;->b:I

    div-int/2addr v3, v2

    .line 63
    iget v4, p2, Lcom/bumptech/glide/gifdecoder/a;->c:I

    div-int/2addr v4, v2

    .line 64
    iget p2, p2, Lcom/bumptech/glide/gifdecoder/a;->a:I

    div-int/2addr p2, v2

    .line 65
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    mul-int v3, v3, v2

    add-int/2addr v3, p2

    mul-int v1, v1, v2

    add-int/2addr v1, v3

    :goto_1
    if-ge v3, v1, :cond_8

    add-int p2, v3, v4

    move v2, v3

    :goto_2
    if-ge v2, p2, :cond_6

    .line 66
    aput v0, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 67
    :cond_6
    iget p2, p0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    add-int/2addr v3, p2

    goto :goto_1

    :cond_7
    if-ne v2, v1, :cond_8

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    .line 69
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/d;->q:I

    move-object v1, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 70
    :cond_8
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/d;->c(Lcom/bumptech/glide/gifdecoder/a;)V

    .line 71
    iget-boolean p2, p1, Lcom/bumptech/glide/gifdecoder/a;->e:Z

    if-nez p2, :cond_a

    iget p2, p0, Lcom/bumptech/glide/gifdecoder/d;->p:I

    if-eq p2, v9, :cond_9

    goto :goto_3

    .line 72
    :cond_9
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/d;->b(Lcom/bumptech/glide/gifdecoder/a;)V

    goto :goto_4

    .line 73
    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/d;->a(Lcom/bumptech/glide/gifdecoder/a;)V

    .line 74
    :goto_4
    iget-boolean p2, p0, Lcom/bumptech/glide/gifdecoder/d;->n:Z

    if-eqz p2, :cond_d

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/a;->g:I

    if-eqz p1, :cond_b

    if-ne p1, v9, :cond_d

    .line 75
    :cond_b
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    if-nez p1, :cond_c

    .line 76
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->h()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    .line 77
    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/d;->q:I

    move-object v1, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 78
    :cond_d
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->h()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    .line 79
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/d;->q:I

    move-object v0, p1

    move-object v1, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/gifdecoder/a;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 80
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/d;->j:[I

    .line 81
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/a;->d:I

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/d;->p:I

    div-int/2addr v3, v4

    .line 82
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/a;->b:I

    div-int/2addr v5, v4

    .line 83
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/a;->c:I

    div-int/2addr v6, v4

    .line 84
    iget v7, v1, Lcom/bumptech/glide/gifdecoder/a;->a:I

    div-int/2addr v7, v4

    .line 85
    iget v4, v0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    const/4 v9, 0x1

    .line 86
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 87
    :goto_0
    iget v11, v0, Lcom/bumptech/glide/gifdecoder/d;->p:I

    .line 88
    iget v12, v0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    .line 89
    iget v13, v0, Lcom/bumptech/glide/gifdecoder/d;->q:I

    .line 90
    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    .line 91
    iget-object v15, v0, Lcom/bumptech/glide/gifdecoder/d;->a:[I

    .line 92
    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/d;->s:Ljava/lang/Boolean;

    const/16 v16, 0x8

    move-object/from16 v18, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x1

    :goto_1
    if-ge v9, v3, :cond_10

    move-object/from16 v20, v8

    .line 93
    iget-boolean v8, v1, Lcom/bumptech/glide/gifdecoder/a;->e:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    if-lt v10, v3, :cond_4

    move/from16 v22, v3

    add-int/lit8 v3, v19, 0x1

    if-eq v3, v8, :cond_3

    const/4 v8, 0x3

    if-eq v3, v8, :cond_2

    const/4 v8, 0x4

    if-eq v3, v8, :cond_1

    move/from16 v19, v3

    goto :goto_2

    :cond_1
    move/from16 v19, v3

    const/4 v10, 0x1

    const/16 v16, 0x2

    goto :goto_2

    :cond_2
    const/4 v8, 0x4

    move/from16 v19, v3

    const/4 v10, 0x2

    const/16 v16, 0x4

    goto :goto_2

    :cond_3
    const/4 v8, 0x4

    move/from16 v19, v3

    const/4 v10, 0x4

    goto :goto_2

    :cond_4
    move/from16 v22, v3

    :goto_2
    add-int v3, v10, v16

    goto :goto_3

    :cond_5
    move/from16 v22, v3

    move v3, v10

    move v10, v9

    :goto_3
    add-int/2addr v10, v5

    const/4 v8, 0x1

    if-ne v11, v8, :cond_6

    const/16 v17, 0x1

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    :goto_4
    if-ge v10, v13, :cond_d

    mul-int v10, v10, v12

    add-int v21, v10, v7

    add-int v8, v21, v6

    add-int/2addr v10, v12

    if-ge v10, v8, :cond_7

    move v8, v10

    :cond_7
    mul-int v10, v9, v11

    move/from16 v23, v3

    .line 94
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/a;->c:I

    mul-int v10, v10, v3

    if-eqz v17, :cond_a

    move/from16 v3, v21

    :goto_5
    if-ge v3, v8, :cond_e

    move/from16 v17, v5

    .line 95
    aget-byte v5, v14, v10

    and-int/lit16 v5, v5, 0xff

    .line 96
    aget v5, v15, v5

    if-eqz v5, :cond_8

    .line 97
    aput v5, v2, v3

    goto :goto_6

    :cond_8
    if-eqz v4, :cond_9

    if-nez v20, :cond_9

    move-object/from16 v20, v18

    :cond_9
    :goto_6
    add-int/2addr v10, v11

    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v17

    goto :goto_5

    :cond_a
    move/from16 v17, v5

    sub-int v3, v8, v21

    mul-int v3, v3, v11

    add-int/2addr v3, v10

    move/from16 v5, v21

    :goto_7
    move/from16 v21, v6

    if-ge v5, v8, :cond_f

    .line 98
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/a;->c:I

    invoke-direct {v0, v10, v3, v6}, Lcom/bumptech/glide/gifdecoder/d;->a(III)I

    move-result v6

    if-eqz v6, :cond_b

    .line 99
    aput v6, v2, v5

    goto :goto_8

    :cond_b
    if-eqz v4, :cond_c

    if-nez v20, :cond_c

    move-object/from16 v20, v18

    :cond_c
    :goto_8
    add-int/2addr v10, v11

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v21

    goto :goto_7

    :cond_d
    move/from16 v23, v3

    :cond_e
    move/from16 v17, v5

    move/from16 v21, v6

    :cond_f
    move-object/from16 v8, v20

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v17

    move/from16 v6, v21

    move/from16 v3, v22

    move/from16 v10, v23

    goto/16 :goto_1

    :cond_10
    move-object/from16 v20, v8

    .line 100
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->s:Ljava/lang/Boolean;

    if-nez v1, :cond_12

    if-nez v20, :cond_11

    const/4 v8, 0x0

    goto :goto_9

    .line 101
    :cond_11
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 102
    :goto_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->s:Ljava/lang/Boolean;

    :cond_12
    return-void
.end method

.method private b(Lcom/bumptech/glide/gifdecoder/a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/d;->j:[I

    .line 3
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/a;->d:I

    .line 4
    iget v4, v1, Lcom/bumptech/glide/gifdecoder/a;->b:I

    .line 5
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/a;->c:I

    .line 6
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/a;->a:I

    .line 7
    iget v7, v0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 8
    :goto_0
    iget v10, v0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    .line 9
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    .line 10
    iget-object v12, v0, Lcom/bumptech/glide/gifdecoder/d;->a:[I

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_1
    if-ge v14, v3, :cond_5

    add-int v16, v14, v4

    mul-int v16, v16, v10

    add-int v17, v16, v6

    add-int v8, v17, v5

    add-int v9, v16, v10

    if-ge v9, v8, :cond_1

    move v8, v9

    .line 11
    :cond_1
    iget v9, v1, Lcom/bumptech/glide/gifdecoder/a;->c:I

    mul-int v9, v9, v14

    move/from16 v13, v17

    :goto_2
    if-ge v13, v8, :cond_4

    .line 12
    aget-byte v1, v11, v9

    move/from16 v17, v3

    and-int/lit16 v3, v1, 0xff

    if-eq v3, v15, :cond_3

    .line 13
    aget v3, v12, v3

    if-eqz v3, :cond_2

    .line 14
    aput v3, v2, v13

    goto :goto_3

    :cond_2
    move v15, v1

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    goto :goto_2

    :cond_4
    move/from16 v17, v3

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 15
    :cond_5
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->s:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    if-eqz v7, :cond_6

    const/4 v1, -0x1

    if-eq v15, v1, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    .line 16
    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->s:Ljava/lang/Boolean;

    return-void
.end method

.method private c(Lcom/bumptech/glide/gifdecoder/a;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/d;->d:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/a;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget v2, v1, Lcom/bumptech/glide/gifdecoder/b;->f:I

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/b;->g:I

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/a;->c:I

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/a;->d:I

    :goto_0
    mul-int v2, v2, v1

    .line 4
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v2, :cond_3

    .line 5
    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->b(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    .line 6
    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    .line 7
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/d;->f:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_4

    new-array v3, v4, [S

    .line 8
    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/d;->f:[S

    .line 9
    :cond_4
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/d;->f:[S

    .line 10
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/d;->g:[B

    if-nez v5, :cond_5

    new-array v5, v4, [B

    .line 11
    iput-object v5, v0, Lcom/bumptech/glide/gifdecoder/d;->g:[B

    .line 12
    :cond_5
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/d;->g:[B

    .line 13
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/d;->h:[B

    if-nez v6, :cond_6

    const/16 v6, 0x1001

    new-array v6, v6, [B

    .line 14
    iput-object v6, v0, Lcom/bumptech/glide/gifdecoder/d;->h:[B

    .line 15
    :cond_6
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/d;->h:[B

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/d;->j()I

    move-result v7

    const/4 v8, 0x1

    shl-int v9, v8, v7

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v9, 0x2

    add-int/2addr v7, v8

    shl-int v12, v8, v7

    sub-int/2addr v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_7

    .line 17
    aput-short v13, v3, v14

    int-to-byte v15, v14

    .line 18
    aput-byte v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 19
    :cond_7
    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/d;->e:[B

    const/4 v15, -0x1

    move/from16 v23, v7

    move/from16 v21, v11

    move/from16 v22, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_2
    if-ge v13, v2, :cond_12

    if-nez v16, :cond_9

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/d;->i()I

    move-result v16

    if-gtz v16, :cond_8

    const/4 v3, 0x3

    .line 21
    iput v3, v0, Lcom/bumptech/glide/gifdecoder/d;->o:I

    goto/16 :goto_6

    :cond_8
    const/16 v17, 0x0

    .line 22
    :cond_9
    aget-byte v4, v14, v17

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v18

    add-int v19, v19, v4

    add-int/lit8 v18, v18, 0x8

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v4, v18

    move/from16 v8, v21

    move/from16 v15, v23

    move/from16 v0, v24

    move/from16 v23, v7

    move/from16 v7, v25

    :goto_3
    if-lt v4, v15, :cond_11

    move/from16 v24, v11

    and-int v11, v19, v22

    shr-int v19, v19, v15

    sub-int/2addr v4, v15

    if-ne v11, v9, :cond_a

    move/from16 v22, v12

    move/from16 v15, v23

    move/from16 v8, v24

    move v11, v8

    const/4 v0, -0x1

    goto :goto_3

    :cond_a
    if-ne v11, v10, :cond_b

    move/from16 v18, v4

    move/from16 v25, v7

    move/from16 v21, v8

    move/from16 v7, v23

    move/from16 v11, v24

    const/16 v4, 0x1000

    const/4 v8, 0x1

    move/from16 v24, v0

    move/from16 v23, v15

    const/4 v15, -0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_b
    move/from16 v25, v4

    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    .line 23
    aget-byte v0, v5, v11

    aput-byte v0, v1, v20

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v13, v13, 0x1

    move v0, v11

    move v7, v0

    move/from16 v11, v24

    move/from16 v4, v25

    goto :goto_3

    :cond_c
    if-lt v11, v8, :cond_d

    int-to-byte v7, v7

    .line 24
    aput-byte v7, v6, v26

    add-int/lit8 v26, v26, 0x1

    move v7, v0

    goto :goto_4

    :cond_d
    move v7, v11

    :goto_4
    if-lt v7, v9, :cond_e

    .line 25
    aget-byte v21, v5, v7

    aput-byte v21, v6, v26

    add-int/lit8 v26, v26, 0x1

    .line 26
    aget-short v7, v3, v7

    goto :goto_4

    .line 27
    :cond_e
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v4, v7

    .line 28
    aput-byte v4, v1, v20

    :goto_5
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v13, v13, 0x1

    if-lez v26, :cond_f

    add-int/lit8 v26, v26, -0x1

    .line 29
    aget-byte v27, v6, v26

    aput-byte v27, v1, v20

    goto :goto_5

    :cond_f
    move-object/from16 v27, v6

    const/16 v6, 0x1000

    if-ge v8, v6, :cond_10

    int-to-short v0, v0

    .line 30
    aput-short v0, v3, v8

    .line 31
    aput-byte v4, v5, v8

    add-int/lit8 v8, v8, 0x1

    and-int v0, v8, v22

    if-nez v0, :cond_10

    if-ge v8, v6, :cond_10

    add-int/lit8 v15, v15, 0x1

    add-int v22, v22, v8

    :cond_10
    move v0, v11

    move/from16 v11, v24

    move/from16 v4, v25

    move-object/from16 v6, v27

    goto/16 :goto_3

    :cond_11
    move/from16 v25, v4

    move-object/from16 v27, v6

    move/from16 v24, v0

    move/from16 v21, v8

    move/from16 v18, v25

    const/16 v4, 0x1000

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v25, v7

    move/from16 v7, v23

    move/from16 v23, v15

    const/4 v15, -0x1

    goto/16 :goto_2

    :cond_12
    :goto_6
    move/from16 v13, v20

    const/4 v0, 0x0

    .line 32
    invoke-static {v1, v13, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->t:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/d;->q:I

    invoke-interface {v1, v2, v3, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method

.method private i()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->j()I

    move-result v0

    if-gtz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->e:[B

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v0
.end method

.method private j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/b;->c:I

    if-ge p1, v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/gifdecoder/a;

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/a;->i:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/b;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    if-gez v0, :cond_2

    .line 4
    :cond_0
    sget-object v0, Lcom/bumptech/glide/gifdecoder/d;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/bumptech/glide/gifdecoder/d;->u:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/b;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/d;->o:I

    .line 7
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/d;->o:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/d;->o:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/d;->o:I

    .line 9
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/d;->e:[B

    if-nez v4, :cond_4

    .line 10
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->b(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/gifdecoder/d;->e:[B

    .line 11
    :cond_4
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/b;->e:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/gifdecoder/a;

    .line 12
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_5

    .line 13
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/b;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/gifdecoder/a;

    goto :goto_0

    :cond_5
    move-object v5, v3

    .line 14
    :goto_0
    iget-object v6, v4, Lcom/bumptech/glide/gifdecoder/a;->k:[I

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/bumptech/glide/gifdecoder/a;->k:[I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/b;->a:[I

    :goto_1
    iput-object v6, p0, Lcom/bumptech/glide/gifdecoder/d;->a:[I

    if-nez v6, :cond_8

    .line 15
    sget-object v0, Lcom/bumptech/glide/gifdecoder/d;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    sget-object v0, Lcom/bumptech/glide/gifdecoder/d;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid color table found for frame #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_7
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/d;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-object v3

    .line 19
    :cond_8
    :try_start_1
    iget-boolean v1, v4, Lcom/bumptech/glide/gifdecoder/a;->f:Z

    if-eqz v1, :cond_9

    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->b:[I

    array-length v2, v6

    invoke-static {v6, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->b:[I

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->a:[I

    .line 22
    iget v2, v4, Lcom/bumptech/glide/gifdecoder/a;->h:I

    aput v0, v1, v2

    .line 23
    :cond_9
    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/gifdecoder/d;->a(Lcom/bumptech/glide/gifdecoder/a;Lcom/bumptech/glide/gifdecoder/a;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 24
    :cond_a
    :goto_2
    :try_start_2
    sget-object v0, Lcom/bumptech/glide/gifdecoder/d;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    sget-object v0, Lcom/bumptech/glide/gifdecoder/d;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/d;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :cond_b
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->t:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/gifdecoder/b;Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/gifdecoder/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-lez p3, :cond_2

    .line 27
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/d;->o:I

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    .line 31
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/d;->d:Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    iget-object p2, p0, Lcom/bumptech/glide/gifdecoder/d;->d:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/d;->n:Z

    .line 35
    iget-object p2, p1, Lcom/bumptech/glide/gifdecoder/b;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/a;

    .line 36
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/a;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/bumptech/glide/gifdecoder/d;->n:Z

    .line 38
    :cond_1
    iput p3, p0, Lcom/bumptech/glide/gifdecoder/d;->p:I

    .line 39
    iget p2, p1, Lcom/bumptech/glide/gifdecoder/b;->f:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    .line 40
    iget p2, p1, Lcom/bumptech/glide/gifdecoder/b;->g:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/gifdecoder/d;->q:I

    .line 41
    iget-object p2, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget p3, p1, Lcom/bumptech/glide/gifdecoder/b;->f:I

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/b;->g:I

    mul-int p3, p3, p1

    invoke-interface {p2, p3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->b(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    .line 42
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget p2, p0, Lcom/bumptech/glide/gifdecoder/d;->r:I

    iget p3, p0, Lcom/bumptech/glide/gifdecoder/d;->q:I

    mul-int p2, p2, p3

    invoke-interface {p1, p2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 44
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/b;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/b;->c:I

    return v0
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a([B)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->j:[I

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a([I)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(Landroid/graphics/Bitmap;)V

    .line 8
    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->m:Landroid/graphics/Bitmap;

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->d:Ljava/nio/ByteBuffer;

    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->s:Ljava/lang/Boolean;

    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->e:[B

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a([B)V

    :cond_3
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->l:Lcom/bumptech/glide/gifdecoder/b;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/b;->c:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/d;->a(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/d;->k:I

    return v0
.end method

.method public g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->j:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method
