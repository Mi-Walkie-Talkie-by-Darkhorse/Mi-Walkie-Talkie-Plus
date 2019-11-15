.class public final Lcom/bumptech/glide/load/resource/bitmap/k;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/k$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/bumptech/glide/load/resource/bitmap/k$a;

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final i:Lcom/bumptech/glide/load/engine/a/e;

.field private final j:Landroid/util/DisplayMetrics;

.field private final k:Lcom/bumptech/glide/load/engine/a/b;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/bumptech/glide/load/resource/bitmap/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->d:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Lcom/bumptech/glide/load/d;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->g:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/bumptech/glide/load/d;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->c:Lcom/bumptech/glide/load/d;

    const-string v0, "com.bumtpech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->d:Lcom/bumptech/glide/load/d;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "image/vnd.wap.wbmp"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "image/x-ico"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->e:Ljava/util/Set;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/k$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->f:Lcom/bumptech/glide/load/resource/bitmap/k$a;

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->b:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->d:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->e:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->g:Ljava/util/Set;

    invoke-static {v4}, Lcom/bumptech/glide/util/i;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/m;->a()Lcom/bumptech/glide/load/resource/bitmap/m;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->m:Lcom/bumptech/glide/load/resource/bitmap/m;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->l:Ljava/util/List;

    invoke-static {p2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->j:Landroid/util/DisplayMetrics;

    invoke-static {p3}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/e;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    invoke-static {p4}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/b;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->k:Lcom/bumptech/glide/load/engine/a/b;

    return-void
.end method

.method private static a(D)I
    .locals 4

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(D)I

    move-result v0

    int-to-float v1, v0

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    float-to-double v2, v1

    div-double v2, p0, v2

    int-to-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(D)I

    move-result v0

    return v0
.end method

.method private a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;ZIIZLcom/bumptech/glide/load/resource/bitmap/k$a;)Landroid/graphics/Bitmap;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    invoke-static {v0, v1, v2, v4}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v10, v4, v5

    const/4 v5, 0x1

    aget v11, v4, v5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, -0x1

    if-eq v10, v4, :cond_0

    const/4 v4, -0x1

    if-ne v11, v4, :cond_b

    :cond_0
    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->k:Lcom/bumptech/glide/load/engine/a/b;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/bumptech/glide/load/b;->b(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/a/b;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/bumptech/glide/load/resource/bitmap/p;->a(I)I

    move-result v9

    invoke-static/range {v25 .. v25}, Lcom/bumptech/glide/load/resource/bitmap/p;->b(I)Z

    move-result v18

    const/high16 v4, -0x80000000

    move/from16 v0, p6

    if-ne v0, v4, :cond_6

    move v12, v10

    :goto_1
    const/high16 v4, -0x80000000

    move/from16 v0, p7

    if-ne v0, v4, :cond_7

    move v13, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->k:Lcom/bumptech/glide/load/engine/a/b;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/bumptech/glide/load/b;->a(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    move-object/from16 v8, p3

    move-object/from16 v14, p2

    invoke-static/range {v4 .. v14}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p4

    move-object/from16 v19, p2

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-direct/range {v14 .. v21}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_8

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    if-eqz v5, :cond_3

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p8, :cond_9

    if-eqz v5, :cond_9

    :cond_2
    :goto_4
    if-lez v12, :cond_3

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    move-object/from16 v0, p2

    invoke-static {v0, v4, v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/a/e;II)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    invoke-static {v0, v1, v2, v4}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    move-object/from16 v0, p9

    invoke-interface {v0, v4, v14}, Lcom/bumptech/glide/load/resource/bitmap/k$a;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;)V

    const-string v4, "Downsampler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v12, v24

    move-object/from16 v13, p2

    move/from16 v15, p6

    move/from16 v16, p7

    move-wide/from16 v17, v22

    invoke-static/range {v10 .. v18}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V

    :cond_4
    const/4 v4, 0x0

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->j:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v14, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    move/from16 v0, v25

    invoke-static {v4, v14, v0}, Lcom/bumptech/glide/load/resource/bitmap/p;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v5, v14}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    :cond_5
    return-object v4

    :cond_6
    move/from16 v12, p6

    goto/16 :goto_1

    :cond_7
    move/from16 v13, p7

    goto/16 :goto_2

    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v4, v4

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_5
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v10

    int-to-float v7, v5

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v7, v11

    int-to-float v8, v5

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v6, v7

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v13

    const-string v6, "Downsampler"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Downsampler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calculated target ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] for source ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], sampleSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", targetDensity: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", density: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", density multiplier: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_b
    move/from16 v17, p5

    goto/16 :goto_0
