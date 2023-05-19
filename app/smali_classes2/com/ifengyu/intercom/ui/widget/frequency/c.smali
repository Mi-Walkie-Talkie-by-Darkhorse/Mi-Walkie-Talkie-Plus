.class public Lcom/ifengyu/intercom/ui/widget/frequency/c;
.super Lcom/ifengyu/intercom/m/a/a;
.source "FrequencyDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/frequency/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/m/a/a<",
        "Lcom/ifengyu/intercom/ui/widget/frequency/c;",
        ">;"
    }
.end annotation


# instance fields
.field private u:Lcom/ifengyu/intercom/ui/widget/frequency/c$a;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic E(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/c;->u:Lcom/ifengyu/intercom/ui/widget/frequency/c$a;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/c$a;->a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic F(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/c;->E(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;I)V

    return-void
.end method

.method public G(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/frequency/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/c;->w:Ljava/lang/String;

    return-object p0
.end method

.method public H(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/frequency/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/c;->v:Ljava/lang/String;

    return-object p0
.end method

.method public I(Lcom/ifengyu/intercom/ui/widget/frequency/c$a;)Lcom/ifengyu/intercom/ui/widget/frequency/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/c;->u:Lcom/ifengyu/intercom/ui/widget/frequency/c$a;

    return-object p0
.end method

.method protected k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 0
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
    new-instance p2, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;

    invoke-direct {p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/frequency/c;->v:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->p(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/frequency/c;->w:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->o(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;

    new-instance p3, Lcom/ifengyu/intercom/ui/widget/frequency/d;

    invoke-direct {p3}, Lcom/ifengyu/intercom/ui/widget/frequency/d;-><init>()V

    .line 4
    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->n(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$c;)Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;

    new-instance p3, Lcom/ifengyu/intercom/ui/widget/frequency/b;

    invoke-direct {p3, p0, p1}, Lcom/ifengyu/intercom/ui/widget/frequency/b;-><init>(Lcom/ifengyu/intercom/ui/widget/frequency/c;Lcom/qmuiteam/qmui/widget/dialog/b;)V

    .line 5
    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->m(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$b;)Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;

    return-object p2
.end method
