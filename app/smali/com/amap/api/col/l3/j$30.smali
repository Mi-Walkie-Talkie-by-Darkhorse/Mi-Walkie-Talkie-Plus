.class final Lcom/amap/api/col/l3/j$30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;IIIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$30;->h:Lcom/amap/api/col/l3/j;

    iput p2, p0, Lcom/amap/api/col/l3/j$30;->a:I

    iput p3, p0, Lcom/amap/api/col/l3/j$30;->b:I

    iput p4, p0, Lcom/amap/api/col/l3/j$30;->c:I

    iput p5, p0, Lcom/amap/api/col/l3/j$30;->d:I

    iput p6, p0, Lcom/amap/api/col/l3/j$30;->e:I

    iput p7, p0, Lcom/amap/api/col/l3/j$30;->f:I

    iput p8, p0, Lcom/amap/api/col/l3/j$30;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3/j$30;->h:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/amap/api/col/l3/j$30;->a:I

    iget v3, p0, Lcom/amap/api/col/l3/j$30;->b:I

    iget v4, p0, Lcom/amap/api/col/l3/j$30;->c:I

    iget v5, p0, Lcom/amap/api/col/l3/j$30;->d:I

    iget v6, p0, Lcom/amap/api/col/l3/j$30;->e:I

    iget v7, p0, Lcom/amap/api/col/l3/j$30;->f:I

    iget v8, p0, Lcom/amap/api/col/l3/j$30;->g:I

    invoke-virtual/range {v1 .. v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->setServiceViewRect(IIIIIII)V

    :cond_0
    return-void
.end method
