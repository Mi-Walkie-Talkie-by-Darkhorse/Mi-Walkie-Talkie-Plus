.class final Lcom/amap/api/col/l3/j$43;
.super Lcom/amap/api/col/l3/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$43;->a:Lcom/amap/api/col/l3/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-super {p0}, Lcom/amap/api/col/l3/j$a;->run()V

    iget-object v0, p0, Lcom/amap/api/col/l3/j$43;->a:Lcom/amap/api/col/l3/j;

    iget v1, p0, Lcom/amap/api/col/l3/j$a;->g:I

    iget-boolean v2, p0, Lcom/amap/api/col/l3/j$a;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/j;->b(IZ)V

    return-void
.end method
