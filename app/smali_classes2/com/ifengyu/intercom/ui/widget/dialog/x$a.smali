.class Lcom/ifengyu/intercom/ui/widget/dialog/x$a;
.super Ljava/lang/Object;
.source "ViewHolder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/x;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/x;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/x;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->h(Lcom/ifengyu/intercom/ui/widget/dialog/x;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    const-string v1, "keyListener should not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/x$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/x;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;->h(Lcom/ifengyu/intercom/ui/widget/dialog/x;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
