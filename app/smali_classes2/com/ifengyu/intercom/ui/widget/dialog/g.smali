.class public Lcom/ifengyu/intercom/ui/widget/dialog/g;
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

.field private i:Lcom/ifengyu/intercom/ui/widget/dialog/m;

.field private j:I

.field private k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;

.field private l:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

.field private m:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

.field private n:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

.field private o:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

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
.method private constructor <init>()V
    .locals 4

    const/16 v3, 0x50

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->c:[I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->p:Z

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->q:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->r:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->s:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->t:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->u:I

    const v0, 0x7f0f0055

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->x:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x50

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->c:[I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->p:Z

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->q:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->r:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->s:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->t:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->u:I

    const v0, 0x7f0f0055

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->x:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private a(III)I
    .locals 1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move p3, p2

    :cond_1
    :goto_0
    return p3

    :sswitch_0
    if-eq p2, v0, :cond_1

    move p3, p2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->v()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->d()Lcom/ifengyu/intercom/ui/widget/dialog/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->v()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a(I)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/g;)V

    return-object v0
.end method

.method public a(I)Lcom/ifengyu/intercom/ui/widget/dialog/g;
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->s:I

    return-object p0
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;)Lcom/ifengyu/intercom/ui/widget/dialog/g;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->l:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    return-object p0
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Lcom/ifengyu/intercom/ui/widget/dialog/g;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->i:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    return-object p0
.end method

.method public a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/g;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->p:Z

    return-object p0
.end method

.method public b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f:Landroid/content/Context;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->s:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->g:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ifengyu/intercom/ui/widget/dialog/g;
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->r:I

    return-object p0
.end method

.method public c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f:Landroid/content/Context;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->r:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->h:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ifengyu/intercom/ui/widget/dialog/g;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-object p0
.end method

.method public d()Lcom/ifengyu/intercom/ui/widget/dialog/m;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->i:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/r;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/r;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->i:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->i:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f:Landroid/content/Context;

    return-object v0
.end method

.method public f()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->e:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public g()Landroid/view/animation/Animation;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->j:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(IZ)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->t:I

    goto :goto_0
.end method

.method public h()Landroid/view/animation/Animation;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->j:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ad;->a(IZ)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->u:I

    goto :goto_0
.end method

.method public i()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->d:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->t()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->d:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->v:Z

    return v0
.end method

.method public k()Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->c:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->c:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->c:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->p:Z

    return v0
.end method

.method public m()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;

    return-object v0
.end method

.method public n()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->l:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;

    return-object v0
.end method

.method public o()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->m:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

    return-object v0
.end method

.method public p()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->n:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    return-object v0
.end method

.method public q()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->o:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$a;

    return-object v0
.end method

.method public r()[I
    .locals 5

    const v0, 0x7f0b0087

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->j:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    const v0, 0x7f0b0089

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a:[I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->j:I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a:[I

    aget v4, v4, v0

    invoke-direct {p0, v3, v4, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(III)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a:[I

    return-object v0
.end method

.method public s()[I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b:[I

    return-object v0
.end method

.method public t()I
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/a;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->w:I

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->w:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->w:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->x:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/g;->q:I

    return v0
.end method
