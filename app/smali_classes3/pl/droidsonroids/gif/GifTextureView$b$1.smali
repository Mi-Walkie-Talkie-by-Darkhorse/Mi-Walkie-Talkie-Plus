.class Lpl/droidsonroids/gif/GifTextureView$b$1;
.super Ljava/lang/Object;
.source "GifTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/GifTextureView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/droidsonroids/gif/GifTextureView;

.field final synthetic b:Lpl/droidsonroids/gif/GifTextureView$b;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView$b;Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$b$1;->b:Lpl/droidsonroids/gif/GifTextureView$b;

    iput-object p2, p0, Lpl/droidsonroids/gif/GifTextureView$b$1;->a:Lpl/droidsonroids/gif/GifTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b$1;->a:Lpl/droidsonroids/gif/GifTextureView;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b$1;->b:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView$b;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method
