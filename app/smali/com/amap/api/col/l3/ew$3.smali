.class final Lcom/amap/api/col/l3/ew$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/ew;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/col/l3/ew;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/ew;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/ew$3;->b:Lcom/amap/api/col/l3/ew;

    iput p2, p0, Lcom/amap/api/col/l3/ew$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/ew$3;->b:Lcom/amap/api/col/l3/ew;

    iget v1, p0, Lcom/amap/api/col/l3/ew$3;->a:I

    invoke-static {v0}, Lcom/amap/api/col/l3/ew;->b(Lcom/amap/api/col/l3/ew;)I

    move-result v2

    mul-int v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method
