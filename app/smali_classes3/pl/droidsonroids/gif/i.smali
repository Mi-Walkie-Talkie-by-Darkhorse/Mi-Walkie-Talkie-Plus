.class Lpl/droidsonroids/gif/i;
.super Ljava/lang/Object;
.source "PlaceholderDrawingSurfaceTextureListener.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Lpl/droidsonroids/gif/GifTextureView$a;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/i;->a:Lpl/droidsonroids/gif/GifTextureView$a;

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lpl/droidsonroids/gif/i;->a:Lpl/droidsonroids/gif/GifTextureView$a;

    invoke-interface {v2, v1}, Lpl/droidsonroids/gif/GifTextureView$a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
