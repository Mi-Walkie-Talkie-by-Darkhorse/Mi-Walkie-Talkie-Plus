.class final Lcom/amap/api/col/sl/fj$a;
.super Ljava/lang/Object;
.source "DNSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/fj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/amap/api/col/sl/fm;

.field final synthetic b:Lcom/amap/api/col/sl/fj;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/fj;Lcom/amap/api/col/sl/fm;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/sl/fj$a;->b:Lcom/amap/api/col/sl/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/fj$a;->a:Lcom/amap/api/col/sl/fm;

    iput-object p2, p0, Lcom/amap/api/col/sl/fj$a;->a:Lcom/amap/api/col/sl/fm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/fj$a;->b:Lcom/amap/api/col/sl/fj;

    iget v1, v0, Lcom/amap/api/col/sl/fj;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amap/api/col/sl/fj;->b:I

    iget-object v0, p0, Lcom/amap/api/col/sl/fj$a;->b:Lcom/amap/api/col/sl/fj;

    iget-object v1, p0, Lcom/amap/api/col/sl/fj$a;->a:Lcom/amap/api/col/sl/fm;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fj;->b(Lcom/amap/api/col/sl/fm;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/fj$a;->b:Lcom/amap/api/col/sl/fj;

    iget v1, v0, Lcom/amap/api/col/sl/fj;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/amap/api/col/sl/fj;->b:I

    return-void
.end method
