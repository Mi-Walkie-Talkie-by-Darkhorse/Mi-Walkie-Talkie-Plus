.class public abstract Lcom/ifengyu/library/widget/recyclerview/e/b;
.super Ljava/lang/Object;
.source "SimpleClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/recyclerview/e/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ifengyu/library/widget/recyclerview/adapter/c;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;"
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field protected baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private childClickViewIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private longClickDelta:I

.field private longClickViewIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mIsPrepressed:Z

.field private mIsShowPress:Z

.field private mPressedView:Landroid/view/View;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private shouldDetectGesture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SimpleClickListener"

    sput-object v0, Lcom/ifengyu/library/widget/recyclerview/e/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsPrepressed:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsShowPress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mPressedView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->shouldDetectGesture:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->longClickDelta:I

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->shouldDetectGesture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ifengyu/library/widget/recyclerview/e/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsPrepressed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/ifengyu/library/widget/recyclerview/e/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsPrepressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ifengyu/library/widget/recyclerview/e/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mPressedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mPressedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ifengyu/library/widget/recyclerview/e/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsShowPress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ifengyu/library/widget/recyclerview/e/b;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->isHeaderOrFooterPosition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->childClickViewIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ifengyu/library/widget/recyclerview/e/b;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->childClickViewIds:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/e/b;->setPressViewHotSpot(Landroid/view/MotionEvent;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ifengyu/library/widget/recyclerview/e/b;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->longClickViewIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$702(Lcom/ifengyu/library/widget/recyclerview/e/b;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->longClickViewIds:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$800(Lcom/ifengyu/library/widget/recyclerview/e/b;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->longClickDelta:I

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    invoke-interface {v0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/c;->getItemViewType(I)I

    move-result v0

    const/16 v2, 0x1004

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1001

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1003

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1002

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1000

    if-ne v0, v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private setPressViewHotSpot(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method private shouldDetectGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->shouldDetectGesture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsPrepressed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mPressedView:Landroid/view/View;

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->shouldDetectGesture:Z

    return v0
.end method


# virtual methods
.method public inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v0

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    int-to-float v5, v3

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-gtz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    int-to-float v4, v2

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->shouldDetectGesture()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->baseAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/c;

    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/library/widget/recyclerview/e/b$a;

    iget-object v3, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v2, p0, v3}, Lcom/ifengyu/library/widget/recyclerview/e/b$a;-><init>(Lcom/ifengyu/library/widget/recyclerview/e/b;Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsShowPress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mPressedView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mPressedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/d/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getItemViewType()I

    move-result v1

    const/16 v2, 0x1002

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getItemViewType()I

    move-result v0

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mPressedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mPressedView:Landroid/view/View;

    :cond_5
    iput-boolean v4, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsShowPress:Z

    iput-boolean v4, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mIsPrepressed:Z

    goto :goto_0
.end method

.method public abstract onItemChildClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onItemChildLongClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onItemClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onItemLongClick(Lcom/ifengyu/library/widget/recyclerview/adapter/c;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/recyclerview/e/b;->shouldDetectGesture()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public setLongClickDelta(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1

    :cond_0
    const/16 p1, 0xc8

    :cond_1
    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->longClickDelta:I

    return-void
.end method

.method public setShouldDetectGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/recyclerview/e/b;->shouldDetectGesture:Z

    return-void
.end method
