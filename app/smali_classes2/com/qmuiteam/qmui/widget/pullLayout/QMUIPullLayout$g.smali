.class public Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
.super Ljava/lang/Object;
.source "QMUIPullLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:F

.field private e:Z

.field private f:F

.field private g:I

.field private h:F

.field private i:I

.field private j:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b:I

    const v0, 0x3ee66666    # 0.45f

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->d:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->e:Z

    const v1, 0x3b03126f    # 0.002f

    .line 5
    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->f:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 6
    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->h:F

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->k:Z

    .line 8
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->l:Z

    .line 9
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a:Landroid/view/View;

    .line 10
    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->i:I

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->i:I

    return p0
.end method


# virtual methods
.method public c(I)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->g:I

    return-object p0
.end method

.method d()Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->j:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/widget/pullLayout/a;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/a;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->j:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;

    .line 3
    :cond_0
    new-instance v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->a:Landroid/view/View;

    iget v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b:I

    iget-boolean v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->c:Z

    iget v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->d:F

    iget v6, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->g:I

    iget v7, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->i:I

    iget v8, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->h:F

    iget-boolean v9, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->e:Z

    iget v10, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->f:F

    iget-boolean v11, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->k:Z

    iget-boolean v12, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->l:Z

    iget-object v13, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->j:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;-><init>(Landroid/view/View;IZFIIFZFZZLcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$d;)V

    return-object v0
.end method

.method public e(Z)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->c:Z

    return-object p0
.end method

.method public f(Z)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->e:Z

    return-object p0
.end method

.method public g(F)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->d:F

    return-object p0
.end method

.method public h(F)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->f:F

    return-object p0
.end method

.method public i(F)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->h:F

    return-object p0
.end method

.method public j(Z)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->l:Z

    return-object p0
.end method

.method public k(I)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->b:I

    return-object p0
.end method

.method public l(Z)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$g;->k:Z

    return-object p0
.end method