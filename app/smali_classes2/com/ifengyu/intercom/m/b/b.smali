.class public Lcom/ifengyu/intercom/m/b/b;
.super Lcom/ifengyu/intercom/m/a/a;
.source "AppHasNewVersionDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/m/a/a<",
        "Lcom/ifengyu/intercom/m/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private u:Lcom/ifengyu/intercom/http/entity/VersionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private E(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\\n"

    const-string v1, "\n"

    .line 1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public F(Lcom/ifengyu/intercom/http/entity/VersionInfo;)Lcom/ifengyu/intercom/m/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/b;->u:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    return-object p0
.end method

.method protected k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Lcom/qmuiteam/qmui/widget/dialog/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c0060

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090064

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f090063

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/b;->u:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f11004f

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a<font color=#00BFFF>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/b;->u:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</color>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/b;->u:Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getInfo()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lcom/ifengyu/intercom/m/b/b;->E(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
