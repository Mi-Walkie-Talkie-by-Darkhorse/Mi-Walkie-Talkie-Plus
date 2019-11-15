.class Lcom/ifengyu/intercom/ui/widget/dialog/i;
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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/widget/AbsListView;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Landroid/view/View;

    iput p4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->f:I

    iput p5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    iput p6, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:I

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/i$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/i$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/i;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->e:Landroid/view/GestureDetector;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)Lcom/ifengyu/intercom/ui/widget/dialog/i;
    .locals 7

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/widget/dialog/i;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)V

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->g:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->g:F

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->g:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float v3, v0, v3

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->i:Z

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->f:I

    const/16 v4, 0x30

    if-ne v0, v4, :cond_5

    neg-float v0, v3

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->g:F

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    float-to-int v0, v0

    add-int/2addr v0, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    :cond_1
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:I

    if-ge v0, v3, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:I

    :cond_2
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    if-ne v0, v3, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->h:Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->j:Z

    return p1
.end method

.method private b(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->g:F

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Landroid/view/View;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/i$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/i$2;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/i;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:I

    add-int/lit8 v1, v1, 0x32

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Landroid/view/View;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/i$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/i$3;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/i;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:I

    add-int/lit8 v1, v1, 0x32

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Landroid/view/View;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:I

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/z;

    invoke-direct {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/z;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Landroid/view/View;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->d:I

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/z;

    invoke-direct {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/z;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->h:Z

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->e:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->j:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a:Landroid/widget/AbsListView;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->h:Z

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->g:F

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->c:I

    if-ne v2, v3, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i;->k:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
