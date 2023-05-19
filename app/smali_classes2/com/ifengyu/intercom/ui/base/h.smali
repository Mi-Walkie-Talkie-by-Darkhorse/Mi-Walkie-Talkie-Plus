.class public final synthetic Lcom/ifengyu/intercom/ui/base/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/base/o;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/base/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/h;->a:Lcom/ifengyu/intercom/ui/base/o;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/h;->a:Lcom/ifengyu/intercom/ui/base/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/base/o;->t3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
