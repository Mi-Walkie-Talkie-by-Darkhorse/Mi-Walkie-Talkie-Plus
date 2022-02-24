.class public Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;
.super Landroid/widget/LinearLayout;
.source "ItemizedOverlayControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;
    }
.end annotation


# instance fields
.field protected mCenterToButton:Landroid/widget/ImageButton;

.field protected mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

.field protected mNavToButton:Landroid/widget/ImageButton;

.field protected mNextButton:Landroid/widget/ImageButton;

.field protected mPreviousButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/widget/ImageButton;

    invoke-direct {p2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->previous:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    new-instance p2, Landroid/widget/ImageButton;

    invoke-direct {p2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->next:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    new-instance p2, Landroid/widget/ImageButton;

    invoke-direct {p2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->center:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    new-instance p2, Landroid/widget/ImageButton;

    invoke-direct {p2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/osmdroid/library/R$drawable;->navto_small:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->initViewListeners()V

    return-void
.end method

.method private initViewListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$3;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$3;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$4;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$4;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setItemizedOverlayControlViewListener(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    return-void
.end method

.method public setNavToVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setNextEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setPreviousEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
