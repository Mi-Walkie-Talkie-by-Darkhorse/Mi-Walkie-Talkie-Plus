.class public Lpl/droidsonroids/gif/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p0, p2, v0, v0}, Lpl/droidsonroids/gif/e;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lpl/droidsonroids/gif/e$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifImageView;->a(Lpl/droidsonroids/gif/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0}, Lpl/droidsonroids/gif/e;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lpl/droidsonroids/gif/e$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifImageView;->a(Lpl/droidsonroids/gif/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p0, p2, p3, p4}, Lpl/droidsonroids/gif/e;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lpl/droidsonroids/gif/e$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifImageView;->a(Lpl/droidsonroids/gif/e$a;)V

    return-void
.end method

.method private a(Lpl/droidsonroids/gif/e$a;)V
    .locals 1

    iget-boolean v0, p1, Lpl/droidsonroids/gif/e$a;->c:Z

    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifImageView;->a:Z

    iget v0, p1, Lpl/droidsonroids/gif/e$a;->a:I

    if-lez v0, :cond_0

    iget v0, p1, Lpl/droidsonroids/gif/e$a;->a:I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget v0, p1, Lpl/droidsonroids/gif/e$a;->b:I

    if-lez v0, :cond_1

    iget v0, p1, Lpl/droidsonroids/gif/e$a;->b:I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lpl/droidsonroids/gif/GifViewSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifImageView;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifImageView;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    new-instance v2, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-direct {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lpl/droidsonroids/gif/e;->a(Landroid/widget/ImageView;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifImageView;->a:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lpl/droidsonroids/gif/e;->a(Landroid/widget/ImageView;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-static {p0, p1}, Lpl/droidsonroids/gif/e;->a(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
