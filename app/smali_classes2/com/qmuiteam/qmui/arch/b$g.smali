.class Lcom/qmuiteam/qmui/arch/b$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/b;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/b;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$g;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$g;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$g;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/arch/b;->b(Landroid/view/animation/Animation;)V

    return-void
.end method
