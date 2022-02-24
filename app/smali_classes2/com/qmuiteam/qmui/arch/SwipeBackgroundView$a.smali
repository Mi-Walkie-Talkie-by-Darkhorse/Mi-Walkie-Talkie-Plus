.class Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;
.super Ljava/lang/Object;
.source "SwipeBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/view/WindowManager$LayoutParams;

.field c:Z

.field private d:[I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowManager$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->d:[I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->a:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->b:Landroid/view/WindowManager$LayoutParams;

    .line 5
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->c:Z

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->b:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, -0x1000000

    .line 3
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-static {v2, v1}, Lcom/qmuiteam/qmui/util/b;->a(IF)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->d:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->d:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->d:[I

    aget v1, v0, v2

    neg-int v1, v1

    int-to-float v1, v1

    aget v0, v0, v4

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    return-void
.end method
