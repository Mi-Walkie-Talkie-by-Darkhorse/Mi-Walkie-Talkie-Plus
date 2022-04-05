.class final Lcom/amap/api/col/l3/hm$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field volatile b:Z

.field final synthetic c:Lcom/amap/api/col/l3/hm;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/hm;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/hm$a;->c:Lcom/amap/api/col/l3/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/hm$a;->a:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3/hm$a;->b:Z

    return-void
.end method
