.class public final Lcom/amap/api/col/l3/ex;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/widget/ImageView;

.field h:Lcom/amap/api/col/l3/u;

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/ex;->i:Z

    iput-object p2, p0, Lcom/amap/api/col/l3/ex;->h:Lcom/amap/api/col/l3/u;

    :try_start_0
    const-string p2, "location_selected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/ex;->d:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/ex;->a:Landroid/graphics/Bitmap;

    const-string p2, "location_pressed.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/ex;->e:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/ex;->b:Landroid/graphics/Bitmap;

    const-string p2, "location_unselected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/ex;->f:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/ex;->c:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/ex;->g:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/amap/api/col/l3/ex;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/ex;->g:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3/ex;->g:Landroid/widget/ImageView;

    const/16 p2, 0x14

    invoke-virtual {p1, v0, p2, p2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/amap/api/col/l3/ex;->g:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/col/l3/ex$1;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3/ex$1;-><init>(Lcom/amap/api/col/l3/ex;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/ex;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "LocationView"

    const-string v0, "create"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/amap/api/col/l3/ex;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/ex;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ex;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/ex;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/ex;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/ex;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/ex;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/ex;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/ex;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/amap/api/col/l3/ex;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/ex;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ex;->d:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/ex;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3/ex;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ex;->e:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3/ex;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/ex;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ex;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "LocationView"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/col/l3/ex;->i:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/ex;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/ex;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/ex;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/ex;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/ex;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "LocationView"

    const-string v1, "showSelect"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
