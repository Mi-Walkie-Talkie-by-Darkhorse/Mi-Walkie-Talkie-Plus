.class public abstract Lcom/ifengyu/intercom/l/a/b/b/z;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "BaseConfigFileListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Lcom/ifengyu/intercom/l/a/b/a/a;

.field protected E:Lcom/ifengyu/intercom/l/a/b/c/u;

.field private z:Lcom/ifengyu/intercom/k/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic A3(Ljava/util/List;)V
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f110200

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->P3(Ljava/util/List;)V

    return-void
.end method

.method static synthetic C3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic D3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->R3()V

    return-void
.end method

.method static synthetic F3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic G3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ConfigFileModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p5, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p5

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/intercom/models/ConfigFileModel;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/l/a/b/b/a;->a:Lcom/ifengyu/intercom/l/a/b/b/a;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 6
    invoke-interface {v0, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p5}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const p1, 0x7f1100d7

    .line 7
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setName(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/l/a/b/c/u;->W(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->Y3(Z)V

    const p1, 0x7f1100d8

    .line 11
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    .line 12
    invoke-virtual {p4}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic I3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic J3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/a/b/a/a;->s0()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->e(Ljava/util/List;)V

    return-void
.end method

.method static synthetic L3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic M3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/a/b/a/a;->s0()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const p1, 0x7f110200

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/ConfigFileModel;

    .line 6
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/l/a/b/b/z;->Y3(Z)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->S3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
.end method

.method private O3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    new-instance v1, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;-><init>(ZLcom/ifengyu/intercom/models/ConfigFileModel;)V

    invoke-virtual {v0, v2, v1}, Lcom/chad/library/adapter/base/i;->h(ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/c;->B:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    const p1, 0x7f1100d0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->d3(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1100cf

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :goto_0
    return-void
.end method

.method private T3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/a/a;->t0()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    const v1, 0x7f110376

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/a/b/a/a;->w0(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    const v1, 0x7f110373

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/l/a/b/a/a;->w0(Z)V

    :goto_0
    return-void
.end method

.method private U3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100d2

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/l/a/b/b/m;->a:Lcom/ifengyu/intercom/l/a/b/b/m;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/p;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    const v3, 0x7f1100c6

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private V3()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/a/a;->s0()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ConfigFileModel;

    .line 4
    new-instance v3, Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/m/b/e;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    const v5, 0x7f110342

    .line 6
    invoke-virtual {v3, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v5, v3

    check-cast v5, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v6, 0x7f11030d

    .line 7
    invoke-virtual {v5, v6}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->J(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 8
    invoke-virtual {v5, v4}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->H(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 9
    invoke-virtual {v5, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->I(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v6, 0x7f1100bd

    const/4 v7, 0x2

    sget-object v8, Lcom/ifengyu/intercom/l/a/b/b/o;->a:Lcom/ifengyu/intercom/l/a/b/b/o;

    .line 10
    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v5, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v6, 0x7f1100c6

    new-instance v7, Lcom/ifengyu/intercom/l/a/b/b/s;

    invoke-direct {v7, p0, v3, v4, v0}, Lcom/ifengyu/intercom/l/a/b/b/s;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    .line 11
    invoke-virtual {v5, v1, v6, v1, v7}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v5, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v0, 0x7f120100

    .line 12
    invoke-virtual {v5, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 13
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object v0

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 14
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private W3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11021f

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/l/a/b/b/u;->a:Lcom/ifengyu/intercom/l/a/b/b/u;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/i;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    const v3, 0x7f1100c6

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private X3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101ff

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/l/a/b/b/w;->a:Lcom/ifengyu/intercom/l/a/b/b/w;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/q;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    const v3, 0x7f1100c6

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private Y3(Z)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/l/a/b/b/z;->Z3(ZI)V

    return-void
.end method

.method private Z3(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/l/a/b/a/a;->v0(ZI)V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->C:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object p2, p2, Lcom/ifengyu/intercom/k/c;->A:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private a4()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/a/a;->t0()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/c;->z:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setEnabled(Z)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/c;->y:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    if-ne v0, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/c;->x:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setEnabled(Z)V

    return-void
.end method

.method private b4()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/a/a;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/a/a;->t0()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/c;->C:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f1100da

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    const v1, 0x7f110376

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    const v1, 0x7f110373

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->C:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1100d9

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    :goto_0
    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/l/a/b/b/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->a4()V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/l/a/b/b/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->b4()V

    return-void
.end method

.method private j3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->C:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1100d9

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->C:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->C:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110373

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->l(II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06019f

    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->C:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f1100ce

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->o(II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->C:Landroid/widget/Button;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0601a0

    invoke-static {v2, v3}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->C:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/j;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/x;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/x;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->C:Landroid/widget/Button;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/n;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 14
    new-instance v0, Lcom/ifengyu/intercom/l/a/b/a/a;

    const v1, 0x7f0c00d2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/l/a/b/a/a;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    .line 15
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->i3()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->B:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->B:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/widget/a;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/device/lite/widget/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/c;->B:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/t;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/t;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemClickListener(Lcom/chad/library/adapter/base/l/d;)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/v;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/i;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/l/f;)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/z$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/z$a;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/a/b/b/z;->Y3(Z)V

    .line 23
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->a4()V

    .line 24
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->b4()V

    return-void
.end method

.method public static synthetic l3(Lcom/ifengyu/intercom/l/a/b/b/z;Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->O3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
.end method

.method private synthetic m3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic o3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->T3()V

    return-void
.end method

.method private synthetic q3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->Y3(Z)V

    return-void
.end method

.method private synthetic s3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/l/a/b/a/a;->u0()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->isSelect()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p3, p1}, Lcom/ifengyu/intercom/l/a/b/a/a;->x0(IZ)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/a/b/a/a;->t0()I

    move-result p1

    iget-object p2, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    const p2, 0x7f110376

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->B:Landroid/widget/Button;

    const p2, 0x7f110373

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->getConfigFile()Lcom/ifengyu/intercom/models/ConfigFileModel;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->Q3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    :goto_0
    return-void
.end method

.method private synthetic u3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/a/b/a/a;->u0()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/l/a/b/b/z;->Z3(ZI)V

    :cond_0
    return p2
.end method

.method private synthetic w3(Ljava/util/List;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/models/ConfigFileModel;

    .line 3
    new-instance v3, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    invoke-direct {v3, v2, v1}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;-><init>(ZLcom/ifengyu/intercom/models/ConfigFileModel;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/i;->l0(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method private synthetic y3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_CONFIG_FILE_DELETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7f110113

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->T()V

    goto :goto_0

    :cond_1
    const p1, 0x7f11010f

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->Y3(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic B3(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->A3(Ljava/util/List;)V

    return-void
.end method

.method public synthetic E3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/a/b/b/z;->D3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic H3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ConfigFileModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/l/a/b/b/z;->G3(Lcom/ifengyu/intercom/m/b/e;Ljava/lang/String;Lcom/ifengyu/intercom/models/ConfigFileModel;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic K3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/a/b/b/z;->J3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic N3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/l/a/b/b/z;->M3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected abstract P3(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract Q3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
.end method

.method protected abstract R3()V
.end method

.method protected abstract S3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
.end method

.method protected d2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->D:Lcom/ifengyu/intercom/l/a/b/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/a/a;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/a/b/b/z;->Y3(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    :goto_0
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/c;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/k/c;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->k3()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->j3()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public i3()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->z:Lcom/ifengyu/intercom/k/c;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/c;->B:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c007e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019b

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0901a2

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, 0x7f0e0000

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1102df

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

.method public k3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FragmentLiveDataObserve"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/a/b/c/u;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->g()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/h;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->l()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/k;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->i()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/r;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->h()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/a/b/b/l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/a/b/b/l;-><init>(Lcom/ifengyu/intercom/l/a/b/b/z;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/a/b/b/z;->E:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->T()V

    return-void
.end method

.method public synthetic n3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->m3(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090093

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->U3()V

    return-void

    :cond_0
    const v0, 0x7f09009c

    if-ne p1, v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->V3()V

    return-void

    :cond_1
    const v0, 0x7f090096

    if-ne p1, v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->X3()V

    return-void

    :cond_2
    const v0, 0x7f090094

    if-ne p1, v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/a/b/b/z;->W3()V

    :cond_3
    return-void
.end method

.method public synthetic p3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->o3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic r3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->q3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic t3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/l/a/b/b/z;->s3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic v3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/l/a/b/b/z;->u3(Lcom/chad/library/adapter/base/i;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public synthetic x3(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->w3(Ljava/util/List;)V

    return-void
.end method

.method public synthetic z3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/a/b/b/z;->y3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method
