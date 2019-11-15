.class Lcom/ifengyu/intercom/ui/widget/dialog/a$1;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a(Lcom/ifengyu/intercom/ui/widget/dialog/a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0050

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a(Lcom/ifengyu/intercom/ui/widget/dialog/a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0008

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
