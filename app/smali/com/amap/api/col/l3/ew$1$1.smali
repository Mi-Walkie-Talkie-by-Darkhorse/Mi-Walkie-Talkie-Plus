.class final Lcom/amap/api/col/l3/ew$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/ew$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/col/l3/ew$1;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/ew$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/ew$1$1;->c:Lcom/amap/api/col/l3/ew$1;

    iput p2, p0, Lcom/amap/api/col/l3/ew$1$1;->a:I

    iput p3, p0, Lcom/amap/api/col/l3/ew$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/ew$1$1;->c:Lcom/amap/api/col/l3/ew$1;

    iget-object v0, v0, Lcom/amap/api/col/l3/ew$1;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v0}, Lcom/amap/api/col/l3/ew;->a(Lcom/amap/api/col/l3/ew;)I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3/ew$1$1;->a:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/col/l3/ew$1$1;->c:Lcom/amap/api/col/l3/ew$1;

    iget-object v2, v2, Lcom/amap/api/col/l3/ew$1;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v2}, Lcom/amap/api/col/l3/ew;->b(Lcom/amap/api/col/l3/ew;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ew$1$1;->c:Lcom/amap/api/col/l3/ew$1;

    iget-object v0, v0, Lcom/amap/api/col/l3/ew$1;->a:Lcom/amap/api/col/l3/ew;

    iget v1, p0, Lcom/amap/api/col/l3/ew$1$1;->b:I

    invoke-static {v0}, Lcom/amap/api/col/l3/ew;->c(Lcom/amap/api/col/l3/ew;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amap/api/col/l3/ew;->b:I

    iget-object v0, p0, Lcom/amap/api/col/l3/ew$1$1;->c:Lcom/amap/api/col/l3/ew$1;

    iget-object v0, v0, Lcom/amap/api/col/l3/ew$1;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v0}, Lcom/amap/api/col/l3/ew;->d(Lcom/amap/api/col/l3/ew;)V

    return-void
.end method
