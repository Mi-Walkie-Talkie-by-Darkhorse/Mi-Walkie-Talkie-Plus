.class public Lpl/droidsonroids/gif/c;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field final a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field volatile b:Z

.field c:J

.field protected final d:Landroid/graphics/Paint;

.field final e:Landroid/graphics/Bitmap;

.field final f:Lpl/droidsonroids/gif/GifInfoHandle;

.field final g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lpl/droidsonroids/gif/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Z

.field final i:Lpl/droidsonroids/gif/g;

.field j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:Landroid/graphics/Rect;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/graphics/PorterDuffColorFilter;

.field private n:Landroid/graphics/PorterDuff$Mode;

.field private final o:Lpl/droidsonroids/gif/k;

.field private final p:Landroid/graphics/Rect;

.field private q:I

.field private r:I

.field private s:Lpl/droidsonroids/gif/a/a;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/c;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/c;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .param p1    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/c;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/c;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/c;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-static {p1, p2}, Lpl/droidsonroids/gif/e;->a(Landroid/content/res/Resources;I)F

    move-result v0

    iget-object v1, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lpl/droidsonroids/gif/c;->r:I

    iget-object v1, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->n()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lpl/droidsonroids/gif/c;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/c;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/c;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method constructor <init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/c;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lpl/droidsonroids/gif/c;->c:J

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lpl/droidsonroids/gif/c;->k:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lpl/droidsonroids/gif/c;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Lpl/droidsonroids/gif/k;

    invoke-direct {v2, p0}, Lpl/droidsonroids/gif/k;-><init>(Lpl/droidsonroids/gif/c;)V

    iput-object v2, p0, Lpl/droidsonroids/gif/c;->o:Lpl/droidsonroids/gif/k;

    iput-boolean p4, p0, Lpl/droidsonroids/gif/c;->h:Z

    if-eqz p3, :cond_3

    :goto_0
    iput-object p3, p0, Lpl/droidsonroids/gif/c;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object p1, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object v3, p2, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    monitor-enter v3

    :try_start_0
    iget-object v4, p2, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->k()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p2, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->o()I

    move-result v4

    iget-object v5, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v5}, Lpl/droidsonroids/gif/GifInfoHandle;->o()I

    move-result v5

    if-lt v4, v5, :cond_0

    iget-object v4, p2, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->n()I

    move-result v4

    iget-object v5, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v5}, Lpl/droidsonroids/gif/GifInfoHandle;->n()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-direct {p2}, Lpl/droidsonroids/gif/c;->f()V

    iget-object v2, p2, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-nez v2, :cond_4

    iget-object v2, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->n()I

    move-result v2

    iget-object v3, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->o()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->q()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->n()I

    move-result v2

    iget-object v3, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->o()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lpl/droidsonroids/gif/c;->p:Landroid/graphics/Rect;

    new-instance v0, Lpl/droidsonroids/gif/g;

    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/g;-><init>(Lpl/droidsonroids/gif/c;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/g;

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->o:Lpl/droidsonroids/gif/k;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/k;->a()V

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->n()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/c;->q:I

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->o()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/c;->r:I

    return-void

    :cond_3
    invoke-static {}, Lpl/droidsonroids/gif/d;->a()Lpl/droidsonroids/gif/d;

    move-result-object p3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iput-object v2, p0, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/g;->removeMessages(I)V

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/g;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 5

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lpl/droidsonroids/gif/c;->h:Z

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lpl/droidsonroids/gif/c;->c:J

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lpl/droidsonroids/gif/g;->sendEmptyMessageAtTime(IJ)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lpl/droidsonroids/gif/c;->g()V

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lpl/droidsonroids/gif/c;->o:Lpl/droidsonroids/gif/k;

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/c;->j:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->k()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lpl/droidsonroids/gif/c$1;

    invoke-direct {v1, p0, p0}, Lpl/droidsonroids/gif/c$1;-><init>(Lpl/droidsonroids/gif/c;Lpl/droidsonroids/gif/c;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v0

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->c()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSeekForward()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->c()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->i()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/high16 v6, -0x8000000000000000L

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->m:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/droidsonroids/gif/c;->m:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lpl/droidsonroids/gif/c;->s:Lpl/droidsonroids/gif/a/a;

    if-nez v1, :cond_3

    iget-object v1, p0, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lpl/droidsonroids/gif/c;->p:Landroid/graphics/Rect;

    iget-object v3, p0, Lpl/droidsonroids/gif/c;->k:Landroid/graphics/Rect;

    iget-object v4, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/c;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lpl/droidsonroids/gif/c;->c:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lpl/droidsonroids/gif/c;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v6, p0, Lpl/droidsonroids/gif/c;->c:J

    iget-object v2, p0, Lpl/droidsonroids/gif/c;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lpl/droidsonroids/gif/c;->o:Lpl/droidsonroids/gif/k;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lpl/droidsonroids/gif/c;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lpl/droidsonroids/gif/c;->o:Lpl/droidsonroids/gif/k;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/c;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lpl/droidsonroids/gif/c;->s:Lpl/droidsonroids/gif/a/a;

    iget-object v2, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    invoke-interface {v1, p1, v2, v3}, Lpl/droidsonroids/gif/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->h()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->g()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lpl/droidsonroids/gif/c;->r:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lpl/droidsonroids/gif/c;->q:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->s:Lpl/droidsonroids/gif/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->s:Lpl/droidsonroids/gif/a/a;

    invoke-interface {v0, p1}, Lpl/droidsonroids/gif/a/a;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->n:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->l:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lpl/droidsonroids/gif/c;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lpl/droidsonroids/gif/c;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/c;->m:Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->stop()V

    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/c;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lpl/droidsonroids/gif/c$2;

    invoke-direct {v1, p0, p0, p1}, Lpl/droidsonroids/gif/c$2;-><init>(Lpl/droidsonroids/gif/c;Lpl/droidsonroids/gif/c;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lpl/droidsonroids/gif/c;->l:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lpl/droidsonroids/gif/c;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/c;->m:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lpl/droidsonroids/gif/c;->n:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->l:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lpl/droidsonroids/gif/c;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/c;->m:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-boolean v1, p0, Lpl/droidsonroids/gif/c;->h:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->b()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->start()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpl/droidsonroids/gif/c;->stop()V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lpl/droidsonroids/gif/c;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/droidsonroids/gif/c;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lpl/droidsonroids/gif/c;->g()V

    iget-object v0, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "GIF: size: %dx%d, frames: %d, error: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
