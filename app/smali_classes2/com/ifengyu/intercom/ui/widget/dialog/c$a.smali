.class Lcom/ifengyu/intercom/ui/widget/dialog/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a(Lcom/ifengyu/intercom/ui/widget/dialog/c;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f060095

    invoke-static {p2}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/c$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a(Lcom/ifengyu/intercom/ui/widget/dialog/c;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f06001c

    invoke-static {p2}, Lcom/ifengyu/intercom/i/k0;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
