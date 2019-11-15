.class public Lcom/ifengyu/library/widget/a/a;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/a/a$a;,
        Lcom/ifengyu/library/widget/a/a$b;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/view/menu/MenuPopupHelper;

.field b:Lcom/ifengyu/library/widget/a/a$b;

.field c:Lcom/ifengyu/library/widget/a/a$a;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/support/v7/view/menu/MenuBuilder;

.field private final f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget v4, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/library/widget/a/a;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/a/a;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/library/widget/a/a;->f:Landroid/view/View;

    new-instance v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/a/a;->e:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a;->e:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v1, Lcom/ifengyu/library/widget/a/a$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/library/widget/a/a$1;-><init>(Lcom/ifengyu/library/widget/a/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    new-instance v0, Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/ifengyu/library/widget/a/a;->e:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/a/a;->a:Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a;->a:Landroid/support/v7/view/menu/MenuPopupHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a;->a:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p3}, Landroid/support/v7/view/menu/MenuPopupHelper;->setGravity(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a;->a:Landroid/support/v7/view/menu/MenuPopupHelper;

    new-instance v1, Lcom/ifengyu/library/widget/a/a$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/library/widget/a/a$2;-><init>(Lcom/ifengyu/library/widget/a/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Lcom/ifengyu/library/widget/a/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/a/a;->a()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/a/a;->e:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/a/a;->a:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    return-void
.end method

.method public setOnDismissListener(Lcom/ifengyu/library/widget/a/a$a;)V
    .locals 0
    .param p1    # Lcom/ifengyu/library/widget/a/a$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ifengyu/library/widget/a/a;->c:Lcom/ifengyu/library/widget/a/a$a;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/ifengyu/library/widget/a/a$b;)V
    .locals 0
    .param p1    # Lcom/ifengyu/library/widget/a/a$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ifengyu/library/widget/a/a;->b:Lcom/ifengyu/library/widget/a/a$b;

    return-void
.end method
