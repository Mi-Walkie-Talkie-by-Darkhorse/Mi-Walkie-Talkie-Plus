.class Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$6;
.super Ljava/lang/Object;
.source "DialogPlus.java"

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$6;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$6;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$6;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->i(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$6;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$b;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$6;->a:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
