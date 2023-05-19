.class Lcom/ifengyu/intercom/ui/widget/dialog/a$a;
.super Ljava/lang/Object;
.source "ActivateDeviceDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->h(Lcom/ifengyu/intercom/ui/widget/dialog/a;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f060091

    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->h(Lcom/ifengyu/intercom/ui/widget/dialog/a;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f06001c

    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
