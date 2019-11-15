.class Lcom/ifengyu/intercom/ui/widget/dialog/p$2;
.super Ljava/lang/Object;
.source "InsertChannelDialog400To470.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/p;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/p;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "InsertChannelDialog"

    const-string v1, "EditText1 has Focus"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/p$2;->a:Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->a(Lcom/ifengyu/intercom/ui/widget/dialog/p;)Lcom/ifengyu/intercom/ui/widget/dialog/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/p$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
