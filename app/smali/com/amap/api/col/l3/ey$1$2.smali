.class final Lcom/amap/api/col/l3/ey$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/ey$1;->invalidateCompassView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/ey$1;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/ey$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/ey$1$2;->a:Lcom/amap/api/col/l3/ey$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ey$1$2;->a:Lcom/amap/api/col/l3/ey$1;

    iget-object v0, v0, Lcom/amap/api/col/l3/ey$1;->a:Lcom/amap/api/col/l3/ey;

    invoke-static {v0}, Lcom/amap/api/col/l3/ey;->b(Lcom/amap/api/col/l3/ey;)Lcom/amap/api/col/l3/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ev;->b()V

    return-void
.end method
