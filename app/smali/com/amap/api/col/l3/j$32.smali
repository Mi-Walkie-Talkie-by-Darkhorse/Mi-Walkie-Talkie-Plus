.class final Lcom/amap/api/col/l3/j$32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->setIndoorEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$32;->b:Lcom/amap/api/col/l3/j;

    iput-boolean p2, p0, Lcom/amap/api/col/l3/j$32;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j$32;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j$32;->b:Lcom/amap/api/col/l3/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/j;->b(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$32;->b:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/j$32;->b:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->e()Lcom/amap/api/col/l3/ew;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/j$32;->b:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->e()Lcom/amap/api/col/l3/ew;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ew;->a(Z)V

    :cond_1
    return-void
.end method
