.class Lcom/ifengyu/intercom/ui/widget/dialog/r$a;
.super Ljava/lang/Object;
.source "ListHolder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/r;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/r;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/r;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a(Lcom/ifengyu/intercom/ui/widget/dialog/r;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/r;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a(Lcom/ifengyu/intercom/ui/widget/dialog/r;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "keyListener should not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
