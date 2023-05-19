.class public Lcom/zhihu/matisse/ui/MatisseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MatisseActivity.java"

# interfaces
.implements Lcom/zhihu/matisse/d/b/a$a;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/zhihu/matisse/internal/ui/a$a;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhihu/matisse/internal/ui/c/a$c;
.implements Lcom/zhihu/matisse/internal/ui/c/a$e;
.implements Lcom/zhihu/matisse/internal/ui/c/a$f;


# instance fields
.field private final a:Lcom/zhihu/matisse/d/b/a;

.field private b:Lcom/zhihu/matisse/d/c/b;

.field private c:Lcom/zhihu/matisse/d/b/c;

.field private d:Lcom/zhihu/matisse/internal/entity/b;

.field private e:Lcom/zhihu/matisse/internal/ui/widget/a;

.field private f:Lcom/zhihu/matisse/internal/ui/c/b;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/zhihu/matisse/d/b/a;

    invoke-direct {v0}, Lcom/zhihu/matisse/d/b/a;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->a:Lcom/zhihu/matisse/d/b/a;

    .line 3
    new-instance v0, Lcom/zhihu/matisse/d/b/c;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/d/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    return-void
.end method

.method static synthetic l(Lcom/zhihu/matisse/ui/MatisseActivity;)Lcom/zhihu/matisse/d/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->a:Lcom/zhihu/matisse/d/b/a;

    return-object p0
.end method

.method static synthetic m(Lcom/zhihu/matisse/ui/MatisseActivity;)Lcom/zhihu/matisse/internal/ui/widget/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/a;

    return-object p0
.end method

