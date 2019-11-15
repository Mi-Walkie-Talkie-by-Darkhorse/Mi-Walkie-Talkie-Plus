.class Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;
.super Ljava/lang/Object;
.source "DialogPlus.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

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
