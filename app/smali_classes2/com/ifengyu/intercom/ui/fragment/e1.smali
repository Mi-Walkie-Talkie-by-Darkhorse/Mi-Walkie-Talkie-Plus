.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/e1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/x1;

.field public final synthetic b:Lpl/droidsonroids/gif/c;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/x1;Lpl/droidsonroids/gif/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/e1;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/e1;->b:Lpl/droidsonroids/gif/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/e1;->a:Lcom/ifengyu/intercom/ui/fragment/x1;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/e1;->b:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/fragment/x1;->z3(Lpl/droidsonroids/gif/c;Landroid/view/View;)V

    return-void
.end method