.method static synthetic n(Lcom/zhihu/matisse/ui/MatisseActivity;Lcom/zhihu/matisse/internal/entity/Album;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/ui/MatisseActivity;->p(Lcom/zhihu/matisse/internal/entity/Album;)V

    return-void
.end method

.method private o()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/c;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v3}, Lcom/zhihu/matisse/d/b/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhihu/matisse/internal/entity/Item;

    .line 3
    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/Item;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-wide v3, v3, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    invoke-static {v3, v4}, Lcom/zhihu/matisse/d/c/d;->d(J)F

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget v4, v4, Lcom/zhihu/matisse/internal/entity/b;->u:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private p(Lcom/zhihu/matisse/internal/entity/Album;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Album;->f()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Album;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->j:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/a;->x1(Lcom/zhihu/matisse/internal/entity/Album;)Lcom/zhihu/matisse/internal/ui/a;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/zhihu/matisse/internal/ui/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    instance-of v1, v0, Lcom/zhihu/matisse/internal/ui/a;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lcom/zhihu/matisse/internal/ui/a;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/ui/a;->w1()V

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/zhihu/matisse/R$id;->container:I

    const-class v2, Lcom/zhihu/matisse/internal/ui/a;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method

.method private q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/c;->f()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->h:Landroid/widget/TextView;

    sget v2, Lcom/zhihu/matisse/R$string;->button_apply_default:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/b;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->h:Landroid/widget/TextView;

    sget v3, Lcom/zhihu/matisse/R$string;->button_apply_default:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    iget-object v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->h:Landroid/widget/TextView;

    sget v4, Lcom/zhihu/matisse/R$string;->button_apply:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->s:Z

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->r()V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->l:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    iget-boolean v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 2
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->o()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/zhihu/matisse/R$string;->error_over_original_size:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget v2, v2, Lcom/zhihu/matisse/internal/entity/b;->u:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 6
    invoke-static {v1, v0}, Lcom/zhihu/matisse/internal/ui/widget/b;->w1(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/b;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/zhihu/matisse/internal/ui/widget/b;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->l:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v3}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 11
    iput-boolean v3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->f:Lcom/zhihu/matisse/internal/ui/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public d1(Lcom/zhihu/matisse/internal/entity/Album;Lcom/zhihu/matisse/internal/entity/Item;I)V
    .locals 1

    .line 1
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_album"

    .line 2
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_item"

    .line 3
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {p1}, Lcom/zhihu/matisse/d/b/c;->h()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "extra_default_bundle"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    iget-boolean p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    const-string p2, "extra_result_original_enable"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x17

    .line 6
    invoke-virtual {p0, p3, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public e()Lcom/zhihu/matisse/d/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    return-object v0
.end method

.method public g(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->f:Lcom/zhihu/matisse/internal/ui/c/b;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance v1, Lcom/zhihu/matisse/ui/MatisseActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/matisse/ui/MatisseActivity$b;-><init>(Lcom/zhihu/matisse/ui/MatisseActivity;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->b:Lcom/zhihu/matisse/d/c/b;

    if-eqz v0, :cond_0

    const/16 v1, 0x18

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/zhihu/matisse/d/c/b;->b(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x17

    const-string v1, "extra_result_selection_path"

    const-string v2, "extra_result_selection"

    if-ne p1, p2, :cond_4

    const-string p1, "extra_result_bundle"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "state_selection"

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v3, "extra_result_original_enable"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    const-string v5, "state_collection_type"

    .line 5
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v5, "extra_result_apply"

    .line 6
    invoke-virtual {p3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhihu/matisse/internal/entity/Item;

    .line 11
    invoke-virtual {v5}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v5}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zhihu/matisse/d/c/c;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 15
    iget-boolean p2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 18
    :cond_2
    iget-object p3, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {p3, p2, p1}, Lcom/zhihu/matisse/d/b/c;->n(Ljava/util/ArrayList;I)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class p2, Lcom/zhihu/matisse/internal/ui/a;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 22
    instance-of p2, p1, Lcom/zhihu/matisse/internal/ui/a;

    if-eqz p2, :cond_3

    .line 23
    check-cast p1, Lcom/zhihu/matisse/internal/ui/a;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/ui/a;->y1()V

    .line 24
    :cond_3
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->q()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x18

    if-ne p1, p2, :cond_6

    .line 25
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->b:Lcom/zhihu/matisse/d/c/b;

    invoke-virtual {p1}, Lcom/zhihu/matisse/d/c/b;->d()Landroid/net/Uri;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->b:Lcom/zhihu/matisse/d/c/b;

    invoke-virtual {p2}, Lcom/zhihu/matisse/d/c/b;->c()Ljava/lang/String;

    move-result-object p2

    .line 27
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 32
    invoke-virtual {v4, v2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 33
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 35
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p3, v0, :cond_5

    const/4 p3, 0x3

    .line 36
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 37
    :cond_5
    new-instance p1, Lcom/zhihu/matisse/d/c/f;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/zhihu/matisse/ui/MatisseActivity$a;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/ui/MatisseActivity$a;-><init>(Lcom/zhihu/matisse/ui/MatisseActivity;)V

    invoke-direct {p1, p3, p2, v0}, Lcom/zhihu/matisse/d/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/zhihu/matisse/d/c/f$a;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zhihu/matisse/R$id;->button_preview:I

    const-string v2, "extra_result_original_enable"

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_default_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x17

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zhihu/matisse/R$id;->button_apply:I

    if-ne v0, v1, :cond_1

    .line 7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/c;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "extra_result_selection"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/c;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "extra_result_selection_path"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 12
    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/zhihu/matisse/R$id;->originalLayout:I

    if-ne p1, v0, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->o()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_2

    .line 17
    sget v1, Lcom/zhihu/matisse/R$string;->error_over_original_count:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget p1, p1, Lcom/zhihu/matisse/internal/entity/b;->u:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 19
    invoke-static {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/b;->w1(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/b;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/zhihu/matisse/internal/ui/widget/b;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_2
    iget-boolean p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    .line 24
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->l:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 25
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/b;->v:Lcom/zhihu/matisse/e/a;

    if-eqz p1, :cond_3

    .line 26
    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    invoke-interface {p1, v0}, Lcom/zhihu/matisse/e/a;->onCheck(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    .line 2
    iget v0, v0, Lcom/zhihu/matisse/internal/entity/b;->d:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 7
    :cond_0
    sget v0, Lcom/zhihu/matisse/R$layout;->activity_matisse:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/b;->e:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->k:Z

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Lcom/zhihu/matisse/d/c/b;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/d/c/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->b:Lcom/zhihu/matisse/d/c/b;

    .line 12
    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget-object v2, v2, Lcom/zhihu/matisse/internal/entity/b;->l:Lcom/zhihu/matisse/internal/entity/a;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Lcom/zhihu/matisse/d/c/b;->f(Lcom/zhihu/matisse/internal/entity/a;)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t forget to set CaptureStrategy."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    :goto_0
    sget v0, Lcom/zhihu/matisse/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 16
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    .line 18
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/ActionBar;->t(Z)V

    const/4 v4, 0x1

    .line 19
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->s(Z)V

    .line 20
    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v4, [I

    sget v5, Lcom/zhihu/matisse/R$attr;->album_element_color:I

    aput v5, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 22
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 23
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 25
    sget v2, Lcom/zhihu/matisse/R$id;->button_preview:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->g:Landroid/widget/TextView;

    .line 26
    sget v2, Lcom/zhihu/matisse/R$id;->button_apply:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->h:Landroid/widget/TextView;

    .line 27
    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    sget v2, Lcom/zhihu/matisse/R$id;->container:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->i:Landroid/view/View;

    .line 30
    sget v2, Lcom/zhihu/matisse/R$id;->empty_view:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->j:Landroid/view/View;

    .line 31
    sget v2, Lcom/zhihu/matisse/R$id;->originalLayout:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->k:Landroid/widget/LinearLayout;

    .line 32
    sget v2, Lcom/zhihu/matisse/R$id;->original:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    iput-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->l:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    .line 33
    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v2, p1}, Lcom/zhihu/matisse/d/b/c;->l(Landroid/os/Bundle;)V

    if-eqz p1, :cond_4

    const-string v2, "checkState"

    .line 35
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    .line 36
    :cond_4
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->q()V

    .line 37
    new-instance v2, Lcom/zhihu/matisse/internal/ui/c/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/zhihu/matisse/internal/ui/c/b;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->f:Lcom/zhihu/matisse/internal/ui/c/b;

    .line 38
    new-instance v1, Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-direct {v1, p0}, Lcom/zhihu/matisse/internal/ui/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/a;

    .line 39
    invoke-virtual {v1, p0}, Lcom/zhihu/matisse/internal/ui/widget/a;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 40
    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/a;

    sget v2, Lcom/zhihu/matisse/R$id;->selected_album:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/a;->h(Landroid/widget/TextView;)V

    .line 41
    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/a;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhihu/matisse/internal/ui/widget/a;->g(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/a;

    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->f:Lcom/zhihu/matisse/internal/ui/c/b;

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/a;->f(Landroid/widget/CursorAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->a:Lcom/zhihu/matisse/d/b/a;

    invoke-virtual {v0, p0, p0}, Lcom/zhihu/matisse/d/b/a;->f(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/d/b/a$a;)V

    .line 44
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->a:Lcom/zhihu/matisse/d/b/a;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/a;->i(Landroid/os/Bundle;)V

    .line 45
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->a:Lcom/zhihu/matisse/d/b/a;

    invoke-virtual {p1}, Lcom/zhihu/matisse/d/b/a;->e()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->a:Lcom/zhihu/matisse/d/b/a;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/a;->g()V

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zhihu/matisse/internal/entity/b;->v:Lcom/zhihu/matisse/e/a;

    .line 4
    iput-object v1, v0, Lcom/zhihu/matisse/internal/entity/b;->r:Lcom/zhihu/matisse/e/c;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->a:Lcom/zhihu/matisse/d/b/a;

    invoke-virtual {p1, p3}, Lcom/zhihu/matisse/d/b/a;->k(I)V

    .line 2
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->f:Lcom/zhihu/matisse/internal/ui/c/b;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    iget-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->f:Lcom/zhihu/matisse/internal/ui/c/b;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/zhihu/matisse/internal/entity/Album;->h(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Album;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Album;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object p2

    iget-boolean p2, p2, Lcom/zhihu/matisse/internal/entity/b;->k:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Album;->a()V

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/ui/MatisseActivity;->p(Lcom/zhihu/matisse/internal/entity/Album;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/c;->m(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->a:Lcom/zhihu/matisse/d/b/a;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/a;->j(Landroid/os/Bundle;)V

    .line 4
    iget-boolean v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->m:Z

    const-string v1, "checkState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUpdate()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/zhihu/matisse/ui/MatisseActivity;->q()V

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->d:Lcom/zhihu/matisse/internal/entity/b;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/b;->r:Lcom/zhihu/matisse/e/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    .line 4
    invoke-virtual {v1}, Lcom/zhihu/matisse/d/b/c;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/matisse/ui/MatisseActivity;->c:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v2}, Lcom/zhihu/matisse/d/b/c;->c()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/zhihu/matisse/e/c;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method
