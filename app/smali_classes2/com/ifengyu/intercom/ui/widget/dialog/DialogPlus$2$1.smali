.class Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;
.super Ljava/lang/Object;
.source "DialogPlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$d;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    :cond_0
    return-void
.end method
