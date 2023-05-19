.class Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->I3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/m/b/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;->a:Lcom/ifengyu/intercom/m/b/e;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;->a:Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f11030b

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    const p1, 0x7f1102da

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->j3(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment$b;->c:Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;->k3(Lcom/ifengyu/intercom/ui/talk/GroupDetailFragment;)Lcom/ifengyu/intercom/ui/base/m;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/c3/e0;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->N(Ljava/lang/String;)V

    return-void
.end method
