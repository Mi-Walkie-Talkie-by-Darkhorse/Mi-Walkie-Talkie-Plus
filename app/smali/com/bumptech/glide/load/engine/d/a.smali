.class public final Lcom/bumptech/glide/load/engine/d/a;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/b/h;

.field private final b:Lcom/bumptech/glide/load/engine/a/e;

.field private final c:Lcom/bumptech/glide/load/DecodeFormat;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/d/a;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/d/a;->a:Lcom/bumptech/glide/load/engine/b/h;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/d/a;->b:Lcom/bumptech/glide/load/engine/a/e;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/d/a;->c:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method
