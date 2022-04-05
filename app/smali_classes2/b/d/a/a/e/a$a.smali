.class Lb/d/a/a/e/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/d/a/a/d/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a/a/e/a;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/d/a/a/e/a;


# direct methods
.method constructor <init>(Lb/d/a/a/e/a;)V
    .locals 0

    iput-object p1, p0, Lb/d/a/a/e/a$a;->a:Lb/d/a/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$b;I)I
    .locals 2

    iget-object v0, p0, Lb/d/a/a/e/a$a;->a:Lb/d/a/a/e/a;

    invoke-virtual {v0, p3}, Lb/d/a/a/e/a;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lb/d/a/a/e/a$a;->a:Lb/d/a/a/e/a;

    invoke-static {v1}, Lb/d/a/a/e/a;->a(Lb/d/a/a/e/a;)La/b/h;

    move-result-object v1

    invoke-virtual {v1, v0}, La/b/h;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a()I

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lb/d/a/a/e/a$a;->a:Lb/d/a/a/e/a;

    invoke-static {v1}, Lb/d/a/a/e/a;->b(Lb/d/a/a/e/a;)La/b/h;

    move-result-object v1

    invoke-virtual {v1, v0}, La/b/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a()I

    move-result p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
