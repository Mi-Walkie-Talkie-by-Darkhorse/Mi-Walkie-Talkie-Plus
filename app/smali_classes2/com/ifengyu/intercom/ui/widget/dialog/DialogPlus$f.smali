.class Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$f;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$f;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$f;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$f;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$h;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$f;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
