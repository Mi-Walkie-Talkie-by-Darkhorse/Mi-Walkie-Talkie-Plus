.class public Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout;
.super Lcom/google/android/material/appbar/AppBarLayout;
.source "QMUIAppBarLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public f(Landroid/graphics/Rect;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v2, Lcom/google/android/material/appbar/AppBarLayout;

    const-string v3, "lastInsets"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    :try_start_1
    const-class v2, Lcom/google/android/material/appbar/AppBarLayout;

    const-string v3, "mLastInsets"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    :try_start_2
    new-instance v4, Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$a;

    invoke-direct {v4, p0, v0, p1}, Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$a;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)V

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    .line 6
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/qmuiteam/qmui/util/o;->l(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/qmuiteam/qmui/util/o;->k(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 11
    :cond_2
    instance-of v2, v0, Lcom/qmuiteam/qmui/widget/c;

    if-eqz v2, :cond_3

    .line 12
    check-cast v0, Lcom/qmuiteam/qmui/widget/c;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/c;->f(Landroid/graphics/Rect;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    return v1
.end method
