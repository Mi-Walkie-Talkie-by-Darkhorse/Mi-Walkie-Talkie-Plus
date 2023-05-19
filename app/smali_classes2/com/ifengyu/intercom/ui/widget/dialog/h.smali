.class Lcom/ifengyu/intercom/ui/widget/dialog/h;
.super Ljava/lang/Object;
.source "ExpandTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Landroid/widget/AbsListView;

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private final e:Landroid/view/GestureDetector;

.field private final f:I

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a:Landroid/widget/AbsListView;

    .line 3
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/View;

    .line 4
    iput p4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->f:I

    .line 5
    iput p5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:I

    .line 6
    iput p6, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d:I

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k:Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/ifengyu/intercom/ui/widget/dialog/h$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/h;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->e:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->h:Z

    return p1
.end method

.method public static c(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)Lcom/ifengyu/intercom/ui/widget/dialog/h;
    .locals 8

    .line 1
    new-instance v7, Lcom/ifengyu/intercom/ui/widget/dialog/h;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/widget/dialog/h;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)V

    return-object v7
.end method

.method private d(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->g:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->g:F

    .line 3
    :cond_0
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->g:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->i:Z

    .line 5
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->f:I

    const/16 v3, 0x30

    if-ne v0, v3, :cond_2

    neg-float p1, p1

    .line 6
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->g:F

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 8
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:I

    if-le v0, p1, :cond_3

    move v0, p1

    .line 9
    :cond_3
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d:I

    if-ge v0, p1, :cond_4

    move v0, p1

    .line 10
    :cond_4
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:I

    if-ne p1, p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->h:Z

    return-void
.end method

.method private e(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    const/high16 p1, -0x40800000    # -1.0f

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->g:F

    .line 2
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->i:Z

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:I

    if-ge p2, v0, :cond_0

    mul-int/lit8 v1, v0, 0x4

    div-int/lit8 v1, v1, 0x5

    if-le p2, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/View;

    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/h$b;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h$b;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/h;)V

    invoke-static {p1, v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d:I

    add-int/lit8 v0, v0, 0x32

    if-le p2, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/View;

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:I

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/h$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h$c;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/h;)V

    invoke-static {p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d:I

    add-int/lit8 v1, v0, 0x32

    if-gt p2, v1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/View;

    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/v;

    invoke-direct {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/v;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d:I

    if-le p1, p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/v;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a:Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->h:Z

    if-eqz v0, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c:I

    if-ne v3, v4, :cond_4

    sub-int/2addr v3, v2

    .line 5
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    .line 7
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->d(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 8
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->e(Landroid/view/View;Landroid/view/MotionEvent;)V

    :goto_0
    return v2

    .line 9
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h;->g:F

    return v2
.end method
