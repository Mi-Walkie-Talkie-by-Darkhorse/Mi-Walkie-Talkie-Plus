.class Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
