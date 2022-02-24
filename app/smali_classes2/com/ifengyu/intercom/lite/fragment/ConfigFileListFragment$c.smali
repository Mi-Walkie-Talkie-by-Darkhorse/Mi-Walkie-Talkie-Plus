.class Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;
.super Ljava/lang/Object;
.source "ConfigFileListFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/c/b/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

.field final synthetic d:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;Lcom/ifengyu/intercom/lite/c/b/d;Ljava/lang/String;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->d:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->a:Lcom/ifengyu/intercom/lite/c/b/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->c:Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 9

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->a:Lcom/ifengyu/intercom/lite/c/b/d;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->e()Landroid/widget/EditText;

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

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->d:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->e(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f1101af

    .line 6
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->c:Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setName(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->d:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->f(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)Lcom/ifengyu/intercom/lite/h/g0;

    move-result-object p2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->c:Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/lite/h/g0;->g(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    .line 9
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->d:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;Z)V

    .line 10
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$c;->d:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    const v0, 0x7f1101ac

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->c(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;I)V

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method
