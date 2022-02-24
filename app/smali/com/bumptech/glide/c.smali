.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static volatile j:Lcom/bumptech/glide/c;

.field private static volatile k:Z


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/x/e;

.field private final b:Lcom/bumptech/glide/load/engine/y/h;

.field private final c:Lcom/bumptech/glide/e;

.field private final d:Lcom/bumptech/glide/Registry;

.field private final e:Lcom/bumptech/glide/load/engine/x/b;

.field private final f:Lcom/bumptech/glide/manager/k;

.field private final g:Lcom/bumptech/glide/manager/d;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/MemoryCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/e;Ljava/util/Map;)V
    .locals 23
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/engine/y/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/engine/x/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/bumptech/glide/load/engine/x/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/bumptech/glide/manager/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/bumptech/glide/manager/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/request/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/i;",
            "Lcom/bumptech/glide/load/engine/y/h;",
            "Lcom/bumptech/glide/load/engine/x/e;",
            "Lcom/bumptech/glide/load/engine/x/b;",
            "Lcom/bumptech/glide/manager/k;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/request/e;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/h<",
            "**>;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    const-class v5, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/Integer;

    const-class v8, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    .line 3
    sget-object v9, Lcom/bumptech/glide/MemoryCategory;->b:Lcom/bumptech/glide/MemoryCategory;

    iput-object v9, v0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/MemoryCategory;

    .line 4
    iput-object v3, v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/x/e;

    .line 5
    iput-object v4, v0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/x/b;

    .line 6
    iput-object v1, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/y/h;

    move-object/from16 v9, p6

    .line 7
    iput-object v9, v0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/manager/k;

    move-object/from16 v9, p7

    .line 8
    iput-object v9, v0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/manager/d;

    .line 9
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/e;->h()Lcom/bumptech/glide/load/e;

    move-result-object v9

    sget-object v10, Lcom/bumptech/glide/load/resource/bitmap/j;->f:Lcom/bumptech/glide/load/d;

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/load/DecodeFormat;

    .line 10
    new-instance v10, Lcom/bumptech/glide/load/engine/a0/a;

    invoke-direct {v10, v1, v3, v9}, Lcom/bumptech/glide/load/engine/a0/a;-><init>(Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 12
    new-instance v9, Lcom/bumptech/glide/Registry;

    invoke-direct {v9}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v9, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    .line 13
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1b

    if-lt v10, v11, :cond_0

    .line 14
    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-direct {v10}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>()V

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 15
    :cond_0
    iget-object v9, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v10}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 16
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/j;

    iget-object v10, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    invoke-virtual {v10}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v10

    .line 17
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-direct {v9, v10, v11, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;)V

    .line 18
    new-instance v10, Lcom/bumptech/glide/load/k/f/a;

    iget-object v11, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    .line 19
    invoke-virtual {v11}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v2, v11, v3, v4}, Lcom/bumptech/glide/load/k/f/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/engine/x/b;)V

    .line 20
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/u;->b(Lcom/bumptech/glide/load/engine/x/e;)Lcom/bumptech/glide/load/f;

    move-result-object v11

    .line 21
    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/f;

    invoke-direct {v12, v9}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>(Lcom/bumptech/glide/load/resource/bitmap/j;)V

    .line 22
    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-direct {v13, v9, v4}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>(Lcom/bumptech/glide/load/resource/bitmap/j;Lcom/bumptech/glide/load/engine/x/b;)V

    .line 23
    new-instance v9, Lcom/bumptech/glide/load/k/d/e;

    invoke-direct {v9, v2}, Lcom/bumptech/glide/load/k/d/e;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v14, Lcom/bumptech/glide/load/j/s$c;

    invoke-direct {v14, v1}, Lcom/bumptech/glide/load/j/s$c;-><init>(Landroid/content/res/Resources;)V

    .line 25
    new-instance v15, Lcom/bumptech/glide/load/j/s$d;

    invoke-direct {v15, v1}, Lcom/bumptech/glide/load/j/s$d;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v16, v8

    .line 26
    new-instance v8, Lcom/bumptech/glide/load/j/s$b;

    invoke-direct {v8, v1}, Lcom/bumptech/glide/load/j/s$b;-><init>(Landroid/content/res/Resources;)V

    .line 27
    new-instance v2, Lcom/bumptech/glide/load/j/s$a;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/j/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v6

    .line 28
    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v6, v4}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Lcom/bumptech/glide/load/engine/x/b;)V

    move-object/from16 p3, v2

    .line 29
    new-instance v2, Lcom/bumptech/glide/load/k/g/a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/k/g/a;-><init>()V

    move-object/from16 p6, v2

    .line 30
    new-instance v2, Lcom/bumptech/glide/load/k/g/d;

    invoke-direct {v2}, Lcom/bumptech/glide/load/k/g/d;-><init>()V

    move-object/from16 p7, v2

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v18, v2

    .line 32
    iget-object v2, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    move-object/from16 v19, v15

    const-class v15, Ljava/nio/ByteBuffer;

    move-object/from16 v20, v7

    new-instance v7, Lcom/bumptech/glide/load/j/c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/c;-><init>()V

    .line 33
    invoke-virtual {v2, v15, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/Registry;

    const-class v7, Ljava/io/InputStream;

    new-instance v15, Lcom/bumptech/glide/load/j/t;

    invoke-direct {v15, v4}, Lcom/bumptech/glide/load/j/t;-><init>(Lcom/bumptech/glide/load/engine/x/b;)V

    .line 34
    invoke-virtual {v2, v7, v15}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/Registry;

    const-class v7, Ljava/nio/ByteBuffer;

    const-class v15, Landroid/graphics/Bitmap;

    move-object/from16 v21, v8

    const-string v8, "Bitmap"

    .line 35
    invoke-virtual {v2, v8, v7, v15, v12}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v7, Ljava/io/InputStream;

    const-class v15, Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {v2, v8, v7, v15, v13}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    const-class v15, Landroid/graphics/Bitmap;

    .line 37
    invoke-virtual {v2, v8, v7, v15, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    const-class v15, Landroid/graphics/Bitmap;

    move-object/from16 v22, v14

    .line 38
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/u;->a(Lcom/bumptech/glide/load/engine/x/e;)Lcom/bumptech/glide/load/f;

    move-result-object v14

    .line 39
    invoke-virtual {v2, v8, v7, v15, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v7, Landroid/graphics/Bitmap;

    const-class v14, Landroid/graphics/Bitmap;

    .line 40
    invoke-static {}, Lcom/bumptech/glide/load/j/v$a;->a()Lcom/bumptech/glide/load/j/v$a;

    move-result-object v15

    invoke-virtual {v2, v7, v14, v15}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v7, Landroid/graphics/Bitmap;

    const-class v14, Landroid/graphics/Bitmap;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/t;

    invoke-direct {v15}, Lcom/bumptech/glide/load/resource/bitmap/t;-><init>()V

    .line 41
    invoke-virtual {v2, v8, v7, v14, v15}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v7, Landroid/graphics/Bitmap;

    .line 42
    invoke-virtual {v2, v7, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    const-class v7, Ljava/nio/ByteBuffer;

    const-class v14, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v15, v1, v12}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    const-string v12, "BitmapDrawable"

    .line 43
    invoke-virtual {v2, v12, v7, v14, v15}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v7, Ljava/io/InputStream;

    const-class v14, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v15, v1, v13}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    .line 44
    invoke-virtual {v2, v12, v7, v14, v15}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v14, v1, v11}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    .line 45
    invoke-virtual {v2, v12, v7, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v11, v3, v6}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/g;)V

    .line 46
    invoke-virtual {v2, v7, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    const-class v6, Ljava/io/InputStream;

    const-class v7, Lcom/bumptech/glide/load/k/f/c;

    new-instance v11, Lcom/bumptech/glide/load/k/f/j;

    iget-object v12, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    .line 47
    invoke-virtual {v12}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12, v10, v4}, Lcom/bumptech/glide/load/k/f/j;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/x/b;)V

    const-string v12, "Gif"

    .line 48
    invoke-virtual {v2, v12, v6, v7, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v7, Lcom/bumptech/glide/load/k/f/c;

    .line 49
    invoke-virtual {v2, v12, v6, v7, v10}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v6, Lcom/bumptech/glide/load/k/f/c;

    new-instance v7, Lcom/bumptech/glide/load/k/f/d;

    invoke-direct {v7}, Lcom/bumptech/glide/load/k/f/d;-><init>()V

    .line 50
    invoke-virtual {v2, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    .line 51
    invoke-static {}, Lcom/bumptech/glide/load/j/v$a;->a()Lcom/bumptech/glide/load/j/v$a;

    move-result-object v6

    .line 52
    invoke-virtual {v2, v5, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lcom/bumptech/glide/load/k/f/h;

    invoke-direct {v7, v3}, Lcom/bumptech/glide/load/k/f/h;-><init>(Lcom/bumptech/glide/load/engine/x/e;)V

    .line 53
    invoke-virtual {v2, v8, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {v2, v5, v6, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v7, v9, v3}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>(Lcom/bumptech/glide/load/k/d/e;Lcom/bumptech/glide/load/engine/x/e;)V

    .line 55
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    new-instance v5, Lcom/bumptech/glide/load/k/c/a$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/k/c/a$a;-><init>()V

    .line 56
    invoke-virtual {v2, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/i/e$a;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/bumptech/glide/load/j/d$b;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/d$b;-><init>()V

    .line 57
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/f$e;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/f$e;-><init>()V

    .line 58
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/bumptech/glide/load/k/e/a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/k/e/a;-><init>()V

    .line 59
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/File;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/j/f$b;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/f$b;-><init>()V

    .line 60
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    .line 61
    invoke-static {}, Lcom/bumptech/glide/load/j/v$a;->a()Lcom/bumptech/glide/load/j/v$a;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    new-instance v5, Lcom/bumptech/glide/load/i/k$a;

    invoke-direct {v5, v4}, Lcom/bumptech/glide/load/i/k$a;-><init>(Lcom/bumptech/glide/load/engine/x/b;)V

    .line 62
    invoke-virtual {v2, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/i/e$a;)Lcom/bumptech/glide/Registry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    move-object/from16 v7, v22

    .line 63
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v8, v21

    .line 64
    invoke-virtual {v2, v5, v6, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/InputStream;

    move-object/from16 v6, v20

    .line 65
    invoke-virtual {v2, v6, v5, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    .line 66
    invoke-virtual {v2, v6, v5, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    move-object/from16 v7, v19

    .line 67
    invoke-virtual {v2, v6, v5, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v8, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v9, p3

    .line 68
    invoke-virtual {v2, v5, v8, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    .line 69
    invoke-virtual {v2, v6, v5, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    .line 70
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/j/e$c;

    invoke-direct {v6}, Lcom/bumptech/glide/load/j/e$c;-><init>()V

    move-object/from16 v7, v17

    .line 71
    invoke-virtual {v2, v7, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v8, Lcom/bumptech/glide/load/j/e$c;

    invoke-direct {v8}, Lcom/bumptech/glide/load/j/e$c;-><init>()V

    .line 72
    invoke-virtual {v2, v5, v6, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/j/u$c;

    invoke-direct {v6}, Lcom/bumptech/glide/load/j/u$c;-><init>()V

    .line 73
    invoke-virtual {v2, v7, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/j/u$b;

    invoke-direct {v6}, Lcom/bumptech/glide/load/j/u$b;-><init>()V

    .line 74
    invoke-virtual {v2, v7, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/j/u$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/j/u$a;-><init>()V

    .line 75
    invoke-virtual {v2, v7, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/y/b$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/y/b$a;-><init>()V

    .line 76
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/a$c;

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/j/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/j/a$b;

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/j/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 79
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/y/c$a;

    move-object/from16 v8, p1

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/j/y/c$a;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/y/d$a;

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/j/y/d$a;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/w$d;

    move-object/from16 v9, v18

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/j/w$d;-><init>(Landroid/content/ContentResolver;)V

    .line 82
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/j/w$b;

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/j/w$b;-><init>(Landroid/content/ContentResolver;)V

    .line 83
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/j/w$a;

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/j/w$a;-><init>(Landroid/content/ContentResolver;)V

    .line 84
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/x$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/x$a;-><init>()V

    .line 85
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/net/URL;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/y/e$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/y/e$a;-><init>()V

    .line 86
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/bumptech/glide/load/j/k$a;

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/j/k$a;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Lcom/bumptech/glide/load/j/g;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/j/y/a$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/j/y/a$a;-><init>()V

    .line 88
    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/bumptech/glide/load/j/b$a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/j/b$a;-><init>()V

    move-object/from16 v7, v16

    .line 89
    invoke-virtual {v2, v7, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/j/b$d;

    invoke-direct {v6}, Lcom/bumptech/glide/load/j/b$d;-><init>()V

    .line 90
    invoke-virtual {v2, v7, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/net/Uri;

    .line 91
    invoke-static {}, Lcom/bumptech/glide/load/j/v$a;->a()Lcom/bumptech/glide/load/j/v$a;

    move-result-object v9

    invoke-virtual {v2, v5, v6, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-static {}, Lcom/bumptech/glide/load/j/v$a;->a()Lcom/bumptech/glide/load/j/v$a;

    move-result-object v9

    invoke-virtual {v2, v5, v6, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/o;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    new-instance v9, Lcom/bumptech/glide/load/k/d/f;

    invoke-direct {v9}, Lcom/bumptech/glide/load/k/d/f;-><init>()V

    .line 93
    invoke-virtual {v2, v5, v6, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/bumptech/glide/load/k/g/b;

    invoke-direct {v9, v1}, Lcom/bumptech/glide/load/k/g/b;-><init>(Landroid/content/res/Resources;)V

    .line 94
    invoke-virtual {v2, v5, v6, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k/g/e;)Lcom/bumptech/glide/Registry;

    const-class v1, Landroid/graphics/Bitmap;

    move-object/from16 v5, p6

    .line 95
    invoke-virtual {v2, v1, v7, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k/g/e;)Lcom/bumptech/glide/Registry;

    const-class v1, Landroid/graphics/drawable/Drawable;

    new-instance v6, Lcom/bumptech/glide/load/k/g/c;

    move-object/from16 v9, p7

    invoke-direct {v6, v3, v5, v9}, Lcom/bumptech/glide/load/k/g/c;-><init>(Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/k/g/e;Lcom/bumptech/glide/load/k/g/e;)V

    .line 96
    invoke-virtual {v2, v1, v7, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k/g/e;)Lcom/bumptech/glide/Registry;

    const-class v1, Lcom/bumptech/glide/load/k/f/c;

    .line 97
    invoke-virtual {v2, v1, v7, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k/g/e;)Lcom/bumptech/glide/Registry;

    .line 98
    new-instance v5, Lcom/bumptech/glide/request/h/e;

    invoke-direct {v5}, Lcom/bumptech/glide/request/h/e;-><init>()V

    .line 99
    new-instance v10, Lcom/bumptech/glide/e;

    iget-object v6, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p2

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/x/b;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/h/e;Lcom/bumptech/glide/request/e;Ljava/util/Map;Lcom/bumptech/glide/load/engine/i;I)V

    iput-object v10, v0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/e;

    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/g;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/g;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Lcom/bumptech/glide/c;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bumptech/glide/c;->k:Z

    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/c;->d(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 4
    sput-boolean p0, Lcom/bumptech/glide/c;->k:Z

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/bumptech/glide/c;->i()Lcom/bumptech/glide/a;

    move-result-object v0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/j/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    :cond_0
    new-instance v1, Lcom/bumptech/glide/j/d;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/j/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/j/d;->a()Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    const-string v3, "Glide"

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/bumptech/glide/a;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/bumptech/glide/a;->b()Ljava/util/Set;

    move-result-object v4

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 14
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/j/b;

    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 20
    :cond_4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/j/b;

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discovered GlideModule from manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/bumptech/glide/a;->c()Lcom/bumptech/glide/manager/k$b;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 24
    :goto_2
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/manager/k$b;)V

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/j/b;

    .line 26
    invoke-interface {v3, p0, p1}, Lcom/bumptech/glide/j/b;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/j/a;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    .line 28
    :cond_8
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/j/b;

    .line 30
    iget-object v3, p1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    invoke-interface {v2, p0, p1, v3}, Lcom/bumptech/glide/j/b;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    .line 31
    iget-object v1, p1, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    invoke-virtual {v0, p0, p1, v1}, Lcom/bumptech/glide/j/c;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    .line 32
    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 33
    sput-object p1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c;

    return-void
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)V

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 2
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->h()Lcom/bumptech/glide/manager/k;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/bumptech/glide/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d;-><init>()V

    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/g;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object p0

    return-object p0
.end method

.method private static i()Lcom/bumptech/glide/a;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {v1}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v1

    .line 4
    invoke-static {v1}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception v1

    .line 5
    invoke-static {v1}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception v1

    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_4
    nop

    const/4 v1, 0x5

    const-string v2, "Glide"

    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/bumptech/glide/util/j;->a()V

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/y/h;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/y/h;->a()V

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/x/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/x/e;->a()V

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/x/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/x/b;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/bumptech/glide/util/j;->a()V

    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/y/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/y/h;->a(I)V

    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/x/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/x/e;->a(I)V

    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/x/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/x/b;->a(I)V

    return-void
.end method

.method a(Lcom/bumptech/glide/g;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Lcom/bumptech/glide/request/h/h;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "*>;)Z"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/g;

    .line 46
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/request/h/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 47
    monitor-exit v0

    return p1

    .line 48
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lcom/bumptech/glide/load/engine/x/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/x/b;

    return-object v0
.end method

.method b(Lcom/bumptech/glide/g;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/c;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Lcom/bumptech/glide/load/engine/x/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/x/e;

    return-object v0
.end method

.method d()Lcom/bumptech/glide/manager/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/manager/d;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/bumptech/glide/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/e;

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/manager/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/manager/k;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->a()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(I)V

    return-void
.end method
