.class Lcom/ifengyu/intercom/ui/widget/dialog/o$4;
.super Ljava/lang/Object;
.source "InsertChannelDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/o;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "InsertChannelDialog"

    const-string v1, "EditText3 has Focus"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Lcom/ifengyu/intercom/ui/widget/dialog/o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
