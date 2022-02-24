.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$n;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$n;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$n;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/qmuiteam/qmui/widget/dialog/b;)Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const p2, 0x8f03

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$n;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p2, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/node/q/d;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/d0;->a(IZ)V

    return-void
.end method