.end method

.method private static declared-synchronized a()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const-class v1, Lcom/bumptech/glide/load/resource/bitmap/k;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/k;->d(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outMimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private static a(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V
    .locals 5

    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with inBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p7, p8}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/a/e;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/a/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static a(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p6, :cond_0

    if-gtz p7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v6, 0x5a

    move/from16 v0, p5

    if-eq v0, v6, :cond_2

    const/16 v6, 0x10e

    move/from16 v0, p5

    if-ne v0, v6, :cond_3

    :cond_2
    move-object/from16 v0, p4

    move/from16 v1, p7

    move/from16 v2, p6

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a(IIII)F

    move-result v6

    move v9, v6

    :goto_1
    const/4 v6, 0x0

    cmpg-float v6, v9, v6

    if-gtz v6, :cond_4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot scale with factor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", source: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], target: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a(IIII)F

    move-result v6

    move v9, v6

    goto :goto_1

    :cond_4
    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v7

    if-nez v7, :cond_5

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot round with null rounding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move/from16 v0, p6

    int-to-float v6, v0

    mul-float/2addr v6, v9

    float-to-double v10, v6

    invoke-static {v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(D)I

    move-result v6

    move/from16 v0, p7

    int-to-float v8, v0

    mul-float/2addr v8, v9

    float-to-double v10, v8

    invoke-static {v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(D)I

    move-result v8

    div-int v6, p6, v6

    div-int v8, p7, v8

    sget-object v10, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->a:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v7, v10, :cond_9

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-gt v8, v10, :cond_a

    sget-object v8, Lcom/bumptech/glide/load/resource/bitmap/k;->e:Ljava/util/Set;

    move-object/from16 v0, p10

    iget-object v10, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v6, 0x1

    :cond_6
    :goto_3
    move-object/from16 v0, p10

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->b:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p0, v7, :cond_b

    const/16 v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move/from16 v0, p6

    int-to-float v8, v0

    int-to-float v10, v7

    div-float/2addr v8, v10

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    move/from16 v0, p7

    int-to-float v10, v0

    int-to-float v7, v7

    div-float v7, v10, v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    div-int/lit8 v10, v6, 0x8

    if-lez v10, :cond_7

    div-int/2addr v8, v10

    div-int/2addr v7, v10

    :cond_7
    :goto_4
    move-object/from16 v0, p4

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v0, v8, v7, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a(IIII)F

    move-result v10

    float-to-double v10, v10

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v12, v13, :cond_8

    invoke-static {v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(D)I

    move-result v12

    move-object/from16 v0, p10

    iput v12, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    const v12, 0x3b9aca00

    move-object/from16 v0, p10

    iput v12, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_8
    invoke-static/range {p10 .. p10}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v12

    if-eqz v12, :cond_13

    const/4 v12, 0x1

    move-object/from16 v0, p10

    iput-boolean v12, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_5
    const-string v12, "Downsampler"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "Downsampler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calculate scaling, source: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], target: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "], power of two scaled: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "x"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], exact scale factor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", power of 2 sample size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", adjusted scale factor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", target density: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p10

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", density: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p10

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_2

    :cond_a
    const/4 v8, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v8, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->a:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v7, v8, :cond_6

    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    shl-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_b
    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->e:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq p0, v7, :cond_c

    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->d:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p0, v7, :cond_d

    :cond_c
    move/from16 v0, p6

    int-to-float v7, v0

    int-to-float v8, v6

    div-float/2addr v7, v8

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    move/from16 v0, p7

    int-to-float v7, v0

    int-to-float v10, v6

    div-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    goto/16 :goto_4

    :cond_d
    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->g:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq p0, v7, :cond_e

    sget-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->f:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p0, v7, :cond_10

    :cond_e
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_f

    move/from16 v0, p6

    int-to-float v7, v0

    int-to-float v8, v6

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v8

    move/from16 v0, p7

    int-to-float v7, v0

    int-to-float v10, v6

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto/16 :goto_4

    :cond_f
    move/from16 v0, p6

    int-to-float v7, v0

    int-to-float v8, v6

    div-float/2addr v7, v8

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    move/from16 v0, p7

    int-to-float v7, v0

    int-to-float v10, v6

    div-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    goto/16 :goto_4

    :cond_10
    rem-int v7, p6, v6

    if-nez v7, :cond_11

    rem-int v7, p7, v6

    if-eqz v7, :cond_12

    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v10, 0x1

    aget v7, v7, v10

    goto/16 :goto_4

    :cond_12
    div-int v8, p6, v6

    div-int v7, p7, v6

    goto/16 :goto_4

    :cond_13
    const/4 v12, 0x0

    move-object/from16 v0, p10

    iput v12, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move-object/from16 v0, p10

    iput v12, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto/16 :goto_5
.end method

.method private a(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->m:Lcom/bumptech/glide/load/resource/bitmap/m;

    move v1, p6

    move v2, p7

    move-object v3, p5

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/bitmap/m;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/DecodeFormat;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->a:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->b:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p2, v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->k:Lcom/bumptech/glide/load/engine/a/b;

    invoke-static {v0, p1, v2}, Lcom/bumptech/glide/load/b;->a(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/a/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->a()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    iput-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_4

    iget-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_4

    iget-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Downsampler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 2

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;)Landroid/graphics/Bitmap;

    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v0, v3

    return-object v0
.end method

.method private static b(D)I
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method private static b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0xa00000

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/p;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/p;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/k$a;->a()V

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-static {v3, v0, v1, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v0

    const-string v1, "Downsampler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Downsampler"

    const-string v2, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v1}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    iput-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/k;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/k$a;Lcom/bumptech/glide/load/engine/a/e;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/p;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/p;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/k;->d(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/q",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/k;->f:Lcom/bumptech/glide/load/resource/bitmap/k$a;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/resource/bitmap/k$a;)Lcom/bumptech/glide/load/engine/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/resource/bitmap/k$a;)Lcom/bumptech/glide/load/engine/q;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/e;",
            "Lcom/bumptech/glide/load/resource/bitmap/k$a;",
            ")",
            "Lcom/bumptech/glide/load/engine/q",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const-string v1, "You must provide an InputStream that supports mark()"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/h;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->k:Lcom/bumptech/glide/load/engine/a/b;

    const/high16 v1, 0x10000

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [B

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/k;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Lcom/bumptech/glide/load/d;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/bumptech/glide/load/d;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->c:Lcom/bumptech/glide/load/d;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->d:Lcom/bumptech/glide/load/d;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->d:Lcom/bumptech/glide/load/d;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->b:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v4, v1, :cond_1

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    move-object/from16 v9, p5

    :try_start_0
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;ZIIZLcom/bumptech/glide/load/resource/bitmap/k$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->i:Lcom/bumptech/glide/load/engine/a/e;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/e;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/resource/bitmap/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/k;->c(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->k:Lcom/bumptech/glide/load/engine/a/b;

    const-class v2, [B

    invoke-interface {v1, v10, v2}, Lcom/bumptech/glide/load/engine/a/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/k;->c(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->k:Lcom/bumptech/glide/load/engine/a/b;

    const-class v2, [B

    invoke-interface {v1, v10, v2}, Lcom/bumptech/glide/load/engine/a/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    throw v0

    :cond_1
    move v5, v0

    goto :goto_1
.end method

.method public a(Ljava/io/InputStream;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
