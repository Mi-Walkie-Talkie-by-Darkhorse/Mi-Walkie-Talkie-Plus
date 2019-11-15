.class public Lcom/bumptech/glide/gifdecoder/c;
.super Ljava/lang/Object;
.source "StandardGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final c:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private d:Ljava/nio/ByteBuffer;

.field private e:[B

.field private f:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:[S

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private n:I

.field private o:Lcom/bumptech/glide/gifdecoder/a;

.field private p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

.field private q:Landroid/graphics/Bitmap;

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/bumptech/glide/gifdecoder/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->c:[I

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/c;->g:I

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    new-instance v0, Lcom/bumptech/glide/gifdecoder/a;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$a;Lcom/bumptech/glide/gifdecoder/a;Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/c;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$a;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/gifdecoder/c;->a(Lcom/bumptech/glide/gifdecoder/a;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private a(III)I
    .locals 9
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/4 v2, 0x0

    move v0, p1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_0
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    add-int/2addr v7, p1

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    array-length v7, v7

    if-ge v0, v7, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, p1, p3

    :goto_1
    add-int v7, p1, p3

    iget v8, p0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    array-length v7, v7

    if-ge v0, v7, :cond_3

    if-ge v0, p2, :cond_3

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    aget v7, v8, v7

    if-eqz v7, :cond_2

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    :goto_2
    return v2

    :cond_4
    div-int v0, v6, v1

    shl-int/lit8 v0, v0, 0x18

    div-int v2, v5, v1

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    div-int v2, v4, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    div-int v1, v3, v1

    or-int v2, v0, v1

    goto :goto_2
.end method

.method private a(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->m:[I

    if-nez p2, :cond_0

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    if-lez v1, :cond_5

    move-object/from16 v0, p2

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->f:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/a;->l:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->k:[I

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/a;->j:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->h:I

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    div-int/2addr v3, v4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    div-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    div-int/2addr v5, v6

    move-object/from16 v0, p2

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->a:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    div-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    mul-int/2addr v4, v7

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    mul-int/2addr v3, v6

    add-int v6, v4, v3

    :goto_1
    if-ge v4, v6, :cond_5

    add-int v7, v4, v5

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_3

    aput v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/bumptech/glide/gifdecoder/c;->w:Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    add-int/2addr v4, v3

    goto :goto_1

    :cond_4
    move-object/from16 v0, p2

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->q:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->q:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/c;->u:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/bumptech/glide/gifdecoder/c;->a(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    div-int v11, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->b:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    div-int v12, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    div-int v13, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    div-int v14, v1, v3

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v11, :cond_d

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->e:Z

    if-eqz v7, :cond_11

    if-lt v3, v11, :cond_6

    add-int/lit8 v5, v5, 0x1

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_5
    add-int v7, v3, v4

    move/from16 v17, v7

    move v7, v5

    move v5, v4

    move/from16 v4, v17

    :goto_6
    add-int/2addr v3, v12

    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/c;->u:I

    if-ge v3, v8, :cond_c

    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    mul-int/2addr v8, v3

    add-int v9, v8, v14

    add-int v3, v9, v13

    move-object/from16 v0, p0

    iget v10, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    add-int/2addr v10, v8

    if-ge v10, v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    add-int/2addr v3, v8

    :cond_7
    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    mul-int/2addr v8, v6

    move-object/from16 v0, p1

    iget v10, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    mul-int/2addr v8, v10

    sub-int v10, v3, v9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    mul-int/2addr v10, v15

    add-int v15, v8, v10

    move v10, v9

    move v9, v8

    :goto_7
    if-ge v10, v3, :cond_c

    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    move-object/from16 v16, v0

    aget v8, v16, v8

    :goto_8
    if-eqz v8, :cond_b

    aput v8, v2, v10

    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    add-int/2addr v8, v9

    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v8

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_0
    const/4 v3, 0x4

    goto :goto_5

    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x4

    goto :goto_5

    :pswitch_2
    const/4 v3, 0x1

    const/4 v4, 0x2

    goto :goto_5

    :cond_a
    move-object/from16 v0, p1

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15, v8}, Lcom/bumptech/glide/gifdecoder/c;->a(III)I

    move-result v8

    goto :goto_8

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/bumptech/glide/gifdecoder/c;->w:Z

    if-nez v8, :cond_8

    if-eqz v1, :cond_8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/bumptech/glide/gifdecoder/c;->w:Z

    goto :goto_9

    :cond_c
    add-int/lit8 v6, v6, 0x1

    move v3, v4

    move v4, v5

    move v5, v7

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/bumptech/glide/gifdecoder/c;->r:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    if-eqz v1, :cond_e

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->q:Landroid/graphics/Bitmap;

    if-nez v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/c;->m()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->q:Landroid/graphics/Bitmap;

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->q:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/c;->u:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/c;->m()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/c;->u:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1

    :cond_11
    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v6

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 22

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->g:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->j:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/a;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/a;->g:I

    mul-int/2addr v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->i:[S

    if-nez v2, :cond_3

    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->i:[S

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->j:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->j:[B

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->k:[B

    if-nez v2, :cond_5

    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/c;->k:[B

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/c;->k()I

    move-result v16

    const/4 v2, 0x1

    shl-int v17, v2, v16

    add-int/lit8 v18, v17, 0x1

    add-int/lit8 v4, v17, 0x2

    const/4 v10, -0x1

    add-int/lit8 v2, v16, 0x1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/c;->i:[S

    const/4 v7, 0x0

    aput-short v7, v6, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/c;->j:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    mul-int/2addr v1, v2

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, v5

    move v11, v5

    move v6, v5

    move v9, v2

    move v12, v3

    move v13, v4

    move v2, v5

    move v3, v5

    move v4, v5

    :goto_2
    if-ge v7, v1, :cond_8

    if-nez v3, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/c;->l()I

    move-result v3

    if-gtz v3, :cond_9

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    :cond_8
    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/c;->e:[B

    aget-byte v14, v14, v2

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    add-int/2addr v5, v14

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v14, v2, 0x1

    add-int/lit8 v15, v3, -0x1

    move v2, v9

    move v3, v12

    move v9, v11

    move/from16 v21, v6

    move v6, v5

    move v5, v4

    move v4, v13

    move/from16 v13, v21

    :goto_4
    if-lt v13, v2, :cond_14

    and-int v11, v6, v3

    shr-int v12, v6, v2

    sub-int/2addr v13, v2

    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    add-int/lit8 v2, v16, 0x1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v17, 0x2

    const/4 v11, -0x1

    move v6, v12

    move v10, v11

    goto :goto_4

    :cond_b
    if-le v11, v4, :cond_c

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iput v6, v0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    move v11, v9

    move v6, v13

    move v9, v2

    move v13, v4

    move v2, v14

    move v4, v5

    move v5, v12

    move v12, v3

    move v3, v15

    goto :goto_2

    :cond_c
    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    move v11, v9

    move v6, v13

    move v9, v2

    move v13, v4

    move v2, v14

    move v4, v5

    move v5, v12

    move v12, v3

    move v3, v15

    goto :goto_2

    :cond_d
    const/4 v6, -0x1

    if-ne v10, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/c;->k:[B

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/c;->j:[B

    aget-byte v10, v10, v11

    aput-byte v10, v9, v8

    move v8, v6

    move v9, v11

    move v10, v11

    move v6, v12

    goto :goto_4

    :cond_e
    if-lt v11, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->k:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v19, v8

    move v8, v6

    move v9, v10

    :goto_5
    move/from16 v0, v17

    if-lt v9, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->k:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->j:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v9

    aput-byte v20, v19, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/c;->i:[S

    aget-short v8, v8, v9

    move v9, v8

    move v8, v6

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/c;->j:[B

    aget-byte v6, v6, v9

    and-int/lit16 v9, v6, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->k:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    int-to-byte v0, v9

    move/from16 v20, v0

    aput-byte v20, v19, v8

    const/16 v8, 0x1000

    if-ge v4, v8, :cond_10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/c;->i:[S

    int-to-short v10, v10

    aput-short v10, v8, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/c;->j:[B

    int-to-byte v10, v9

    aput-byte v10, v8, v4

    add-int/lit8 v4, v4, 0x1

    and-int v8, v4, v3

    if-nez v8, :cond_10

    const/16 v8, 0x1000

    if-ge v4, v8, :cond_10

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v4

    :cond_10
    move v8, v7

    move v7, v6

    :goto_6
    if-lez v7, :cond_12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->k:[B

    move-object/from16 v19, v0

    add-int/lit8 v7, v7, -0x1

    aget-byte v19, v19, v7

    aput-byte v19, v10, v5

    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v6

    goto :goto_6

    :cond_11
    return-void

    :cond_12
    move v6, v12

    move v10, v11

    move/from16 v21, v8

    move v8, v7

    move/from16 v7, v21

    goto/16 :goto_4

    :cond_13
    move v9, v11

    goto :goto_5

    :cond_14
    move v11, v9

    move v12, v3

    move v3, v15

    move v9, v2

    move v2, v14

    move/from16 v21, v13

    move v13, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v21

    goto/16 :goto_2
.end method

.method private j()V
    .locals 4

    const/16 v2, 0x4000

    const/4 v3, 0x0

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->g:I

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    :cond_1
    iput v3, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->g:I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/c;->g:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private k()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/c;->j()V

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()I
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/c;->k()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->e:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    const/16 v2, 0xff

    invoke-interface {v0, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->e:[B

    :cond_0
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->g:I

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    sub-int/2addr v0, v2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/c;->e:[B

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/c;->e:[B

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/c;->g:I

    iput v2, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/c;->j()V

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/c;->e:[B

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/bumptech/glide/gifdecoder/c;->a:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v6, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private m()Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/c;->w:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/c;->u:I

    invoke-interface {v1, v2, v3, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/a;->c:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->i:I

    :cond_0
    return v0
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/gifdecoder/a;Ljava/nio/ByteBuffer;I)V
    .locals 4

    monitor-enter p0

    if-gtz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sample size must be >=0, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/c;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/c;->r:Z

    iget-object v0, p1, Lcom/bumptech/glide/gifdecoder/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/c;->r:Z

    :cond_2
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/c;->t:I

    iget v0, p1, Lcom/bumptech/glide/gifdecoder/a;->f:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    iget v0, p1, Lcom/bumptech/glide/gifdecoder/a;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->u:I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/a;->f:I

    iget v2, p1, Lcom/bumptech/glide/gifdecoder/a;->g:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/c;->v:I

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/c;->u:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->m:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/a;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/a;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/c;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/a;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    return-void
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->m:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized h()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/a;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/bumptech/glide/gifdecoder/c;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/gifdecoder/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, frameCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/a;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", framePointer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    :cond_2
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Lcom/bumptech/glide/gifdecoder/c;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/bumptech/glide/gifdecoder/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/a;->e:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_a

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/a;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v3, v1

    :goto_1
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->k:[I

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->k:[I

    :goto_2
    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    if-nez v1, :cond_8

    sget-object v0, Lcom/bumptech/glide/gifdecoder/c;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/bumptech/glide/gifdecoder/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid color table found for frame #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/c;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/c;->s:I

    move-object v0, v2

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/a;->a:[I

    goto :goto_2

    :cond_8
    iget-boolean v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->f:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/c;->c:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    array-length v6, v6

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->c:[I

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->b:[I

    iget v2, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->h:I

    const/4 v4, 0x0

    aput v4, v1, v2

    :cond_9
    invoke-direct {p0, v0, v3}, Lcom/bumptech/glide/gifdecoder/c;->a(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    move-object v3, v2

    goto :goto_1
.end method

.method public i()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/c;->o:Lcom/bumptech/glide/gifdecoder/a;

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->l:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a([B)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->m:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->m:[I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a([I)V

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->q:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/c;->q:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/c;->d:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/c;->w:Z

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->e:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->e:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a([B)V

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/c;->p:Lcom/bumptech/glide/gifdecoder/GifDecoder$a;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/c;->f:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$a;->a([B)V

    :cond_4
    return-void
.end method
