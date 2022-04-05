.class public Lcom/qmuiteam/qmui/c/j/t;
.super Lcom/qmuiteam/qmui/c/j/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qmuiteam/qmui/c/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {p1, p3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setLinkUnderLineColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->b(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
