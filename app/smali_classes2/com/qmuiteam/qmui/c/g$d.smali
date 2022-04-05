.class Lcom/qmuiteam/qmui/c/g$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/qmuiteam/qmui/c/g;


# virtual methods
.method a()Landroid/content/res/Resources$Theme;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/qmuiteam/qmui/c/g;->a()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/qmuiteam/qmui/c/g$d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/c/g$d;->b:Lcom/qmuiteam/qmui/c/g;

    invoke-static {v0}, Lcom/qmuiteam/qmui/c/g;->a(Lcom/qmuiteam/qmui/c/g;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lcom/qmuiteam/qmui/c/g$d;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-static {}, Lcom/qmuiteam/qmui/c/g;->a()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/qmuiteam/qmui/c/g$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
