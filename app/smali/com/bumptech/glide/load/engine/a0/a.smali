.class public final Lcom/bumptech/glide/load/engine/a0/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/bumptech/glide/load/DecodeFormat;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/y/h;Lcom/bumptech/glide/load/engine/x/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/a0/a;->a:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method
