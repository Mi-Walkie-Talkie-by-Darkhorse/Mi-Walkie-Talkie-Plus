.class public Lcom/ifengyu/intercom/ui/widget/dialog/f;
.super Ljava/lang/Object;
.source "DialogPlusBuilder.java"


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:Landroid/widget/FrameLayout$LayoutParams;

.field private e:Landroid/widget/BaseAdapter;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/ifengyu/intercom/ui/widget/dialog/k;

.field private j:I

.field private k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;

.field private l:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

.field private m:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;

.field private n:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

.field private o:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:I

.field private x:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:[I

    new-array v2, v0, [I

    .line 3
    iput-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:[I

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c:[I

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d:Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->j:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->p:Z

    .line 8
    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->q:I

    .line 9
    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->r:I

    .line 10
    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->s:I

    .line 11
    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->t:I

    .line 12
    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->u:I

    const v0, 0x7f060095

    .line 13
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->x:I

    const-string v0, "Context may not be null"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Landroid/content/Context;

    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private m(III)I
    .locals 2

    const/16 v0, 0x11

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2

    :cond_1
    if-ne p2, v1, :cond_2

    move p2, p3

    :cond_2
    return p2
.end method


# virtual methods
.method public A(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->s:I

    return-object p0
.end method

.method public B(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->r:I

    return-object p0
.end method

.method public C(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

    return-object p0
.end method

.method public a()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->k()Lcom/ifengyu/intercom/ui/widget/dialog/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->c(I)V

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/f;)V

    return-object v0
.end method

.method public b()Landroid/widget/BaseAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->e:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->q:I

    return v0
.end method

.method public d()[I
    .locals 5

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->j:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const v0, 0x7f07009a

    goto :goto_0

    :cond_0
    const v0, 0x7f070098

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->j:I

    aget v4, v2, v1

    invoke-direct {p0, v3, v4, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->m(III)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public e()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:[I

    return-object v0
.end method

.method public f()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->v:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->h()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Landroid/content/Context;

    return-object v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/g;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->w:I

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 5
    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->w:I

    .line 6
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->w:I

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Landroid/content/Context;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->s:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->g:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->c(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Landroid/content/Context;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->r:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->h:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->c(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/ifengyu/intercom/ui/widget/dialog/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    return-object v0
.end method

.method public l()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->j:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b(IZ)I

    move-result v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->o:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

    return-object v0
.end method

.method public o()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->n:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    return-object v0
.end method

.method public p()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;

    return-object v0
.end method

.method public q()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->m:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$j;

    return-object v0
.end method

.method public r()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$k;

    return-object v0
.end method

.method public s()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->j:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b(IZ)I

    move-result v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public t()Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->x:I

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->p:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->v:Z

    return v0
.end method

.method public x(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->p:Z

    return-object p0
.end method

.method public y(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-object p0
.end method

.method public z(Lcom/ifengyu/intercom/ui/widget/dialog/k;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i:Lcom/ifengyu/intercom/ui/widget/dialog/k;

    return-object p0
.end method
