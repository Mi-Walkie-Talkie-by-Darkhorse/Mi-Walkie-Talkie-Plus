.class final Lcom/amap/api/col/l3/js$a;
.super Ljava/lang/Object;
.source "DnsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/jv;

.field final synthetic b:Lcom/amap/api/col/l3/js;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/js;Lcom/amap/api/col/l3/jv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/js$a;->b:Lcom/amap/api/col/l3/js;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/js$a;->a:Lcom/amap/api/col/l3/jv;

    .line 3
    iput-object p2, p0, Lcom/amap/api/col/l3/js$a;->a:Lcom/amap/api/col/l3/jv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/js$a;->b:Lcom/amap/api/col/l3/js;

    iget v1, v0, Lcom/amap/api/col/l3/js;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amap/api/col/l3/js;->b:I

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/js$a;->a:Lcom/amap/api/col/l3/jv;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/js;->b(Lcom/amap/api/col/l3/jv;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/js$a;->b:Lcom/amap/api/col/l3/js;

    iget v1, v0, Lcom/amap/api/col/l3/js;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/amap/api/col/l3/js;->b:I

    return-void
.end method
