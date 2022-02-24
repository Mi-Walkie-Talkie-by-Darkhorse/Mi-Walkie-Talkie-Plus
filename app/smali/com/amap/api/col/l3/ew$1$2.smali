.class final Lcom/amap/api/col/l3/ew$1$2;
.super Ljava/lang/Object;
.source "IndoorFloorSwitchView.java"

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

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/ew$1$2;->c:Lcom/amap/api/col/l3/ew$1;

    iput p2, p0, Lcom/amap/api/col/l3/ew$1$2;->a:I

    iput p3, p0, Lcom/amap/api/col/l3/ew$1$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ew$1$2;->c:Lcom/amap/api/col/l3/ew$1;

    iget-object v0, v0, Lcom/amap/api/col/l3/ew$1;->a:Lcom/amap/api/col/l3/ew;

    .line 2
    invoke-static {v0}, Lcom/amap/api/col/l3/ew;->a(Lcom/amap/api/col/l3/ew;)I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3/ew$1$2;->a:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/ew$1$2;->c:Lcom/amap/api/col/l3/ew$1;

    iget-object v0, v0, Lcom/amap/api/col/l3/ew$1;->a:Lcom/amap/api/col/l3/ew;

    iget v1, p0, Lcom/amap/api/col/l3/ew$1$2;->b:I

    invoke-static {v0}, Lcom/amap/api/col/l3/ew;->c(Lcom/amap/api/col/l3/ew;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/col/l3/ew;->b:I

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/ew$1$2;->c:Lcom/amap/api/col/l3/ew$1;

    iget-object v0, v0, Lcom/amap/api/col/l3/ew$1;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v0}, Lcom/amap/api/col/l3/ew;->d(Lcom/amap/api/col/l3/ew;)V

    return-void
.end method
