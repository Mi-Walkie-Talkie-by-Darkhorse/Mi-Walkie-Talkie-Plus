.class Lcom/ifengyu/intercom/ui/widget/dialog/r$1;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/r;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a(Lcom/ifengyu/intercom/ui/widget/dialog/r;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "keyListener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/r$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/r;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/r;->a(Lcom/ifengyu/intercom/ui/widget/dialog/r;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
