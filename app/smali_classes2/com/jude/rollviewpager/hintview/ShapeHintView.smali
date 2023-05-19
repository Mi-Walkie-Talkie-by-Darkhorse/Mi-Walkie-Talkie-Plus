.class public abstract Lcom/jude/rollviewpager/hintview/ShapeHintView;
.super Landroid/widget/LinearLayout;
.source "ShapeHintView.java"

# interfaces
.implements Lcom/jude/rollviewpager/a;


# instance fields
.field private a:[Landroid/widget/ImageView;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b:I

    .line 3
    iput p1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b:I

    .line 6
    iput p1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x15

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x11

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x13

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    :goto_0
    iput p1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b:I

    .line 8
    new-array p2, p1, [Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->e:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->d:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, p2

    .line 12
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 13
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 14
    iget-object v2, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->setCurrent(I)V

    return-void
.end method

.method public abstract b()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract c()Landroid/graphics/drawable/Drawable;
.end method

.method public setCurrent(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iput p1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    :cond_1
    :goto_0
    return-void
.end method
