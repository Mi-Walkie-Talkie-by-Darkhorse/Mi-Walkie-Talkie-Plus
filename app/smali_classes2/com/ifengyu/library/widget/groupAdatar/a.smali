.class public Lcom/ifengyu/library/widget/groupAdatar/a;
.super Ljava/lang/Object;
.source "NineGridImageViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/library/widget/groupAdatar/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->setBorderWidth(I)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->setCornerRadius(I)V

    return-object v0
.end method

.method protected b(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/library/widget/groupAdatar/a;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2, p3}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, p2, p3}, Lcom/ifengyu/library/c/a;->e(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
