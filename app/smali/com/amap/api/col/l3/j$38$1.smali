.class final Lcom/amap/api/col/l3/j$38$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j$38;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j$38;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j$38;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$38$1;->a:Lcom/amap/api/col/l3/j$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/j$38$1;->a:Lcom/amap/api/col/l3/j$38;

    iget-object v1, v0, Lcom/amap/api/col/l3/j$38;->b:Lcom/amap/api/col/l3/j;

    iget v0, v0, Lcom/amap/api/col/l3/j$38;->a:I

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/col/l3/j;I)I

    iget-object v0, p0, Lcom/amap/api/col/l3/j$38$1;->a:Lcom/amap/api/col/l3/j$38;

    iget-object v0, v0, Lcom/amap/api/col/l3/j$38;->b:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j$38$1;->a:Lcom/amap/api/col/l3/j$38;

    iget-object v0, v0, Lcom/amap/api/col/l3/j$38;->b:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->h()Lcom/amap/api/col/l3/fa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
