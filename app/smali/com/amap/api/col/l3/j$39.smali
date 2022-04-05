.class final Lcom/amap/api/col/l3/j$39;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->onIndoorBuildingActivity(I[B)V
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

    iput-object p1, p0, Lcom/amap/api/col/l3/j$39;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/j$39;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->A(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/j$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j$39;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->A(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/j$39;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->B(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/j$b;->a(Lcom/amap/api/col/l3/am;)V

    :cond_0
    return-void
.end method
