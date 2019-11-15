.class public Lcom/yalantis/ucrop/c/i;
.super Landroid/graphics/drawable/StateListDrawable;
.source "SelectedStateListDrawable.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput p2, p0, Lcom/yalantis/ucrop/c/i;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/yalantis/ucrop/c/i;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v2, [I

    invoke-virtual {p0, v0, p1}, Lcom/yalantis/ucrop/c/i;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p1, v1

    const v4, 0x10100a1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/yalantis/ucrop/c/i;->a:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v0

    return v0

    :cond_2
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->clearColorFilter()V

    goto :goto_1
.end method
