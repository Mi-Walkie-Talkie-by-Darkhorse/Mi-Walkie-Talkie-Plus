.class final Lcom/amap/api/col/l3/j$b$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j$b;->a(Lcom/amap/api/col/l3/am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/ew;

.field final synthetic b:Lcom/amap/api/col/l3/j$b;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j$b;Lcom/amap/api/col/l3/ew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j$b$1;->b:Lcom/amap/api/col/l3/j$b;

    iput-object p2, p0, Lcom/amap/api/col/l3/j$b$1;->a:Lcom/amap/api/col/l3/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j$b$1;->a:Lcom/amap/api/col/l3/ew;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ew;->a(Z)V

    return-void
.end method
