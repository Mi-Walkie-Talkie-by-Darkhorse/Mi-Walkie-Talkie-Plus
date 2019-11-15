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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b:I

    iput v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b:I

    iput v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/graphics/drawable/Drawable;
.end method

.method public a(II)V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->removeAllViews()V

    iput v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    invoke-virtual {p0, v1}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->setOrientation(I)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b:I

    new-array v0, p1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->d:Landroid/graphics/drawable/Drawable;

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->setGravity(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->setGravity(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/jude/rollviewpager/hintview/ShapeHintView;->setCurrent(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract b()Landroid/graphics/drawable/Drawable;
.end method

.method public setCurrent(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->b:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->a:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Lcom/jude/rollviewpager/hintview/ShapeHintView;->c:I

    goto :goto_0
.end method
