.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static volatile a:Lcom/bumptech/glide/c;

.field private static volatile b:Z


# instance fields
.field private final c:Lcom/bumptech/glide/load/engine/h;

.field private final d:Lcom/bumptech/glide/load/engine/a/e;

.field private final e:Lcom/bumptech/glide/load/engine/b/h;

.field private final f:Lcom/bumptech/glide/load/engine/d/a;

.field private final g:Lcom/bumptech/glide/e;

.field private final h:Lcom/bumptech/glide/Registry;

.field private final i:Lcom/bumptech/glide/load/engine/a/b;

.field private final j:Lcom/bumptech/glide/manager/k;

.field private final k:Lcom/bumptech/glide/manager/d;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/bumptech/glide/MemoryCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/d;Ljava/util/Map;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Lcom/bumptech/glide/load/engine/b/h;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            "Lcom/bumptech/glide/manager/k;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/request/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/h",
            "<**>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    sget-object v1, Lcom/bumptech/glide/MemoryCategory;->b:Lcom/bumptech/glide/MemoryCategory;

    iput-object v1, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/MemoryCategory;

    iput-object p2, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/engine/h;

    iput-object p4, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/a/e;

    iput-object p5, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/engine/a/b;

    iput-object p3, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/b/h;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/manager/k;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/manager/d;

    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/d;->k()Lcom/bumptech/glide/load/e;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Lcom/bumptech/glide/load/d;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/DecodeFormat;

    new-instance v2, Lcom/bumptech/glide/load/engine/d/a;

    invoke-direct {v2, p3, p4, v1}, Lcom/bumptech/glide/load/engine/d/a;-><init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v2, p0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/load/engine/d/a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/Registry;

    invoke-direct {v2}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    iget-object v2, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/k;

    iget-object v3, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    invoke-virtual {v3}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {v2, v3, v4, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V

    new-instance v3, Lcom/bumptech/glide/load/resource/d/a;

    iget-object v4, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    invoke-virtual {v4}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p1, v4, p4, p5}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V

    iget-object v4, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/bumptech/glide/load/b/c;

    invoke-direct {v6}, Lcom/bumptech/glide/load/b/c;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/Registry;

    move-result-object v4

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/b/t;

    invoke-direct {v6, p5}, Lcom/bumptech/glide/load/b/t;-><init>(Lcom/bumptech/glide/load/engine/a/b;)V

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/Registry;

    move-result-object v4

    const-string v5, "Bitmap"

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v8, v2}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>(Lcom/bumptech/glide/load/resource/bitmap/k;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v4

    const-string v5, "Bitmap"

    const-class v6, Ljava/io/InputStream;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v8, v2, p5}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/engine/a/b;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v4

    const-string v5, "Bitmap"

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v8, p4}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>(Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v4

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/d;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    move-result-object v4

    const-string v5, "BitmapDrawable"

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/a;

    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v9, v2}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>(Lcom/bumptech/glide/load/resource/bitmap/k;)V

    invoke-direct {v8, v1, p4, v9}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v4

    const-string v5, "BitmapDrawable"

    const-class v6, Ljava/io/InputStream;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/a;

    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v9, v2, p5}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/engine/a/b;)V

    invoke-direct {v8, v1, p4, v9}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-string v4, "BitmapDrawable"

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/a;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v8, p4}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>(Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-direct {v7, v1, p4, v8}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/b;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/d;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>()V

    invoke-direct {v5, p4, v6}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/g;)V

    invoke-virtual {v2, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-string v4, "Gif"

    const-class v5, Ljava/io/InputStream;

    const-class v6, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v7, Lcom/bumptech/glide/load/resource/d/i;

    iget-object v8, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    invoke-virtual {v8}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8, v3, p5}, Lcom/bumptech/glide/load/resource/d/i;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/a/b;)V

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-string v4, "Gif"

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Lcom/bumptech/glide/load/resource/d/c;

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v4, Lcom/bumptech/glide/load/resource/d/d;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/d/d;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    new-instance v5, Lcom/bumptech/glide/load/b/v$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/v$a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-string v3, "Bitmap"

    const-class v4, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/d/h;

    invoke-direct {v6, p4}, Lcom/bumptech/glide/load/resource/d/h;-><init>(Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/resource/a/a$a;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/a/a$a;-><init>()V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/a/c$a;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/bumptech/glide/load/b/d$b;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/d$b;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/f$e;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/f$e;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v5, Lcom/bumptech/glide/load/resource/c/a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/c/a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/bumptech/glide/load/b/f$b;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/f$b;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v5, Lcom/bumptech/glide/load/b/v$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/v$a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/a/i$a;

    invoke-direct {v3, p5}, Lcom/bumptech/glide/load/a/i$a;-><init>(Lcom/bumptech/glide/load/engine/a/b;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/a/c$a;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/s$b;

    invoke-direct {v5, v1}, Lcom/bumptech/glide/load/b/s$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/bumptech/glide/load/b/s$a;

    invoke-direct {v5, v1}, Lcom/bumptech/glide/load/b/s$a;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/s$b;

    invoke-direct {v5, v1}, Lcom/bumptech/glide/load/b/s$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/bumptech/glide/load/b/s$a;

    invoke-direct {v5, v1}, Lcom/bumptech/glide/load/b/s$a;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/e$c;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/e$c;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/u$b;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/u$b;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/bumptech/glide/load/b/u$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/u$a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/a/b$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/a/b$a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/a$c;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/b/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/bumptech/glide/load/b/a$b;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/b/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/a/c$a;

    invoke-direct {v5, p1}, Lcom/bumptech/glide/load/b/a/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/a/d$a;

    invoke-direct {v5, p1}, Lcom/bumptech/glide/load/b/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/w$c;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/b/w$c;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/bumptech/glide/load/b/w$a;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/bumptech/glide/load/b/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/x$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/x$a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/net/URL;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/a/e$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/a/e$a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/File;

    new-instance v5, Lcom/bumptech/glide/load/b/k$a;

    invoke-direct {v5, p1}, Lcom/bumptech/glide/load/b/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Lcom/bumptech/glide/load/b/g;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/a/a$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/a/a$a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, [B

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/bumptech/glide/load/b/b$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/b$a;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, [B

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/bumptech/glide/load/b/b$d;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/b$d;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/o;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/bumptech/glide/load/resource/e/b;

    invoke-direct {v5, v1, p4}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/d;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    const-class v3, [B

    new-instance v4, Lcom/bumptech/glide/load/resource/e/a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/e/a;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/d;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/load/resource/d/c;

    const-class v3, [B

    new-instance v4, Lcom/bumptech/glide/load/resource/e/c;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/e/c;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/d;)Lcom/bumptech/glide/Registry;

    new-instance v4, Lcom/bumptech/glide/request/a/e;

    invoke-direct {v4}, Lcom/bumptech/glide/request/a/e;-><init>()V

    new-instance v1, Lcom/bumptech/glide/e;

    iget-object v3, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    move-object v2, p1

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object v7, p2

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/a/e;Lcom/bumptech/glide/request/d;Ljava/util/Map;Lcom/bumptech/glide/load/engine/h;I)V

    iput-object v1, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/e;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 2

    sget-object v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/bumptech/glide/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/c;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/g;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)Lcom/bumptech/glide/g;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/g;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/bumptech/glide/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/c;->b:Z

    invoke-static {p0}, Lcom/bumptech/glide/c;->d(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/c;->b:Z

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/bumptech/glide/c;->i()Lcom/bumptech/glide/a;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/bumptech/glide/a;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_0
    new-instance v0, Lcom/bumptech/glide/b/e;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/b/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/b/e;->a()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/bumptech/glide/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lcom/bumptech/glide/a;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Glide"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Glide"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    const-string v0, "Glide"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/c;

    const-string v5, "Glide"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discovered GlideModule from manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/bumptech/glide/a;->b()Lcom/bumptech/glide/manager/k$a;

    move-result-object v0

    :goto_3
    new-instance v4, Lcom/bumptech/glide/d;

    invoke-direct {v4}, Lcom/bumptech/glide/d;-><init>()V

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/manager/k$a;)Lcom/bumptech/glide/d;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/c;

    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/b/c;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, v2, v4}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    :cond_7
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/c;

    iget-object v5, v4, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    invoke-interface {v0, v2, v4, v5}, Lcom/bumptech/glide/b/c;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    iget-object v0, v4, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    invoke-virtual {v3, v2, v4, v0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v4, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/c;

    return-void

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private static e(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/manager/k;

    move-result-object v0

    return-object v0
.end method

.method private static i()Lcom/bumptech/glide/a;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Glide"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Glide"

    const-string v2, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/a/e;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/a/e;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/b/h;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/e;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/engine/a/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/b;->a(I)V

    return-void
.end method

.method a(Lcom/bumptech/glide/g;)V
    .locals 3

    iget-object v1, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method a(Lcom/bumptech/glide/request/a/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/h",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/request/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to remove target from managers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Lcom/bumptech/glide/load/engine/a/b;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/engine/a/b;

    return-object v0
.end method

.method b(Lcom/bumptech/glide/g;)V
    .locals 3

    iget-object v1, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/bumptech/glide/manager/d;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/manager/d;

    return-object v0
.end method

.method e()Lcom/bumptech/glide/e;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lcom/bumptech/glide/e;

    return-object v0
.end method

.method public f()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/h;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/e;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lcom/bumptech/glide/load/engine/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/b;->a()V

    return-void
.end method

.method public g()Lcom/bumptech/glide/manager/k;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/manager/k;

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/Registry;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->f()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(I)V

    return-void
.end method
