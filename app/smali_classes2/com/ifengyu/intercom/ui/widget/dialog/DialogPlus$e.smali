.class Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;
.super Ljava/lang/Object;
.source "DialogPlus.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b(Landroid/view/View;)V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->g(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$g;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->h(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {p1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    :cond_2
    return p3

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
